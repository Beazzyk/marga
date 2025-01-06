/*
Navicat MySQL Data Transfer

Source Server         : Baza Lokalna
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : littlefighter

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-02-04 18:00:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `bots`
-- ----------------------------
DROP TABLE IF EXISTS `bots`;
CREATE TABLE `bots` (
  `room_id` int(11) NOT NULL DEFAULT '0',
  `x` smallint(3) NOT NULL DEFAULT '0',
  `y` smallint(3) NOT NULL DEFAULT '0',
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `HP` int(11) NOT NULL DEFAULT '0',
  `MP` int(11) NOT NULL DEFAULT '0',
  `EP` int(11) NOT NULL DEFAULT '0',
  `HP_M` int(11) NOT NULL DEFAULT '0',
  `MP_M` int(11) NOT NULL DEFAULT '0',
  `EP_M` int(11) NOT NULL DEFAULT '0',
  `lvl` int(11) NOT NULL DEFAULT '1',
  `strength` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `intelect` int(11) NOT NULL DEFAULT '0',
  `dexterity` int(11) NOT NULL DEFAULT '0',
  `wygr` smallint(2) NOT NULL DEFAULT '0',
  `przegr` smallint(2) NOT NULL DEFAULT '0',
  `dam` int(11) NOT NULL DEFAULT '0',
  `def` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of bots
-- ----------------------------
INSERT INTO `bots` VALUES ('1', '12', '20', 'JOHN', '-37', '40', '0', '40', '40', '0', '2', '4', '4', '8', '4', '0', '0', '4', '4');

-- ----------------------------
-- Table structure for `character_item`
-- ----------------------------
DROP TABLE IF EXISTS `character_item`;
CREATE TABLE `character_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of character_item
-- ----------------------------
INSERT INTO `character_item` VALUES ('3', '1', '0', '1');

-- ----------------------------
-- Table structure for `character_lobby`
-- ----------------------------
DROP TABLE IF EXISTS `character_lobby`;
CREATE TABLE `character_lobby` (
  `room_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `wygr` int(11) NOT NULL DEFAULT '0',
  `przegr` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '15',
  `y` int(11) NOT NULL DEFAULT '15',
  `ingame` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of character_lobby
-- ----------------------------
INSERT INTO `character_lobby` VALUES ('1', '1', '0', '0', '12', '20', '1');
INSERT INTO `character_lobby` VALUES ('1', '4', '0', '0', '12', '20', '1');

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '1',
  `exp` double(30,0) NOT NULL DEFAULT '0',
  `HP` int(11) NOT NULL DEFAULT '0',
  `HP_M` int(11) NOT NULL DEFAULT '0',
  `MP` int(11) NOT NULL DEFAULT '0',
  `MP_M` int(11) NOT NULL DEFAULT '0',
  `EP` int(11) NOT NULL DEFAULT '0',
  `EP_M` int(11) NOT NULL DEFAULT '0',
  `strength` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `intelect` int(11) NOT NULL DEFAULT '0',
  `dexterity` int(11) NOT NULL DEFAULT '0',
  `u1` int(11) NOT NULL DEFAULT '0',
  `u2` int(11) NOT NULL DEFAULT '0',
  `u3` int(11) NOT NULL DEFAULT '0',
  `u4` int(11) NOT NULL DEFAULT '0',
  `u5` int(11) NOT NULL DEFAULT '0',
  `s1` int(11) NOT NULL DEFAULT '0',
  `s2` int(11) NOT NULL DEFAULT '0',
  `s3` int(11) NOT NULL DEFAULT '0',
  `s4` int(11) NOT NULL DEFAULT '0',
  `s5` int(11) NOT NULL DEFAULT '0',
  `AP` int(11) NOT NULL DEFAULT '0',
  `fragi` int(11) NOT NULL DEFAULT '0',
  `smierc` int(11) NOT NULL DEFAULT '0',
  `mecze` int(11) NOT NULL DEFAULT '0',
  `koniec_pracy` double(20,0) NOT NULL DEFAULT '0',
  `praca_nagroda` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of characters
-- ----------------------------
INSERT INTO `characters` VALUES ('1', '1', 'DEEP', '2', '6', '27', '50', '0', '0', '10', '10', '5', '2', '1', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '2', '0', '0');
INSERT INTO `characters` VALUES ('2', '4', 'DEEP', '1', '0', '50', '50', '0', '0', '10', '10', '5', '2', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1354914421', '120');
INSERT INTO `characters` VALUES ('3', '5', 'JOHN', '1', '0', '20', '20', '20', '20', '0', '0', '2', '2', '4', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `characters` VALUES ('4', '2', 'HENRY', '1', '0', '6', '30', '0', '0', '15', '15', '3', '3', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for `globalnews`
-- ----------------------------
DROP TABLE IF EXISTS `globalnews`;
CREATE TABLE `globalnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `tekst` text COLLATE utf8_polish_ci NOT NULL,
  `wpis` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of globalnews
-- ----------------------------
INSERT INTO `globalnews` VALUES ('1', 'BETA', 'Projekt Little Fighter Mania w Trakcie testów.', 'GaiDo');

-- ----------------------------
-- Table structure for `item_base`
-- ----------------------------
DROP TABLE IF EXISTS `item_base`;
CREATE TABLE `item_base` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop` int(11) NOT NULL DEFAULT '1',
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` text COLLATE utf8_polish_ci NOT NULL,
  `prof` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `wu1` int(11) NOT NULL DEFAULT '0',
  `wu2` int(11) NOT NULL DEFAULT '0',
  `wu3` int(11) NOT NULL DEFAULT '0',
  `wu4` int(11) NOT NULL DEFAULT '0',
  `wu5` int(11) NOT NULL DEFAULT '0',
  `wlvl` int(11) NOT NULL DEFAULT '1',
  `typ` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `obrazenia_bonus` int(11) NOT NULL DEFAULT '0',
  `obrona_bonus` int(11) NOT NULL DEFAULT '0',
  `hp_bonus` int(11) NOT NULL DEFAULT '0',
  `mp_bonus` int(11) NOT NULL DEFAULT '0',
  `ep_bonus` int(11) NOT NULL DEFAULT '0',
  `leczy` int(11) NOT NULL DEFAULT '0',
  `cena` double(20,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of item_base
-- ----------------------------
INSERT INTO `item_base` VALUES ('1', '1', 'Lekki Miecz', 'bron1.gif', 'DEEP', '1', '0', '0', '0', '0', '1', 'Bron', '2', '0', '0', '0', '0', '0', '100');
INSERT INTO `item_base` VALUES ('2', '1', 'Udziec', 'udziec.gif', '', '0', '0', '0', '0', '0', '1', 'Mikstura', '0', '0', '0', '0', '0', '10', '10');
INSERT INTO `item_base` VALUES ('3', '1', 'Różdżka Nowicjusza', 'bron1.gif', 'JOHN', '1', '0', '0', '0', '0', '1', 'Różdżka', '2', '0', '0', '0', '0', '0', '100');
INSERT INTO `item_base` VALUES ('4', '1', 'Łuk Nowicjusza', 'bron1.gif', 'HENRY', '1', '0', '0', '0', '0', '1', 'Łuk/Kusza', '2', '0', '0', '0', '0', '0', '100');

-- ----------------------------
-- Table structure for `lobby`
-- ----------------------------
DROP TABLE IF EXISTS `lobby`;
CREATE TABLE `lobby` (
  `id` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `max_wygranych` smallint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of lobby
-- ----------------------------
INSERT INTO `lobby` VALUES ('1', 'Wstêp Wzbroniony', '03b9ec3f2ea1baabe94f6e42c3db0ccf', '7');

-- ----------------------------
-- Table structure for `lobby_map`
-- ----------------------------
DROP TABLE IF EXISTS `lobby_map`;
CREATE TABLE `lobby_map` (
  `lobby_id` int(11) NOT NULL DEFAULT '0',
  `x` smallint(2) NOT NULL DEFAULT '0',
  `y` smallint(2) NOT NULL DEFAULT '0',
  `obrazek` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of lobby_map
-- ----------------------------
INSERT INTO `lobby_map` VALUES ('1', '1', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '1', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '2', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '3', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '4', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '5', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '6', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '7', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '8', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '9', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '10', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '11', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '12', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '13', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '14', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '15', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '16', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '17', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '18', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '19', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '20', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '21', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '22', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '23', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '24', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '25', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '26', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '27', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '28', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '29', '30', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '1', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '2', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '3', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '4', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '5', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '6', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '7', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '8', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '9', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '10', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '11', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '12', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '13', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '14', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '15', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '16', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '17', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '18', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '19', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '20', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '21', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '22', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '23', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '24', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '25', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '26', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '27', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '28', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '29', 'images/map/grass.gif');
INSERT INTO `lobby_map` VALUES ('1', '30', '30', 'images/map/grass.gif');

-- ----------------------------
-- Table structure for `uzytkownik`
-- ----------------------------
DROP TABLE IF EXISTS `uzytkownik`;
CREATE TABLE `uzytkownik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `lgold` double(20,0) NOT NULL DEFAULT '500',
  `lmgold` double(20,0) NOT NULL DEFAULT '0',
  `ranga` smallint(1) NOT NULL DEFAULT '0',
  `plf` int(11) NOT NULL DEFAULT '0',
  `mecze` int(11) NOT NULL DEFAULT '0',
  `wygrane` int(11) NOT NULL DEFAULT '0',
  `przegrane` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- ----------------------------
-- Records of uzytkownik
-- ----------------------------
INSERT INTO `uzytkownik` VALUES ('1', 'GaiDo', '814a74b21ddbbf86de584309ae3bb2d3', 'gaido@o2.pl', '5', '0', '3', '0', '2', '1', '0');
INSERT INTO `uzytkownik` VALUES ('2', 'rockis', '03b9ec3f2ea1baabe94f6e42c3db0ccf', 'admin@genox.cba.pl', '0', '0', '2', '0', '1', '0', '0');
INSERT INTO `uzytkownik` VALUES ('3', 'darkus', '03b9ec3f2ea1baabe94f6e42c3db0ccf', 'darkus@o2.pl', '500', '0', '2', '0', '0', '0', '0');
INSERT INTO `uzytkownik` VALUES ('4', 'martiyas', '03b9ec3f2ea1baabe94f6e42c3db0ccf', 'martiy@onet.pl', '0', '0', '2', '0', '0', '0', '0');
INSERT INTO `uzytkownik` VALUES ('5', 'gabish', '03b9ec3f2ea1baabe94f6e42c3db0ccf', 'rockis2010@o2.pl', '0', '0', '0', '0', '0', '0', '0');
