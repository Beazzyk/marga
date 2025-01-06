/*
Navicat MySQL Data Transfer

Source Server         : Baza Lokalna
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : kosmiczni

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-02-04 18:00:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `kosmiczni_amulet`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_amulet`;
CREATE TABLE `kosmiczni_amulet` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `moc` smallint(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_amulet
-- ----------------------------
INSERT INTO `kosmiczni_amulet` VALUES ('2', '40');
INSERT INTO `kosmiczni_amulet` VALUES ('1', '19');
INSERT INTO `kosmiczni_amulet` VALUES ('4', '7');
INSERT INTO `kosmiczni_amulet` VALUES ('9', '3');

-- ----------------------------
-- Table structure for `kosmiczni_char`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_char`;
CREATE TABLE `kosmiczni_char` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(50) NOT NULL,
  `kp` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `ranga` tinyint(1) NOT NULL DEFAULT '0',
  `poziom` int(11) NOT NULL DEFAULT '1',
  `exp` double(40,0) NOT NULL DEFAULT '0',
  `pa` int(11) NOT NULL DEFAULT '2000',
  `pa_max` int(11) NOT NULL DEFAULT '2000',
  `pa_hour` int(11) NOT NULL DEFAULT '70',
  `mapa_id` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '13',
  `y` int(11) NOT NULL DEFAULT '7',
  `sila` double(30,0) NOT NULL DEFAULT '4',
  `szybkosc` double(30,0) NOT NULL DEFAULT '3',
  `wytrzymalosc` double(30,0) NOT NULL DEFAULT '3',
  `sila_woli` double(30,0) NOT NULL DEFAULT '0',
  `energia_ki` double(30,0) NOT NULL DEFAULT '0',
  `p_pvp` double(15,0) NOT NULL DEFAULT '0',
  `p_pvm` double(15,0) NOT NULL DEFAULT '0',
  `moc_trening` int(11) NOT NULL DEFAULT '0',
  `czas_trening` bigint(15) NOT NULL DEFAULT '0',
  `typ_trening` tinyint(1) NOT NULL DEFAULT '0',
  `czas_wiedza` bigint(13) NOT NULL DEFAULT '0',
  `wiedza_id` int(11) NOT NULL DEFAULT '0',
  `t1` int(11) NOT NULL DEFAULT '0',
  `t2` int(11) NOT NULL DEFAULT '0',
  `ms` int(11) NOT NULL DEFAULT '0',
  `wyprawa_czas` bigint(15) NOT NULL DEFAULT '0',
  `wyprawa` tinyint(1) NOT NULL DEFAULT '0',
  `sk` int(11) NOT NULL DEFAULT '0',
  `psk` int(11) NOT NULL DEFAULT '0',
  `mistrz_treningu` bigint(13) NOT NULL DEFAULT '0',
  `mistrz_treningu2` bigint(13) NOT NULL DEFAULT '0',
  `podroznik` bigint(13) NOT NULL DEFAULT '0',
  `bystrosc_umyslu` bigint(13) NOT NULL DEFAULT '0',
  `elitarny_lowca` bigint(13) NOT NULL DEFAULT '0',
  `czas_chmurka` bigint(13) NOT NULL DEFAULT '0',
  `as_przestworzy` bigint(13) NOT NULL DEFAULT '0',
  `porywczosc` bigint(13) NOT NULL DEFAULT '0',
  `ssj` bigint(13) NOT NULL DEFAULT '0',
  `smoczy_radar` bigint(13) NOT NULL DEFAULT '0',
  `super_wojownik` bigint(13) NOT NULL DEFAULT '0',
  `szczesciarz` bigint(13) NOT NULL DEFAULT '0',
  `zmysl_walki` bigint(13) NOT NULL DEFAULT '0',
  `punkty_tp` bigint(13) NOT NULL DEFAULT '0',
  `opis` text NOT NULL,
  `magiczna_esencja` bigint(13) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_char
-- ----------------------------
INSERT INTO `kosmiczni_char` VALUES ('1', 'Rockis', '170', '1', '2', '40', '174028', '99999', '100000', '5015', '12', '3', '3', '37841032', '40412270', '20199670', '10374420', '79452230', '4490', '8060', '0', '0', '0', '0', '0', '1', '1', '80', '0', '0', '0', '1', '0', '1347444335', '0', '1347444342', '1347446607', '1356685385', '1357894936', '0', '0', '1347444388', '0', '0', '1347444380', '0', '<center><b>Jestem numerem 1 w mocy postaci.</b><br/>\r\nPoszukuje: <div class=\'sym2 brad2 hastip\' title=\'<b class=item11>Chi Mocy </b><br />Mystic<br /><br /><i>Si³a</i>: +121<br><i>Szybko¶æ</i>: +121<br><i>Wytrzyma³o¶æ</i>: +121<br><br><br><i>Wymagany Poziom</i>: 1<br>\'><img src=\'../gfx/items/71.png\' align=absmiddle class=\'brad3\' style=\' border:2px dotted orange;\' /> </div><div class=\'f_clear\'></div><br/>\r\n- Przedmiotow z dzdzownic.<br/>\r\n<hr>W sprawie rekrutacji do klanu pisaæ do mnie na PW.\r\n</center>', '2');
INSERT INTO `kosmiczni_char` VALUES ('2', 'megis', '142', '2', '1', '16', '19007', '2000', '2000', '70', '5', '13', '12', '2366', '1664', '1252', '2280', '2101', '420', '82', '127', '1348283687', '3', '0', '0', '0', '0', '76', '0', '0', '0', '0', '1349450062', '1349450074', '1347369898', '1347366982', '1347367664', '0', '0', '1347367676', '0', '0', '0', '0', '1347449920', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('3', 'Undertaker Kaio', '0', '3', '0', '15', '16731', '2070', '2070', '70', '5', '81', '81', '2311', '2081', '974', '0', '0', '-310', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('4', 'Overlord SSJ', '0', '4', '0', '162', '2895362', '2300', '2300', '85', '12', '3', '3', '3124', '6027', '3087', '502', '61784', '-2890', '51347', '0', '0', '0', '0', '0', '1', '1', '5', '0', '0', '0', '0', '0', '1347367432', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '', '1');
INSERT INTO `kosmiczni_char` VALUES ('5', 'Rockis II', '0', '1', '2', '1', '19', '2000', '2000', '70', '2', '9', '1', '10', '10', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1346687799', '0', '0', '0', '0', '1357892997', '1347452790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('6', 'Crusher', '0', '5', '0', '78', '794722', '2000', '2000', '70', '11', '11', '6', '796', '12097', '788', '20', '3987', '0', '3172', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('7', 'Super Vegitto', '0', '6', '0', '35', '128130', '2000', '2000', '70', '9', '11', '5', '376', '537', '201', '20', '496', '-80', '517', '51', '1346186687', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('8', 'matix', '0', '2', '1', '3', '360', '2000', '2000', '70', '1', '5', '5', '5', '9', '9', '0', '0', '0', '21', '5', '1346441464', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('9', 'mafia', '220', '7', '1', '41', '206192', '1566', '2000', '70', '9', '18', '3', '33171317', '9269099', '40463910', '23982348', '40650958', '600', '501', '0', '0', '0', '0', '0', '0', '0', '388', '0', '0', '0', '6', '1347442447', '1347442456', '0', '1347430285', '0', '0', '0', '0', '0', '1347536291', '0', '1347434127', '1347433130', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('10', 'Crazy Gogeta', '156', '8', '0', '7', '5134', '2000', '2000', '70', '5', '51', '53', '2074', '7033', '1984', '1366', '3022', '0', '3703', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('11', 'Gervid', '12', '9', '0', '14', '14941', '2000', '2000', '70', '5', '9', '5', '32', '63', '30', '0', '0', '-70', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('12', 'Armiun', '220', '10', '0', '20', '28642', '2000', '2000', '70', '6', '3', '9', '46', '62', '44', '0', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('13', 'Dilagon', '0', '11', '0', '18', '25919', '2000', '2000', '70', '6', '3', '9', '72', '64', '98', '23', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('14', 'SonGoku', '100', '12', '0', '29', '66923', '2000', '2000', '70', '8', '3', '5', '210', '3788', '201', '201', '6011', '-50', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('15', 'Aang', '0', '13', '0', '39', '148901', '2000', '2000', '70', '9', '3', '3', '501', '1488', '601', '2001', '13478', '-320', '1', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('16', 'Tiger', '0', '14', '0', '23', '42101', '2000', '2000', '70', '6', '3', '9', '80', '61', '79', '0', '53', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('17', 'Gerron', '0', '15', '0', '17', '21712', '2000', '2000', '70', '5', '15', '7', '43', '112', '51', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('18', 'Belgarion', '0', '16', '0', '22', '30134', '2000', '2000', '70', '6', '3', '9', '82', '701', '67', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('19', 'Salamander', '0', '17', '0', '9', '5922', '2000', '2000', '70', '4', '3', '9', '19', '52', '18', '0', '0', '-90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('20', 'Cristina', '0', '18', '0', '6', '1974', '2000', '2000', '70', '3', '5', '5', '51', '53', '50', '0', '0', '-80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('21', 'Ronaldo', '0', '19', '0', '12', '10191', '2000', '2000', '70', '4', '3', '9', '30', '53', '17', '0', '0', '-150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('22', 'Fire Manja', '0', '20', '0', '19', '26432', '2000', '2000', '70', '6', '3', '9', '131', '67', '51', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('23', 'Sophiya', '0', '21', '0', '22', '38701', '2000', '2000', '70', '6', '3', '9', '113', '114', '117', '0', '61', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('24', 'Hancok', '12', '22', '0', '4', '936', '2000', '2000', '70', '2', '2', '4', '65', '40', '36', '0', '0', '0', '9', '30', '1346986733', '1', '0', '0', '0', '0', '14', '0', '0', '0', '0', '1347451623', '1347451628', '0', '1347451634', '0', '0', '0', '0', '0', '0', '0', '0', '1347451641', '0', '', '0');
INSERT INTO `kosmiczni_char` VALUES ('25', 'Kenny Goku SSJ', '90', '23', '0', '5', '1344', '2000', '2000', '70', '2', '1', '1', '1975', '3077', '1874', '136', '2014', '0', '0', '42', '1346359110', '3', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1347525489', '1347525494', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `kosmiczni_chi`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_chi`;
CREATE TABLE `kosmiczni_chi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `poziom` varchar(50) NOT NULL DEFAULT 'Normal',
  `sila` int(11) NOT NULL DEFAULT '0',
  `szybkosc` int(11) NOT NULL,
  `wytrzymalosc` int(11) NOT NULL,
  `sila_woli` int(11) NOT NULL,
  `energia_ki` int(11) NOT NULL,
  `max_pa` int(11) NOT NULL,
  `krytyk` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL DEFAULT '???',
  `wym_poziom` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sprzedajacy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_chi
-- ----------------------------
INSERT INTO `kosmiczni_chi` VALUES ('1', '1', 'Super Legendary', '81', '81', '81', '0', '0', '0', '0', 'Mocy', '1', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('2', '3', 'Super Unique', '0', '0', '0', '0', '0', '70', '0', 'Tajemnic', '1', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('3', '4', 'Mystic', '18150', '0', '0', '0', '0', '0', '11', 'Potegi', '150', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('4', '6', 'Epic', '5000', '5000', '5000', '0', '0', '0', '0', 'Mocy', '50', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('5', '7', 'Epic', '100', '0', '0', '0', '0', '0', '10', 'Potegi', '1', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('6', '10', 'Epic', '100', '100', '100', '0', '0', '0', '0', 'Mocy', '1', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('7', '15', 'Legendary', '0', '0', '0', '64', '64', '0', '0', 'Woli', '1', '0', '0');
INSERT INTO `kosmiczni_chi` VALUES ('8', '2', 'Mystic', '363', '363', '363', '0', '0', '0', '0', 'Mocy [Nagroda]', '3', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('9', '9', 'Super Legendary', '0', '0', '0', '81', '81', '0', '0', 'Woli', '1', '1', '0');
INSERT INTO `kosmiczni_chi` VALUES ('10', '25', 'Rare', '4', '0', '0', '0', '0', '0', '2', 'Potegi', '1', '1', '0');

-- ----------------------------
-- Table structure for `kosmiczni_czarna_lista`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_czarna_lista`;
CREATE TABLE `kosmiczni_czarna_lista` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_id2` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_czarna_lista
-- ----------------------------

-- ----------------------------
-- Table structure for `kosmiczni_dialog`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_dialog`;
CREATE TABLE `kosmiczni_dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` varchar(40) NOT NULL,
  `tresc` text NOT NULL,
  `mapa_id` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '1',
  `y` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_dialog
-- ----------------------------

-- ----------------------------
-- Table structure for `kosmiczni_game_log`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_game_log`;
CREATE TABLE `kosmiczni_game_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tresc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_game_log
-- ----------------------------
INSERT INTO `kosmiczni_game_log` VALUES ('1', '<a href=game.php?a=view_player&c=7>Super Vegitto</a> zebra³ Smocz± Kulê');
INSERT INTO `kosmiczni_game_log` VALUES ('2', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_game_log` VALUES ('3', '<a href=game.php?a=view_player&c=10>Crazy Gogeta</a> zebra³ 7 Pomniejszych Smoczych Kul!!!!');
INSERT INTO `kosmiczni_game_log` VALUES ('4', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> wygra³ wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_game_log` VALUES ('5', '<a href=game.php?a=view_player&c=1>Rockis</a> zebra³ 7 Pomniejszych Smoczych Kul!!!!');
INSERT INTO `kosmiczni_game_log` VALUES ('6', '<a href=game.php?a=view_player&c=3>Undertaker Kaio</a> zebra³ Smocz± Kulê');
INSERT INTO `kosmiczni_game_log` VALUES ('7', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_game_log` VALUES ('8', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> wygra³ wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');

-- ----------------------------
-- Table structure for `kosmiczni_item`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_item`;
CREATE TABLE `kosmiczni_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `poziom` varchar(50) NOT NULL DEFAULT 'Normal',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `sila2` int(11) NOT NULL DEFAULT '0',
  `szybkosc` int(11) NOT NULL DEFAULT '0',
  `szybkosc2` int(11) NOT NULL DEFAULT '0',
  `wytrzymalosc` int(11) NOT NULL DEFAULT '0',
  `wytrzymalosc2` int(11) NOT NULL DEFAULT '0',
  `sila_woli` int(11) NOT NULL DEFAULT '0',
  `sila_woli2` int(11) NOT NULL DEFAULT '0',
  `energia_ki` int(11) NOT NULL DEFAULT '0',
  `energia_ki2` int(11) NOT NULL DEFAULT '0',
  `bonus_id` int(11) NOT NULL DEFAULT '0',
  `bonus_rate` int(11) NOT NULL DEFAULT '0',
  `wym_poziom` int(11) NOT NULL DEFAULT '1',
  `nazwa` varchar(75) NOT NULL DEFAULT 'none',
  `obrazek` varchar(250) NOT NULL DEFAULT '../gfx/items/71.png',
  `sprzedajacy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_item
-- ----------------------------
INSERT INTO `kosmiczni_item` VALUES ('1', '4', 'Rare', '1', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('2', '4', 'Rare', '1', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('3', '4', 'Normal', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('16', '24', 'Rare', '1', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '0');
INSERT INTO `kosmiczni_item` VALUES ('5', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('22', '0', 'Rare', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('14', '0', 'Rare', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('21', '0', 'Rare', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('24', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('25', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('27', '10', 'Elite', '1', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '0');
INSERT INTO `kosmiczni_item` VALUES ('31', '0', 'Rare', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('35', '0', 'Rare', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('54', '0', 'Super Rare', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('55', '0', 'Normal', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '4');
INSERT INTO `kosmiczni_item` VALUES ('56', '1', 'Rare', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '4', '12', 'Pierscien Dzdzownicy', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('60', '0', 'Super Elite', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('59', '0', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', 'Miecz Bandyty', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('61', '0', 'Unique', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '2');
INSERT INTO `kosmiczni_item` VALUES ('62', '0', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '5', '1', 'Miecz Bandyty', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('63', '24', 'Elite', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '4', '1', 'Miecz Bandyty', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('64', '24', 'Epic', '1', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('65', '2', 'Mystic', '1', '0', '0', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('67', '0', 'Super Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('68', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '22', '12', 'Pierscien Dzdzownicy', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('69', '25', 'Unique', '1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('70', '25', 'Unique', '1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('71', '25', 'Unique', '1', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/items/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('85', '0', 'Super Rare', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('73', '0', 'Super Elite', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('75', '0', 'Elite', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('77', '0', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '6', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('84', '0', 'Unique', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('80', '0', 'Epic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '10', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('88', '0', 'Super Elite', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '24');
INSERT INTO `kosmiczni_item` VALUES ('90', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '11', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('96', '0', 'Super Rare', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('92', '0', 'Unique', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('137', '0', 'Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '8', '12', 'Amulet Bagi Tin', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('94', '0', 'Super Rare', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('101', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('102', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('104', '0', 'Super Legendary', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('118', '0', 'Super Legendary', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('117', '0', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '6', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('108', '0', 'Super Elite', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('109', '0', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '7', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('110', '0', 'Super Unique', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('111', '0', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '5', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('119', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '11', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('113', '0', 'Elite', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('115', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '11', '1', 'Miecz Bandyty', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('120', '0', 'Super Legendary', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '9');
INSERT INTO `kosmiczni_item` VALUES ('124', '2', 'Rare', '1', '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Gibiacy sie Miecz', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('125', '2', 'Rare', '1', '0', '0', '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Ogon Dzdzownicy', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('127', '1', 'Legendary', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '8', '37', 'Amulet Mocy Lichow Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('139', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '22', '12', 'Pierscien Colosus Tin', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('129', '9', 'Unique', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '6', '12', 'Maska Hun Tina', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('130', '9', 'Super Elite', '1', '0', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Ogon Dzdzownicy', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('131', '0', 'Super Rare', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Ogon Dzdzownicy', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('138', '9', 'Mystic', '1', '132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Gibiacy sie Miecz', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('133', '0', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '5', '12', 'Glowa Dzdzownicy', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('134', '0', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '6', '12', 'Amulet Uniku', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('135', '0', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1085', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('141', '0', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '7', '12', 'Glowa Dzdzownicy', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('142', '1', 'Elite', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '4', '37', 'Amulet Mocy Lichow Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('143', '0', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('144', '0', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1085', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('146', '0', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('147', '0', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('148', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('149', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('151', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('152', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('153', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('154', '9', 'Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '620', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('155', '0', 'Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1240', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('157', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '9');
INSERT INTO `kosmiczni_item` VALUES ('160', '9', 'Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '620', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('159', '0', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '1');
INSERT INTO `kosmiczni_item` VALUES ('162', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('163', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('164', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('165', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('166', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('167', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('168', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('169', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('170', '9', 'Super Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '465', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('171', '9', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1085', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('172', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('173', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('174', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('175', '9', 'Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '620', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('176', '9', 'Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1240', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('177', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('178', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('179', '9', 'Epic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1550', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('180', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('181', '9', 'Mystic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1705', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('182', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('183', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('184', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('185', '9', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('186', '9', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('187', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('188', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('189', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('190', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('191', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('192', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('193', '9', 'Epic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1550', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('194', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('195', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('196', '9', 'Super Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '775', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('197', '9', 'Super Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1085', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('198', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('199', '9', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('200', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('201', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('202', '9', 'Epic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1550', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('203', '9', 'Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1240', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('204', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('205', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('206', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('207', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('208', '9', 'Elite', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '620', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('209', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('210', '9', 'Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1240', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('211', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('212', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('213', '9', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '155', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('214', '9', 'Unique', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '930', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('215', '9', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('216', '9', 'Super Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '465', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('217', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('218', '9', 'Epic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1550', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('219', '0', 'Super Unique', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '2');
INSERT INTO `kosmiczni_item` VALUES ('220', '0', 'Elite', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandyckie Spodenki', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('221', '0', 'Super Legendary', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', 'Bandycki Wisior', '../../dev.genox.cba.pl/item/naszyjnik17.gif', '2');
INSERT INTO `kosmiczni_item` VALUES ('222', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '2', '12', 'Glowa Dzdzownicy', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('223', '0', 'Normal', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1', '12', 'Glowa Dzdzownicy', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('227', '0', 'Rare', '0', '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', 'Gibiacy sie Miecz', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('225', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '2', '12', 'Amulet Uniku', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('226', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '4', '12', 'Pierscien Dzdzownicy', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('228', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '4', '12', 'Pierscien Dzdzownicy', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('229', '0', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '4', '12', 'Pierscien Dzdzownicy', '../gfx/item/71.png', '2');
INSERT INTO `kosmiczni_item` VALUES ('232', '9', 'Super Legendary', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '1395', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');
INSERT INTO `kosmiczni_item` VALUES ('233', '9', 'Rare', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '310', '31', 'Dusza Duszka Arguth', '../gfx/item/71.png', '0');

-- ----------------------------
-- Table structure for `kosmiczni_klan`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_klan`;
CREATE TABLE `kosmiczni_klan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_klanu` varchar(3) NOT NULL DEFAULT '???',
  `nazwa` varchar(100) NOT NULL DEFAULT '[ Brak ]',
  `kp` int(11) NOT NULL DEFAULT '0',
  `opis` text NOT NULL,
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL DEFAULT '../gfx/avatar.png',
  `max_czlonkow` int(11) NOT NULL DEFAULT '40',
  `poziom` int(11) NOT NULL DEFAULT '0',
  `exp` double(100,0) NOT NULL DEFAULT '0',
  `wygrane` int(11) NOT NULL DEFAULT '0',
  `przegrane` int(11) NOT NULL DEFAULT '0',
  `limit_wojen` int(11) NOT NULL DEFAULT '1',
  `limit_tp` int(11) NOT NULL DEFAULT '0',
  `tp` int(11) NOT NULL DEFAULT '0',
  `ks1` int(11) NOT NULL DEFAULT '0',
  `ks2` int(11) NOT NULL DEFAULT '0',
  `ks3` int(11) NOT NULL DEFAULT '0',
  `ks4` int(11) NOT NULL DEFAULT '0',
  `ks5` int(11) NOT NULL DEFAULT '0',
  `ks6` int(11) NOT NULL DEFAULT '0',
  `ks7` int(11) NOT NULL DEFAULT '0',
  `ks8` int(11) NOT NULL DEFAULT '0',
  `ks9` int(11) NOT NULL DEFAULT '0',
  `ks10` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_klan
-- ----------------------------
INSERT INTO `kosmiczni_klan` VALUES ('1', 'DT', 'Demolka Team', '0', '<center><b>Zapraszam wszystkich dopiero od 15 poziomu.</b><br/>\r\nNi¿sze poziomy mog± te¿ do³±czyæ gdy bêd± Top w Rankingu mocy lokacji.</center>', 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Underwater_Demolition_Teams_shoulder_sleeve_patch.JPG/200px-Underwater_Demolition_Teams_shoulder_sleeve_patch.JPG', '40', '134', '876586', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_klan` VALUES ('2', 'DA', 'Death Army', '15', '<center>Zapraszam ka¿dego.</center>', 'http://media.steampowered.com/steamcommunity/public/images/avatars/36/36d5ea2cefac957bf169b27c1f15a903a2f71f80_full.jpg', '40', '139', '487863', '0', '2', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_klan` VALUES ('3', 'DBZ', 'Dragon Ball Z', '0', '<center>Zapraszam Wszystkich.<br/>\r\nJeste¶my zbieraczami Smoczych Kul.</center>', 'http://static1.tapetyczne.pl/big/400-smocze-kule-dragon-ball.jpg', '40', '85', '147718', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_klan` VALUES ('4', 'MP', 'Mistrzowie Powietrza', '0', 'Klan zosta³ za³o¿ony przez Aang', '../gfx/avatar.png', '40', '35', '95301', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_klan` VALUES ('5', 'EXT', 'Ex Team', '45', '<center class=red>Witamy w Klanie Ex Team.</center><br/><center>Ten Klan jest tylko dla najlepszych.<br/>Zapraszam wszystkich którzy s± w top 3 mocy na lokacji.</center>', 'http://www.tapeciarnia.pl/tapety/normalne/92297_ognista_litera_x.jpg', '40', '103', '399102', '2', '0', '1', '10', '0', '11', '0', '3', '0', '2', '10', '0', '0', '5', '0');

-- ----------------------------
-- Table structure for `kosmiczni_klan_czlonkowie`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_klan_czlonkowie`;
CREATE TABLE `kosmiczni_klan_czlonkowie` (
  `clan_id` int(11) NOT NULL DEFAULT '0',
  `wklad` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ranga` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_klan_czlonkowie
-- ----------------------------
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('1', '0', '6', '5');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '2', '4', '5');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('3', '0', '7', '5');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('4', '0', '15', '5');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '0', '18', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '0', '17', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '0', '14', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '0', '13', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('2', '0', '10', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('1', '0', '3', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('1', '0', '22', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('1', '0', '23', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('3', '0', '11', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('3', '0', '12', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('3', '0', '20', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('3', '0', '21', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('4', '0', '16', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('4', '0', '19', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('5', '482', '1', '5');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('5', '10', '5', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('5', '500', '2', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('5', '2042', '25', '0');
INSERT INTO `kosmiczni_klan_czlonkowie` VALUES ('5', '0', '9', '0');

-- ----------------------------
-- Table structure for `kosmiczni_klan_wojny`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_klan_wojny`;
CREATE TABLE `kosmiczni_klan_wojny` (
  `clan_id` int(11) NOT NULL DEFAULT '0',
  `clan_id2` int(11) NOT NULL DEFAULT '0',
  `c_pkt1` int(11) NOT NULL DEFAULT '0',
  `c_pkt2` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_klan_wojny
-- ----------------------------

-- ----------------------------
-- Table structure for `kosmiczni_klan_zaproszenia`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_klan_zaproszenia`;
CREATE TABLE `kosmiczni_klan_zaproszenia` (
  `clan_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_klan_zaproszenia
-- ----------------------------
INSERT INTO `kosmiczni_klan_zaproszenia` VALUES ('5', '8');
INSERT INTO `kosmiczni_klan_zaproszenia` VALUES ('5', '24');

-- ----------------------------
-- Table structure for `kosmiczni_klan_zdarzenia`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_klan_zdarzenia`;
CREATE TABLE `kosmiczni_klan_zdarzenia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clan_id` int(11) NOT NULL DEFAULT '0',
  `tresc` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_klan_zdarzenia
-- ----------------------------
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('1', '1', '<a href=game.php?a=view_player&c=6>Crusher</a> stworzy³ klan.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('2', '2', '<a href=game.php?a=view_player&c=4>Overlord SSJ</a> stworzy³ klan.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('3', '2', '<a href=game.php?a=view_player&c=4>Overlord SSJ</a> doda³ do skarbca Klanu <b class=bora>2</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('4', '2', '<a href=game.php?view_player&c=4>Overlord SSJ</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('5', '2', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('6', '3', '<a href=game.php?a=view_player&c=7>Super Vegitto</a> stworzy³ klan.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('7', '4', '<a href=game.php?a=view_player&c=15>Aang</a> stworzy³ klan.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('8', '5', '<a href=game.php?a=view_player&c=1>Rockis</a> stworzy³ klan.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('9', '5', '<a href=game.php?a=view_player&c=9>mafia</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('10', '5', '<a href=game.php?a=view_player&c=8>matix</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('11', '5', '<a href=game.php?a=view_player&c=2>megis</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('12', '5', '<a href=game.php?a=view_player&c=5>Rockis II</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('13', '5', '<a href=game.php?a=view_player&c=5>Rockis II</a> zaakceptowa³(a) zaproszenie do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('14', '5', '<a href=game.php?a=view_player&c=1>Rockis</a> doda³ do skarbca Klanu <b class=bora>2</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('15', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('16', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('17', '5', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('18', '2', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('19', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>2</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('20', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('21', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('22', '5', '<a href=game.php?a=view_player&c=24>Hancok</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('23', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('24', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('25', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>3</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('26', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('27', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Pos±g do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('28', '5', '<a href=game.php?a=view_player&c=5>Rockis II</a> doda³ do skarbca Klanu <b class=bora>6</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('29', '5', '<a href=game.php?a=view_player&c=1>Rockis</a> doda³ do skarbca Klanu <b class=bora>192</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('30', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>2</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('31', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>3</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('32', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Pos±g do poziomu: <b class=bora>2</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('33', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Bibliotekê do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('34', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Bibliotekê do poziomu: <b class=bora>2</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('35', '5', '<a href=game.php?a=view_player&c=2>megis</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('36', '5', '<a href=game.php?a=view_player&c=8>matix</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('37', '5', '<a href=game.php?a=view_player&c=2>megis</a> zaakceptowa³(a) zaproszenie do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('38', '5', '<a href=game.php?a=view_player&c=2>megis</a> doda³ do skarbca Klanu <b class=bora>500</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('39', '5', '<a href=game.php?a=view_player&c=24>Hancok</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('40', '5', '<a href=game.php?a=view_player&c=8>matix</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('41', '5', '<a href=game.php?a=view_player&c=9>mafia</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('42', '5', '<a href=game.php?a=view_player&c=25>Kenny Goku SSJ</a> zosta³ zaproszony do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('43', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>4</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('44', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>5</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('45', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Pos±g do poziomu: <b class=bora>3</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('46', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('47', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('48', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('49', '5', '<a href=game.php?a=view_player&c=25>Kenny Goku SSJ</a> zaakceptowa³(a) zaproszenie do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('50', '5', '<a href=game.php?a=view_player&c=25>Kenny Goku SSJ</a> doda³ do skarbca Klanu <b class=bora>2042</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('51', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>6</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('52', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>7</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('53', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>8</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('54', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>9</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('55', '5', '<a href=game.php?a=view_player&c=5>Rockis II</a> doda³ do skarbca Klanu <b class=bora>4</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('56', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('57', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('58', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('59', '5', 'Wygrali¶cie Wojnê z <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('60', '2', 'Przegrali¶cie Wojnê z <a href=game.php?a=klan&c=view_clan&id=5>EXT</a>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('61', '5', '<a href=game.php?a=view_player&c=9>mafia</a> zaakceptowa³(a) zaproszenie do klanu.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('62', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('63', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('64', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('65', '5', '<a href=game.php?a=view_player&c=1>Rockis</a> doda³ do skarbca Klanu <b class=bora>29</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('66', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Pos±g do poziomu: <b class=bora>4</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('67', '5', '<a href=game.php?a=view_player&c=1>Rockis</a> doda³ do skarbca Klanu <b class=bora>259</b><img src=../gfx/kp.png align=absmiddle>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('68', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>10</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('69', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Treningow± do poziomu: <b class=bora>11</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('70', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('71', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('72', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('73', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>4</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('74', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>5</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('75', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>6</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('76', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>7</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('77', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>8</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('78', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>9</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('79', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Salê Teleportacyjn± do poziomu: <b class=bora>10</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('80', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Pos±g do poziomu: <b class=bora>5</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('81', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('82', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('83', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('84', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('85', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('86', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('87', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('88', '5', 'Podbili¶cie planetê i zdobyli¶cie 1 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('89', '5', 'Podbili¶cie planetê i zdobyli¶cie 1 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('90', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Kuchniê do poziomu: <b class=bora>1</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('91', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Kuchniê do poziomu: <b class=bora>2</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('92', '5', '<a href=game.php?view_player&c=1>Rockis</a> rozbudowa³ Kuchniê do poziomu: <b class=bora>3</b>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('93', '5', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('94', '2', '<a href=game.php?a=klan&c=view_clan&id=5>EXT</a> inicjuje wojnê z klanem <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('95', '5', 'Wygrali¶cie Wojnê z <a href=game.php?a=klan&c=view_clan&id=2>DA</a>.');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('96', '2', 'Przegrali¶cie Wojnê z <a href=game.php?a=klan&c=view_clan&id=5>EXT</a>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('97', '5', 'Podbili¶cie planetê i zdobyli¶cie 15 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('98', '5', 'Podbili¶cie planetê i zdobyli¶cie 1 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('99', '5', 'Podbili¶cie planetê i zdobyli¶cie 1 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('100', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('101', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('102', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('103', '5', 'Podbili¶cie planetê i zdobyli¶cie 2 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('104', '5', 'Podbili¶cie planetê i zdobyli¶cie 8 <img src=../gfx/kp.png align=absmiddle></img>');
INSERT INTO `kosmiczni_klan_zdarzenia` VALUES ('105', '5', 'Podbili¶cie planetê i zdobyli¶cie 4 <img src=../gfx/kp.png align=absmiddle></img>');

-- ----------------------------
-- Table structure for `kosmiczni_log_pvp`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_log_pvp`;
CREATE TABLE `kosmiczni_log_pvp` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_id2` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_log_pvp
-- ----------------------------
INSERT INTO `kosmiczni_log_pvp` VALUES ('1', '4');

-- ----------------------------
-- Table structure for `kosmiczni_mapa`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_mapa`;
CREATE TABLE `kosmiczni_mapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(150) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `left` int(11) NOT NULL DEFAULT '0',
  `right` int(11) NOT NULL DEFAULT '0',
  `down` int(11) NOT NULL DEFAULT '0',
  `up` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_mapa
-- ----------------------------
INSERT INTO `kosmiczni_mapa` VALUES ('1', 'Centralny Las Morolith', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('2', 'Namiot Bandytów', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('3', 'Zachodni Las Morolith', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('4', 'Północny Las Morolith', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('5', 'Podziemne Przejście do Doliny Arguth', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('6', 'Dolina Arguth - Wschód', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('7', 'Dolina Arguth - Zachód', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('8', 'Arguth', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('9', 'Podziemia Arguth - Centrum', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('10', 'Siedziba Lichow Arguth', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('11', 'Pustynia Faghin', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa` VALUES ('12', 'Dzika Grota', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `kosmiczni_mapa2`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_mapa2`;
CREATE TABLE `kosmiczni_mapa2` (
  `mapa_id` int(11) NOT NULL DEFAULT '1',
  `obrazek` varchar(200) NOT NULL DEFAULT '../gfx/map/gras/18.png',
  `x` int(11) NOT NULL DEFAULT '1',
  `y` int(11) NOT NULL DEFAULT '1',
  `lewo` int(11) NOT NULL DEFAULT '0',
  `prawo` int(11) NOT NULL DEFAULT '0',
  `dol` int(11) NOT NULL DEFAULT '0',
  `gora` int(11) NOT NULL DEFAULT '0',
  `gp` tinyint(1) NOT NULL DEFAULT '0',
  `gl` tinyint(1) NOT NULL DEFAULT '0',
  `dl` tinyint(1) NOT NULL DEFAULT '0',
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  KEY `lewo` (`lewo`,`prawo`,`dol`,`gora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_mapa2
-- ----------------------------
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '3', '1', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '5', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '7', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '9', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '11', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '13', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '15', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '17', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '19', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '21', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '23', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '25', '1', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '1', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '11', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '13', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '15', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '13', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '15', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '1', '7', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '3', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '11', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '13', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '15', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '11', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '13', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/1.png', '15', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '11', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '11', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '11', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '13', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/3.png', '15', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '11', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '11', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '13', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '13', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '11', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '13', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '15', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '13', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '13', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '15', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '3', '15', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '5', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '7', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '9', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '11', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '13', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '15', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '17', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '19', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '21', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '23', '15', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/18.png', '25', '15', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '15', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '1', '17', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '3', '17', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '5', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '7', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '9', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '11', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '13', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '15', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '17', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '19', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '21', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '23', '17', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '25', '17', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('1', '../gfx/map/gras/2.png', '27', '17', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '1', '3', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '1', '5', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '3', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '3', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '3', '5', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '5', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '5', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '5', '5', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '7', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '7', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '7', '5', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '9', '1', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '9', '3', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('2', '../gfx/map/gras/5.png', '9', '5', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '13', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/1.png', '13', '5', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '13', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '13', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '13', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '11', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/3.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/1.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/1.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/1.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '3', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '11', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '3', '9', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '5', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '7', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '9', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/18.png', '11', '9', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '3', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '5', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '7', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '9', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('3', '../gfx/map/gras/2.png', '11', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/1.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/1.png', '3', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/3.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '3', '11', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '3', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/1.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/1.png', '5', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/1.png', '5', '13', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/cave3.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '7', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '7', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '9', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '9', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '9', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '9', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/18.png', '9', '11', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '9', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('4', '../gfx/map/gras/2.png', '11', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '5', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '19', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '21', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '23', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '3', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '5', '15', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '7', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '9', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '11', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '13', '15', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '15', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '17', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '19', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '21', '15', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '23', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave2.png', '25', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '11', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '3', '13', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '5', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '7', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '9', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '11', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '13', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '15', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '17', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '19', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '21', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '11', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '23', '13', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '51', '51', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '53', '51', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '55', '51', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '51', '53', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '53', '53', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '55', '53', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '51', '55', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '53', '55', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '55', '55', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '61', '61', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '63', '61', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '65', '61', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '61', '63', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '63', '63', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '65', '63', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '61', '65', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '63', '65', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '65', '65', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '81', '81', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave3.png', '83', '81', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '85', '81', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '81', '83', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '83', '83', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '85', '83', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '81', '85', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '83', '85', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('5', '../gfx/map/gras/cave1.png', '85', '85', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/1.png', '1', '7', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/cave3.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/1.png', '3', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/3.png', '3', '9', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '3', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '5', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '5', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '7', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '7', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/1.png', '7', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/18.png', '7', '9', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '7', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('6', '../gfx/map/gras/2.png', '9', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '1', '7', '0', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '3', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '3', '11', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '3', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '5', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '5', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '7', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '7', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '9', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '9', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '9', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '11', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '11', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '11', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '11', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '11', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '13', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '13', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '13', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '13', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '13', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '13', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '15', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '15', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '15', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '15', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '15', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '15', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '17', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '17', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '17', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '17', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '17', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '17', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '19', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '19', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '19', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '19', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '19', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '19', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '19', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '21', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '21', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '21', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '21', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '21', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '21', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '23', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '23', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '23', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '23', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '23', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '23', '11', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '23', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '25', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '25', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '25', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '25', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '25', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/18.png', '25', '11', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '25', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/1.png', '27', '7', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('7', '../gfx/map/gras/2.png', '27', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/cityroad.png', '7', '3', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '7', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '7', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/cityroad.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/cityroad.png', '5', '5', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '5', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/cave3.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/3.png', '3', '5', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('8', '../gfx/map/gras/2.png', '3', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave3.png', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '17', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '19', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '3', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '5', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '7', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '9', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '11', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '13', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '21', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '17', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '19', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '21', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '11', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '11', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '13', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '13', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '15', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '15', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '15', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '17', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '17', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '17', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '17', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '17', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '1', '19', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '3', '19', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '5', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '7', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '9', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '11', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '13', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '15', '19', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '17', '19', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave1.png', '19', '19', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('9', '../gfx/map/gras/cave2.png', '21', '19', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '1', '3', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '1', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '1', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '1', '9', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '3', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '3', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '3', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '3', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '3', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '5', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '5', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/elite-lich-arguth.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '5', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '7', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '7', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '7', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '9', '1', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '9', '3', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '9', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '9', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('10', '../gfx/map/gras/cave1.png', '9', '9', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '7', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '11', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '13', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '7', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '3', '1', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '5', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '7', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '7', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '7', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '9', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '7', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '9', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '11', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '7', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '11', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '11', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '3', '13', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '5', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '7', '13', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '9', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '11', '13', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert2.png', '13', '13', '1', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '13', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '3', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '7', '15', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '9', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '11', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '13', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '15', '15', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '31', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '3', '31', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '31', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '33', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert1.png', '3', '33', '0', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '33', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '35', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/cave3.png', '3', '35', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '35', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '1', '37', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '3', '37', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('11', '../gfx/map/gras/desert3.png', '5', '37', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '1', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '3', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '3', '3', '0', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '3', '5', '0', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '3', '7', '0', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '3', '9', '0', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '3', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '5', '3', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '5', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '5', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '5', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '5', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave3.png', '7', '1', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '7', '3', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '7', '5', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '7', '7', '1', '0', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/desert1.png', '7', '9', '1', '1', '0', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '7', '11', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '3', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '5', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '7', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '9', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_mapa2` VALUES ('12', '../gfx/map/gras/cave2.png', '9', '11', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `kosmiczni_npc`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_npc`;
CREATE TABLE `kosmiczni_npc` (
  `id` bigint(13) NOT NULL AUTO_INCREMENT,
  `mapa_id` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '1',
  `y` int(11) NOT NULL DEFAULT '1',
  `nazwa` varchar(150) NOT NULL,
  `typ` varchar(20) NOT NULL DEFAULT 'mob',
  `poziom` int(11) NOT NULL DEFAULT '1',
  `sila` double(30,0) NOT NULL DEFAULT '2',
  `szybkosc` double(30,0) NOT NULL DEFAULT '2',
  `wytrzymalosc` double(30,0) NOT NULL DEFAULT '2',
  `sila_woli` double(30,0) NOT NULL DEFAULT '0',
  `energia_ki` double(30,0) NOT NULL DEFAULT '0',
  `rodzaj` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=273374 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_npc
-- ----------------------------
INSERT INTO `kosmiczni_npc` VALUES ('1', '4', '3', '5', 'Molberd', 'special', '9', '20', '20', '20', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('2', '4', '3', '9', 'Tsungo', 'special', '11', '17', '37', '17', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('3', '4', '7', '5', 'Herszt Rabusiów', 'special', '10', '42', '36', '30', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271912', '9', '3', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271913', '9', '3', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271914', '9', '3', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271915', '9', '3', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271916', '9', '3', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271917', '9', '3', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271918', '9', '3', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271919', '9', '3', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271920', '9', '3', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271921', '9', '3', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271922', '9', '3', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271923', '9', '3', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271924', '9', '3', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271925', '9', '3', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271926', '9', '3', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271927', '9', '3', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271928', '9', '3', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271929', '9', '3', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271930', '9', '3', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271931', '9', '3', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271932', '9', '3', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271933', '9', '3', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271934', '9', '3', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271935', '9', '3', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271936', '9', '3', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271937', '9', '3', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271938', '9', '3', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271939', '9', '3', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271940', '9', '3', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271941', '9', '3', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271942', '9', '3', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271943', '9', '3', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271944', '9', '3', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271945', '9', '3', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271946', '9', '3', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271947', '9', '3', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271948', '9', '3', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271949', '9', '3', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271950', '9', '3', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271951', '9', '3', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271952', '9', '3', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271953', '9', '3', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271954', '9', '3', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271955', '9', '3', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271956', '9', '3', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271957', '9', '3', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271958', '9', '3', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271959', '9', '3', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271960', '9', '3', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271961', '9', '3', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271962', '9', '3', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271963', '9', '3', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271964', '9', '3', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271965', '9', '3', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271966', '9', '5', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271967', '9', '5', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271968', '9', '5', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271969', '9', '5', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271970', '9', '5', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271971', '9', '5', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271972', '9', '5', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271973', '9', '5', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271974', '9', '5', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271975', '9', '5', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271976', '9', '5', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271977', '9', '5', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271978', '9', '5', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271979', '9', '5', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271980', '9', '5', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271981', '9', '5', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271982', '9', '5', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271983', '9', '5', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271984', '9', '5', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271985', '9', '5', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271986', '9', '5', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271987', '9', '5', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271988', '9', '5', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271989', '9', '5', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271990', '9', '5', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271991', '9', '5', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271992', '9', '5', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271993', '9', '5', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('271994', '9', '5', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('271995', '9', '5', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('271996', '9', '5', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('271997', '9', '5', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('271998', '9', '5', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('271999', '9', '5', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272000', '9', '5', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272001', '9', '5', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272002', '9', '5', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272003', '9', '5', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272004', '9', '5', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272005', '9', '5', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272006', '9', '5', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272007', '9', '5', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272008', '9', '5', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272009', '9', '5', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272010', '9', '5', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272011', '9', '5', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272012', '9', '5', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272013', '9', '5', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272014', '9', '5', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272015', '9', '5', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272016', '9', '5', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272017', '9', '5', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272018', '9', '5', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272019', '9', '5', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272020', '9', '7', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272021', '9', '7', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272022', '9', '7', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272023', '9', '7', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272024', '9', '7', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272025', '9', '7', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272026', '9', '7', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272027', '9', '7', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272028', '9', '7', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272029', '9', '7', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272030', '9', '7', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272031', '9', '7', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272032', '9', '7', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272033', '9', '7', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272034', '9', '7', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272035', '9', '7', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272036', '9', '7', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272037', '9', '7', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272038', '9', '7', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272039', '9', '7', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272040', '9', '7', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272041', '9', '7', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272042', '9', '7', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272043', '9', '7', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272044', '9', '7', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272045', '9', '7', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272046', '9', '7', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272047', '9', '7', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272048', '9', '7', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272049', '9', '7', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272050', '9', '7', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272051', '9', '7', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272052', '9', '7', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272053', '9', '7', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272054', '9', '7', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272055', '9', '7', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272056', '9', '7', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272057', '9', '7', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272058', '9', '7', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272059', '9', '7', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272060', '9', '7', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272061', '9', '7', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272062', '9', '7', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272063', '9', '7', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272064', '9', '7', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272065', '9', '7', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272066', '9', '7', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272067', '9', '7', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272068', '9', '7', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272069', '9', '7', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272070', '9', '7', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272071', '9', '7', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272072', '9', '7', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272073', '9', '7', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272074', '9', '9', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272075', '9', '9', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272076', '9', '9', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272077', '9', '9', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272078', '9', '9', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272079', '9', '9', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272080', '9', '9', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272081', '9', '9', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272082', '9', '9', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272083', '9', '9', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272084', '9', '9', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272085', '9', '9', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272086', '9', '9', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272087', '9', '9', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272088', '9', '9', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272089', '9', '9', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272090', '9', '9', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272091', '9', '9', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272092', '9', '9', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272093', '9', '9', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272094', '9', '9', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272095', '9', '9', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272096', '9', '9', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272097', '9', '9', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272098', '9', '9', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272099', '9', '9', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272100', '9', '9', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272101', '9', '9', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272102', '9', '9', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272103', '9', '9', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272104', '9', '9', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272105', '9', '9', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272106', '9', '9', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272107', '9', '9', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272108', '9', '9', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272109', '9', '9', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272110', '9', '9', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272111', '9', '9', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272112', '9', '9', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272113', '9', '9', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272114', '9', '9', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272115', '9', '9', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272116', '9', '9', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272117', '9', '9', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272118', '9', '9', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272119', '9', '9', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272120', '9', '9', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272121', '9', '9', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272122', '9', '9', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272123', '9', '9', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272124', '9', '9', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272125', '9', '9', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272126', '9', '9', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272127', '9', '9', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272128', '9', '11', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272129', '9', '11', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272130', '9', '11', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272131', '9', '11', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272132', '9', '11', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272133', '9', '11', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272134', '9', '11', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272135', '9', '11', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272136', '9', '11', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272137', '9', '11', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272138', '9', '11', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272139', '9', '11', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272140', '9', '11', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272141', '9', '11', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272142', '9', '11', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272143', '9', '11', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272144', '9', '11', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272145', '9', '11', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272146', '9', '11', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272147', '9', '11', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272148', '9', '11', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272149', '9', '11', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272150', '9', '11', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272151', '9', '11', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272152', '9', '11', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272153', '9', '11', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272154', '9', '11', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272155', '9', '11', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272156', '9', '11', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272157', '9', '11', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272158', '9', '11', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272159', '9', '11', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272160', '9', '11', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272161', '9', '11', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272162', '9', '11', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272163', '9', '11', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272164', '9', '11', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272165', '9', '11', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272166', '9', '11', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272167', '9', '11', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272168', '9', '11', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272169', '9', '11', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272170', '9', '11', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272171', '9', '11', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272172', '9', '11', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272173', '9', '11', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272174', '9', '11', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272175', '9', '11', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272176', '9', '11', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272177', '9', '11', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272178', '9', '11', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272179', '9', '11', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272180', '9', '11', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272181', '9', '11', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272182', '9', '13', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272183', '9', '13', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272184', '9', '13', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272185', '9', '13', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272186', '9', '13', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272187', '9', '13', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272188', '9', '13', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272189', '9', '13', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272190', '9', '13', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272191', '9', '13', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272192', '9', '13', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272193', '9', '13', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272194', '9', '13', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272195', '9', '13', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272196', '9', '13', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272197', '9', '13', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272198', '9', '13', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272199', '9', '13', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272200', '9', '13', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272201', '9', '13', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272202', '9', '13', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272203', '9', '13', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272204', '9', '13', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272205', '9', '13', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272206', '9', '13', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272207', '9', '13', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272208', '9', '13', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272209', '9', '13', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272210', '9', '13', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272211', '9', '13', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272212', '9', '13', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272213', '9', '13', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272214', '9', '13', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272215', '9', '13', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272216', '9', '13', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272217', '9', '13', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272218', '9', '13', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272219', '9', '13', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272220', '9', '13', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272221', '9', '13', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272222', '9', '13', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272223', '9', '13', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272224', '9', '13', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272225', '9', '13', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272226', '9', '13', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272227', '9', '13', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272228', '9', '13', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272229', '9', '13', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272230', '9', '13', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272231', '9', '13', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272232', '9', '13', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272233', '9', '13', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272234', '9', '13', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272235', '9', '13', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272236', '9', '15', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272237', '9', '15', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272238', '9', '15', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272239', '9', '15', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272240', '9', '15', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272241', '9', '15', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272242', '9', '15', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272243', '9', '15', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272244', '9', '15', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272245', '9', '15', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272246', '9', '15', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272247', '9', '15', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272248', '9', '15', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272249', '9', '15', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272250', '9', '15', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272251', '9', '15', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272252', '9', '15', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272253', '9', '15', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272254', '9', '15', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272255', '9', '15', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272256', '9', '15', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272257', '9', '15', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272258', '9', '15', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272259', '9', '15', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272260', '9', '15', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272261', '9', '15', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272262', '9', '15', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272263', '9', '15', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272264', '9', '15', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272265', '9', '15', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272266', '9', '15', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272267', '9', '15', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272268', '9', '15', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272269', '9', '15', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272270', '9', '15', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272271', '9', '15', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272272', '9', '15', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272273', '9', '15', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272274', '9', '15', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272275', '9', '15', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272276', '9', '15', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272277', '9', '15', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272278', '9', '15', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272279', '9', '15', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272280', '9', '15', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272281', '9', '15', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272282', '9', '15', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272283', '9', '15', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272284', '9', '15', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272285', '9', '15', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272286', '9', '15', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272287', '9', '15', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272288', '9', '15', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272289', '9', '15', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272290', '9', '17', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272291', '9', '17', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272292', '9', '17', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272293', '9', '17', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272294', '9', '17', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272295', '9', '17', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272296', '9', '17', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272297', '9', '17', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272298', '9', '17', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272299', '9', '17', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272300', '9', '17', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272301', '9', '17', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272302', '9', '17', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272303', '9', '17', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272304', '9', '17', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272305', '9', '17', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272306', '9', '17', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272307', '9', '17', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272308', '9', '17', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272309', '9', '17', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272310', '9', '17', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272311', '9', '17', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272312', '9', '17', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272313', '9', '17', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272314', '9', '17', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272315', '9', '17', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272316', '9', '17', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272317', '9', '17', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272318', '9', '17', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272319', '9', '17', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272320', '9', '17', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272321', '9', '17', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272322', '9', '17', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272323', '9', '17', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272324', '9', '17', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272325', '9', '17', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272326', '9', '17', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272327', '9', '17', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272328', '9', '17', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272329', '9', '17', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272330', '9', '17', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272331', '9', '17', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272332', '9', '17', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272333', '9', '17', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272334', '9', '17', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272335', '9', '17', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272336', '9', '17', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272337', '9', '17', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272338', '9', '17', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272339', '9', '17', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272340', '9', '17', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272341', '9', '17', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272342', '9', '17', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272343', '9', '17', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272344', '9', '19', '3', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272345', '9', '19', '3', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272346', '9', '19', '3', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272347', '9', '19', '3', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272348', '9', '19', '3', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272349', '9', '19', '3', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272350', '9', '19', '5', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272351', '9', '19', '5', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272352', '9', '19', '5', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272353', '9', '19', '5', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272354', '9', '19', '5', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272355', '9', '19', '5', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272356', '9', '19', '7', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272357', '9', '19', '7', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272358', '9', '19', '7', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272359', '9', '19', '7', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272360', '9', '19', '7', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272361', '9', '19', '7', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272362', '9', '19', '9', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272363', '9', '19', '9', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272364', '9', '19', '9', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272365', '9', '19', '9', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272366', '9', '19', '9', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272367', '9', '19', '9', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272368', '9', '19', '11', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272369', '9', '19', '11', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272370', '9', '19', '11', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272371', '9', '19', '11', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272372', '9', '19', '11', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272373', '9', '19', '11', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272374', '9', '19', '13', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272375', '9', '19', '13', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272376', '9', '19', '13', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272377', '9', '19', '13', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272378', '9', '19', '13', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272379', '9', '19', '13', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272380', '9', '19', '15', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272381', '9', '19', '15', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272382', '9', '19', '15', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272383', '9', '19', '15', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272384', '9', '19', '15', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272385', '9', '19', '15', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272386', '9', '19', '17', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272387', '9', '19', '17', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272388', '9', '19', '17', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272389', '9', '19', '17', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272390', '9', '19', '17', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272391', '9', '19', '17', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272392', '9', '19', '19', 'Duch Arguth', 'enemy', '31', '90', '92', '90', '62', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272393', '9', '19', '19', 'Duch Arguth (Champion)', 'enemy', '31', '135', '138', '135', '93', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272394', '9', '19', '19', 'Duch Arguth (Elita)', 'enemy', '31', '225', '230', '225', '155', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272395', '9', '19', '19', 'Duch Arguth (Boss)', 'enemy', '31', '1530', '1564', '1530', '527', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272396', '9', '19', '19', 'Duch Arguth (Bog)', 'enemy', '31', '7650', '7820', '7650', '2635', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272397', '9', '19', '19', 'Duch Arguth (Elitarny Bog)', 'enemy', '31', '22500', '23000', '22500', '15500', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272398', '10', '5', '5', 'Lich Arguth (Elitarny)', 'enemy', '39', '3990', '3310', '4100', '5000', '10000', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272399', '11', '3', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272400', '11', '3', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272401', '11', '3', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272402', '11', '3', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272403', '11', '3', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272404', '11', '3', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272405', '11', '3', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272406', '11', '3', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272407', '11', '3', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272408', '11', '3', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272409', '11', '3', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272410', '11', '3', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272411', '11', '3', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272412', '11', '3', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272413', '11', '3', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272414', '11', '3', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272415', '11', '3', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272416', '11', '3', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272417', '11', '5', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272418', '11', '5', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272419', '11', '5', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272420', '11', '5', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272421', '11', '5', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272422', '11', '5', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272423', '11', '5', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272424', '11', '5', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272425', '11', '5', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272426', '11', '5', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272427', '11', '5', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272428', '11', '5', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272429', '11', '5', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272430', '11', '5', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272431', '11', '5', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272432', '11', '5', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272433', '11', '5', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272434', '11', '5', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272435', '11', '7', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272436', '11', '7', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272437', '11', '7', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272438', '11', '7', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272439', '11', '7', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272440', '11', '7', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272441', '11', '7', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272442', '11', '7', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272443', '11', '7', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272444', '11', '7', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272445', '11', '7', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272446', '11', '7', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272447', '11', '7', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272448', '11', '7', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272449', '11', '7', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272450', '11', '7', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272451', '11', '7', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272452', '11', '7', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272453', '11', '9', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272454', '11', '9', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272455', '11', '9', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272456', '11', '9', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272457', '11', '9', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272458', '11', '9', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272459', '11', '9', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272460', '11', '9', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272461', '11', '9', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272462', '11', '9', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272463', '11', '9', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272464', '11', '9', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272465', '11', '9', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272466', '11', '9', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272467', '11', '9', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272468', '11', '9', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272469', '11', '9', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272470', '11', '9', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272471', '11', '11', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272472', '11', '11', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272473', '11', '11', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272474', '11', '11', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272475', '11', '11', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272476', '11', '11', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272477', '11', '11', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272478', '11', '11', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272479', '11', '11', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272480', '11', '11', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272481', '11', '11', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272482', '11', '11', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272483', '11', '11', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272484', '11', '11', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272485', '11', '11', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272486', '11', '11', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272487', '11', '11', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272488', '11', '11', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272489', '11', '13', '3', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272490', '11', '13', '3', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272491', '11', '13', '3', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272492', '11', '13', '5', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272493', '11', '13', '5', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272494', '11', '13', '5', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272495', '11', '13', '7', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272496', '11', '13', '7', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272497', '11', '13', '7', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272498', '11', '13', '9', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272499', '11', '13', '9', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272500', '11', '13', '9', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272501', '11', '13', '11', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272502', '11', '13', '11', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272503', '11', '13', '11', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272504', '11', '13', '13', 'Skorpion', 'enemy', '43', '128', '128', '128', '86', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272505', '11', '13', '13', 'Skorpion (Champion)', 'enemy', '43', '192', '192', '192', '129', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272506', '11', '13', '13', 'Skorpion (Elita)', 'enemy', '43', '320', '320', '320', '215', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272508', '12', '3', '3', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272509', '12', '3', '3', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272510', '12', '3', '5', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272511', '12', '3', '5', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272512', '12', '3', '5', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272513', '12', '3', '7', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272514', '12', '3', '7', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272515', '12', '3', '7', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272516', '12', '3', '9', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272517', '12', '3', '9', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272518', '12', '3', '9', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272519', '12', '5', '3', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272520', '12', '5', '3', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272521', '12', '5', '3', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272522', '12', '5', '5', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272523', '12', '5', '5', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272524', '12', '5', '5', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272525', '12', '5', '7', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272526', '12', '5', '7', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272527', '12', '5', '7', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272528', '12', '5', '9', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272529', '12', '5', '9', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272530', '12', '5', '9', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272531', '12', '7', '3', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272532', '12', '7', '3', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272533', '12', '7', '3', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272534', '12', '7', '5', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272535', '12', '7', '5', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272536', '12', '7', '5', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272537', '12', '7', '7', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272538', '12', '7', '7', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272539', '12', '7', '7', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272540', '12', '7', '9', 'Dziki Kot', 'enemy', '54', '131', '221', '131', '108', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272541', '12', '7', '9', 'Dziki Kot (Champion)', 'enemy', '54', '197', '332', '197', '162', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272542', '12', '7', '9', 'Dziki Kot (Elita)', 'enemy', '54', '328', '553', '328', '270', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272543', '1', '3', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272544', '1', '3', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272545', '1', '3', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272546', '1', '3', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272547', '1', '3', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272548', '1', '3', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272549', '1', '3', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272550', '1', '3', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272551', '1', '3', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272552', '1', '3', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272553', '1', '3', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272554', '1', '3', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272555', '1', '3', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272556', '1', '3', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272557', '1', '3', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272558', '1', '3', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272559', '1', '3', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272560', '1', '3', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272561', '1', '5', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272562', '1', '5', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272563', '1', '5', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272564', '1', '5', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272565', '1', '5', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272566', '1', '5', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272567', '1', '5', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272568', '1', '5', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272569', '1', '5', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272570', '1', '5', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272571', '1', '5', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272572', '1', '5', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272573', '1', '5', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272574', '1', '5', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272575', '1', '5', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272576', '1', '5', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272577', '1', '5', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272578', '1', '5', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272579', '1', '7', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272580', '1', '7', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272581', '1', '7', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272582', '1', '7', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272583', '1', '7', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272584', '1', '7', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272585', '1', '7', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272586', '1', '7', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272587', '1', '7', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272588', '1', '7', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272589', '1', '7', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272590', '1', '7', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272591', '1', '7', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272592', '1', '7', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272593', '1', '7', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272594', '1', '7', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272595', '1', '7', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272596', '1', '7', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272597', '1', '9', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272598', '1', '9', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272599', '1', '9', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272600', '1', '9', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272601', '1', '9', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272602', '1', '9', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272603', '1', '9', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272604', '1', '9', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272605', '1', '9', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272606', '1', '9', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272607', '1', '9', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272608', '1', '9', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272609', '1', '9', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272610', '1', '9', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272611', '1', '9', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272612', '1', '9', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272613', '1', '9', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272614', '1', '9', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272615', '1', '11', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272616', '1', '11', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272617', '1', '11', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272618', '1', '11', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272619', '1', '11', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272620', '1', '11', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272621', '1', '11', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272622', '1', '11', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272623', '1', '11', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272624', '1', '11', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272625', '1', '11', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272626', '1', '11', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272627', '1', '11', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272628', '1', '11', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272629', '1', '11', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272630', '1', '11', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272631', '1', '11', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272632', '1', '11', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272633', '1', '13', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272634', '1', '13', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272635', '1', '13', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272636', '1', '13', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272637', '1', '13', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272638', '1', '13', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272639', '1', '13', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272640', '1', '13', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272641', '1', '13', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272642', '1', '13', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272643', '1', '13', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272644', '1', '13', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272645', '1', '13', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272646', '1', '13', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272647', '1', '13', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272648', '1', '13', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272649', '1', '13', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272650', '1', '13', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272651', '1', '15', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272652', '1', '15', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272653', '1', '15', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272654', '1', '15', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272655', '1', '15', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272656', '1', '15', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272657', '1', '15', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272658', '1', '15', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272659', '1', '15', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272660', '1', '15', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272661', '1', '15', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272662', '1', '15', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272663', '1', '15', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272664', '1', '15', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272665', '1', '15', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272666', '1', '15', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272667', '1', '15', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272668', '1', '15', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272669', '1', '17', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272670', '1', '17', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272671', '1', '17', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272672', '1', '17', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272673', '1', '17', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272674', '1', '17', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272675', '1', '17', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272676', '1', '17', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272677', '1', '17', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272678', '1', '17', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272679', '1', '17', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272680', '1', '17', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272681', '1', '17', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272682', '1', '17', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272683', '1', '17', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272684', '1', '17', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272685', '1', '17', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272686', '1', '17', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272687', '1', '19', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272688', '1', '19', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272689', '1', '19', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272690', '1', '19', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272691', '1', '19', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272692', '1', '19', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272693', '1', '19', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272694', '1', '19', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272695', '1', '19', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272696', '1', '19', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272697', '1', '19', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272698', '1', '19', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272699', '1', '19', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272700', '1', '19', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272701', '1', '19', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272702', '1', '19', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272703', '1', '19', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272704', '1', '19', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272705', '1', '21', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272706', '1', '21', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272707', '1', '21', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272708', '1', '21', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272709', '1', '21', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272710', '1', '21', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272711', '1', '21', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272712', '1', '21', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272713', '1', '21', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272714', '1', '21', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272715', '1', '21', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272716', '1', '21', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272717', '1', '21', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272718', '1', '21', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272719', '1', '21', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272720', '1', '21', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272721', '1', '21', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272722', '1', '21', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272723', '1', '23', '3', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272724', '1', '23', '3', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272725', '1', '23', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272726', '1', '23', '5', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272727', '1', '23', '5', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272728', '1', '23', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272729', '1', '23', '7', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272730', '1', '23', '7', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272731', '1', '23', '7', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272732', '1', '23', '9', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272733', '1', '23', '9', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272734', '1', '23', '9', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272735', '1', '23', '11', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272736', '1', '23', '11', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272737', '1', '23', '11', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272738', '1', '23', '13', 'Bandyta', 'enemy', '1', '2', '2', '2', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272739', '1', '23', '13', 'Bandyta (Champion)', 'enemy', '1', '3', '3', '3', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272740', '1', '23', '13', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272741', '2', '1', '1', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272742', '2', '1', '1', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272743', '2', '1', '1', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272744', '2', '1', '1', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272745', '2', '1', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272746', '2', '1', '3', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272747', '2', '1', '3', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272748', '2', '1', '3', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272749', '2', '1', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272750', '2', '1', '5', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272751', '2', '1', '5', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272752', '2', '1', '5', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272753', '2', '3', '1', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272754', '2', '3', '1', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272755', '2', '3', '1', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272756', '2', '3', '1', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272757', '2', '3', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272758', '2', '3', '3', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272759', '2', '3', '3', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272760', '2', '3', '3', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272761', '2', '3', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272762', '2', '3', '5', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272763', '2', '3', '5', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272764', '2', '3', '5', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272765', '2', '5', '1', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272766', '2', '5', '1', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272767', '2', '5', '1', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272768', '2', '5', '1', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272769', '2', '5', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272770', '2', '5', '3', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272771', '2', '5', '3', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272772', '2', '5', '3', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272773', '2', '5', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272774', '2', '5', '5', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272775', '2', '5', '5', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272776', '2', '5', '5', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272777', '2', '7', '1', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272778', '2', '7', '1', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272779', '2', '7', '1', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272780', '2', '7', '1', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272781', '2', '7', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272782', '2', '7', '3', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272783', '2', '7', '3', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272784', '2', '7', '3', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272785', '2', '7', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272786', '2', '7', '5', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272787', '2', '7', '5', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272788', '2', '7', '5', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272789', '2', '9', '1', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272790', '2', '9', '1', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272791', '2', '9', '1', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272792', '2', '9', '1', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272793', '2', '9', '3', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272794', '2', '9', '3', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272795', '2', '9', '3', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272796', '2', '9', '3', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272797', '2', '9', '5', 'Bandyta (Elita)', 'enemy', '1', '5', '5', '5', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272798', '2', '9', '5', 'Bandyta (Boss)', 'enemy', '1', '33', '34', '33', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('272799', '2', '9', '5', 'Bandyta (Bog)', 'enemy', '1', '160', '180', '160', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('272800', '2', '9', '5', 'Bandyta (Elitarny Bog)', 'enemy', '1', '250', '1000', '250', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('272801', '3', '3', '3', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272802', '3', '3', '3', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272803', '3', '3', '3', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272804', '3', '3', '5', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272805', '3', '3', '5', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272806', '3', '3', '5', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272807', '3', '3', '7', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272808', '3', '3', '7', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272809', '3', '3', '7', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272810', '3', '3', '9', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272811', '3', '3', '9', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272812', '3', '3', '9', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272813', '3', '5', '3', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272814', '3', '5', '3', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272815', '3', '5', '3', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272816', '3', '5', '5', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272817', '3', '5', '5', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272818', '3', '5', '5', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272819', '3', '5', '7', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272820', '3', '5', '7', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272821', '3', '5', '7', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272822', '3', '5', '9', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272823', '3', '5', '9', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272824', '3', '5', '9', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272825', '3', '7', '3', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272826', '3', '7', '3', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272827', '3', '7', '3', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272828', '3', '7', '5', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272829', '3', '7', '5', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272830', '3', '7', '5', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272831', '3', '7', '7', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272832', '3', '7', '7', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272833', '3', '7', '7', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272834', '3', '7', '9', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272835', '3', '7', '9', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272836', '3', '7', '9', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272837', '3', '9', '3', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272838', '3', '9', '3', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272839', '3', '9', '3', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272840', '3', '9', '5', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272841', '3', '9', '5', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272842', '3', '9', '5', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272843', '3', '9', '7', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272844', '3', '9', '7', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272845', '3', '9', '7', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272846', '3', '9', '9', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272847', '3', '9', '9', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272848', '3', '9', '9', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272849', '3', '11', '3', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272850', '3', '11', '3', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272851', '3', '11', '3', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272852', '3', '11', '5', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272853', '3', '11', '5', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272854', '3', '11', '5', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272855', '3', '11', '7', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272856', '3', '11', '7', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272857', '3', '11', '7', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272858', '3', '11', '9', 'Zlodziej', 'enemy', '4', '8', '20', '6', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272859', '3', '11', '9', 'Zlodziej (Champion)', 'enemy', '4', '12', '30', '9', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272860', '3', '11', '9', 'Zlodziej (Elita)', 'enemy', '4', '20', '50', '15', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272861', '4', '3', '3', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272862', '4', '3', '3', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272863', '4', '3', '3', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272864', '4', '3', '5', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272865', '4', '3', '5', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272866', '4', '3', '5', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272867', '4', '3', '7', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272868', '4', '3', '7', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272869', '4', '3', '7', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272870', '4', '3', '9', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272871', '4', '3', '9', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272872', '4', '3', '9', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272873', '4', '3', '11', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272874', '4', '3', '11', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272875', '4', '3', '11', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272876', '4', '3', '13', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272877', '4', '3', '13', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272878', '4', '3', '13', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272879', '4', '5', '3', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272880', '4', '5', '3', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272881', '4', '5', '3', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272882', '4', '5', '5', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272883', '4', '5', '5', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272884', '4', '5', '5', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272885', '4', '5', '7', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272886', '4', '5', '7', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272887', '4', '5', '7', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272888', '4', '5', '9', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272889', '4', '5', '9', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272890', '4', '5', '9', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272891', '4', '5', '11', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272892', '4', '5', '11', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272893', '4', '5', '11', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272894', '4', '5', '13', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272895', '4', '5', '13', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272896', '4', '5', '13', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272897', '4', '7', '3', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272898', '4', '7', '3', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272899', '4', '7', '3', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272900', '4', '7', '5', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272901', '4', '7', '5', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272902', '4', '7', '5', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272903', '4', '7', '7', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272904', '4', '7', '7', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272905', '4', '7', '7', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272906', '4', '7', '9', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272907', '4', '7', '9', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272908', '4', '7', '9', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272909', '4', '7', '11', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272910', '4', '7', '11', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272911', '4', '7', '11', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272912', '4', '7', '13', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272913', '4', '7', '13', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272914', '4', '7', '13', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272915', '4', '9', '3', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272916', '4', '9', '3', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272917', '4', '9', '3', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272918', '4', '9', '5', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272919', '4', '9', '5', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272920', '4', '9', '5', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272921', '4', '9', '7', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272922', '4', '9', '7', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272923', '4', '9', '7', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272924', '4', '9', '9', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272925', '4', '9', '9', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272926', '4', '9', '9', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272927', '4', '9', '11', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272928', '4', '9', '11', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272929', '4', '9', '11', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272930', '4', '9', '13', 'Rabus', 'enemy', '9', '32', '25', '21', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272931', '4', '9', '13', 'Rabus (Champion)', 'enemy', '9', '48', '37', '32', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272932', '4', '9', '13', 'Rabus (Elita)', 'enemy', '9', '80', '62', '53', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272933', '5', '3', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272934', '5', '3', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272935', '5', '3', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272936', '5', '3', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272937', '5', '3', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272938', '5', '3', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272939', '5', '3', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272940', '5', '3', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272941', '5', '3', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272942', '5', '3', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272943', '5', '3', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272944', '5', '3', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272945', '5', '3', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272946', '5', '3', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272947', '5', '3', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272948', '5', '3', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272949', '5', '3', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272950', '5', '3', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272951', '5', '5', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272952', '5', '5', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272953', '5', '5', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272954', '5', '5', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272955', '5', '5', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272956', '5', '5', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272957', '5', '5', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272958', '5', '5', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272959', '5', '5', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272960', '5', '5', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272961', '5', '5', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272962', '5', '5', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272963', '5', '5', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272964', '5', '5', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272965', '5', '5', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272966', '5', '5', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272967', '5', '5', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272968', '5', '5', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272969', '5', '7', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272970', '5', '7', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272971', '5', '7', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272972', '5', '7', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272973', '5', '7', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272974', '5', '7', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272975', '5', '7', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272976', '5', '7', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272977', '5', '7', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272978', '5', '7', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272979', '5', '7', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272980', '5', '7', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272981', '5', '7', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272982', '5', '7', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272983', '5', '7', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272984', '5', '7', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272985', '5', '7', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272986', '5', '7', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272987', '5', '9', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272988', '5', '9', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272989', '5', '9', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272990', '5', '9', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272991', '5', '9', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272992', '5', '9', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272993', '5', '9', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272994', '5', '9', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272995', '5', '9', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272996', '5', '9', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('272997', '5', '9', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('272998', '5', '9', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('272999', '5', '9', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273000', '5', '9', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273001', '5', '9', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273002', '5', '9', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273003', '5', '9', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273004', '5', '9', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273005', '5', '11', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273006', '5', '11', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273007', '5', '11', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273008', '5', '11', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273009', '5', '11', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273010', '5', '11', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273011', '5', '11', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273012', '5', '11', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273013', '5', '11', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273014', '5', '11', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273015', '5', '11', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273016', '5', '11', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273017', '5', '11', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273018', '5', '11', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273019', '5', '11', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273020', '5', '11', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273021', '5', '11', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273022', '5', '11', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273023', '5', '13', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273024', '5', '13', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273025', '5', '13', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273026', '5', '13', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273027', '5', '13', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273028', '5', '13', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273029', '5', '13', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273030', '5', '13', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273031', '5', '13', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273032', '5', '13', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273033', '5', '13', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273034', '5', '13', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273035', '5', '13', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273036', '5', '13', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273037', '5', '13', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273038', '5', '13', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273039', '5', '13', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273040', '5', '13', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273041', '5', '15', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273042', '5', '15', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273043', '5', '15', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273044', '5', '15', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273045', '5', '15', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273046', '5', '15', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273047', '5', '15', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273048', '5', '15', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273049', '5', '15', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273050', '5', '15', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273051', '5', '15', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273052', '5', '15', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273053', '5', '15', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273054', '5', '15', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273055', '5', '15', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273056', '5', '15', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273057', '5', '15', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273058', '5', '15', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273059', '5', '17', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273060', '5', '17', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273061', '5', '17', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273062', '5', '17', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273063', '5', '17', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273064', '5', '17', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273065', '5', '17', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273066', '5', '17', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273067', '5', '17', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273068', '5', '17', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273069', '5', '17', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273070', '5', '17', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273071', '5', '17', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273072', '5', '17', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273073', '5', '17', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273074', '5', '17', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273075', '5', '17', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273076', '5', '17', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273077', '5', '19', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273078', '5', '19', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273079', '5', '19', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273080', '5', '19', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273081', '5', '19', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273082', '5', '19', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273083', '5', '19', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273084', '5', '19', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273085', '5', '19', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273086', '5', '19', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273087', '5', '19', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273088', '5', '19', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273089', '5', '19', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273090', '5', '19', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273091', '5', '19', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273092', '5', '19', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273093', '5', '19', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273094', '5', '19', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273095', '5', '21', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273096', '5', '21', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273097', '5', '21', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273098', '5', '21', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273099', '5', '21', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273100', '5', '21', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273101', '5', '21', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273102', '5', '21', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273103', '5', '21', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273104', '5', '21', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273105', '5', '21', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273106', '5', '21', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273107', '5', '21', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273108', '5', '21', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273109', '5', '21', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273110', '5', '21', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273111', '5', '21', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273112', '5', '21', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273113', '5', '23', '3', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273114', '5', '23', '3', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273115', '5', '23', '3', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273116', '5', '23', '5', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273117', '5', '23', '5', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273118', '5', '23', '5', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273119', '5', '23', '7', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273120', '5', '23', '7', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273121', '5', '23', '7', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273122', '5', '23', '9', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273123', '5', '23', '9', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273124', '5', '23', '9', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273125', '5', '23', '11', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273126', '5', '23', '11', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273127', '5', '23', '11', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273128', '5', '23', '13', 'Monstrualna Dzdzownica', 'enemy', '12', '20', '60', '25', '0', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273129', '5', '23', '13', 'Monstrualna Dzdzownica (Champion)', 'enemy', '12', '30', '90', '38', '0', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273130', '5', '23', '13', 'Monstrualna Dzdzownica (Elita)', 'enemy', '12', '50', '150', '63', '0', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273131', '5', '51', '51', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273132', '5', '51', '53', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273133', '5', '51', '55', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273134', '5', '53', '51', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273135', '5', '53', '53', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273136', '5', '53', '55', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273137', '5', '55', '51', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273138', '5', '55', '53', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273139', '5', '55', '55', 'Bagi Hun (Boss)', 'enemy', '12', '333', '980', '417', '0', '0', '4');
INSERT INTO `kosmiczni_npc` VALUES ('273140', '5', '61', '61', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273141', '5', '61', '63', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273142', '5', '61', '65', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273143', '5', '63', '61', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273144', '5', '63', '63', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273145', '5', '63', '65', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273146', '5', '65', '61', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273147', '5', '65', '63', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273148', '5', '65', '65', 'Bagi Hun Tin (Bog)', 'enemy', '12', '1700', '5100', '2125', '0', '0', '5');
INSERT INTO `kosmiczni_npc` VALUES ('273149', '5', '81', '81', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273150', '5', '81', '83', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273151', '5', '81', '85', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273152', '5', '83', '81', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273153', '5', '83', '83', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273154', '5', '83', '85', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273155', '5', '85', '81', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273156', '5', '85', '83', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273157', '5', '85', '85', 'Colosus Bagi Hun Tin (Elitarny Bog)', 'enemy', '12', '5000', '15000', '6300', '0', '0', '6');
INSERT INTO `kosmiczni_npc` VALUES ('273158', '6', '3', '3', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273159', '6', '3', '3', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273160', '6', '3', '3', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273161', '6', '3', '5', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273162', '6', '3', '5', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273163', '6', '3', '5', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273164', '6', '3', '7', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273165', '6', '3', '7', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273166', '6', '3', '7', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273167', '6', '3', '9', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273168', '6', '3', '9', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273169', '6', '3', '9', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273170', '6', '5', '3', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273171', '6', '5', '3', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273172', '6', '5', '3', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273173', '6', '5', '5', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273174', '6', '5', '5', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273175', '6', '5', '5', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273176', '6', '5', '7', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273177', '6', '5', '7', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273178', '6', '5', '7', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273179', '6', '5', '9', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273180', '6', '5', '9', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273181', '6', '5', '9', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273182', '6', '7', '3', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273183', '6', '7', '3', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273184', '6', '7', '3', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273185', '6', '7', '5', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273186', '6', '7', '5', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273187', '6', '7', '5', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273188', '6', '7', '7', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273189', '6', '7', '7', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273190', '6', '7', '7', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273191', '6', '7', '9', 'Barbarzynca', 'enemy', '17', '75', '31', '44', '34', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273192', '6', '7', '9', 'Barbarzynca (Champion)', 'enemy', '17', '113', '46', '66', '51', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273193', '6', '7', '9', 'Barbarzynca (Elita)', 'enemy', '17', '188', '77', '110', '85', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273194', '7', '3', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273195', '7', '3', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273196', '7', '3', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273197', '7', '3', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273198', '7', '3', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273199', '7', '3', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273200', '7', '3', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273201', '7', '3', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273202', '7', '3', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273203', '7', '3', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273204', '7', '3', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273205', '7', '3', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273206', '7', '3', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273207', '7', '3', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273208', '7', '3', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273209', '7', '5', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273210', '7', '5', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273211', '7', '5', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273212', '7', '5', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273213', '7', '5', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273214', '7', '5', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273215', '7', '5', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273216', '7', '5', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273217', '7', '5', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273218', '7', '5', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273219', '7', '5', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273220', '7', '5', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273221', '7', '5', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273222', '7', '5', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273223', '7', '5', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273224', '7', '7', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273225', '7', '7', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273226', '7', '7', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273227', '7', '7', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273228', '7', '7', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273229', '7', '7', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273230', '7', '7', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273231', '7', '7', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273232', '7', '7', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273233', '7', '7', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273234', '7', '7', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273235', '7', '7', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273236', '7', '7', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273237', '7', '7', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273238', '7', '7', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273239', '7', '9', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273240', '7', '9', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273241', '7', '9', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273242', '7', '9', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273243', '7', '9', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273244', '7', '9', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273245', '7', '9', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273246', '7', '9', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273247', '7', '9', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273248', '7', '9', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273249', '7', '9', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273250', '7', '9', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273251', '7', '9', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273252', '7', '9', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273253', '7', '9', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273254', '7', '11', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273255', '7', '11', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273256', '7', '11', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273257', '7', '11', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273258', '7', '11', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273259', '7', '11', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273260', '7', '11', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273261', '7', '11', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273262', '7', '11', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273263', '7', '11', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273264', '7', '11', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273265', '7', '11', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273266', '7', '11', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273267', '7', '11', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273268', '7', '11', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273269', '7', '13', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273270', '7', '13', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273271', '7', '13', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273272', '7', '13', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273273', '7', '13', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273274', '7', '13', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273275', '7', '13', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273276', '7', '13', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273277', '7', '13', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273278', '7', '13', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273279', '7', '13', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273280', '7', '13', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273281', '7', '13', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273282', '7', '13', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273283', '7', '13', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273284', '7', '15', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273285', '7', '15', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273286', '7', '15', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273287', '7', '15', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273288', '7', '15', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273289', '7', '15', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273290', '7', '15', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273291', '7', '15', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273292', '7', '15', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273293', '7', '15', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273294', '7', '15', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273295', '7', '15', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273296', '7', '15', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273297', '7', '15', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273298', '7', '15', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273299', '7', '17', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273300', '7', '17', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273301', '7', '17', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273302', '7', '17', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273303', '7', '17', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273304', '7', '17', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273305', '7', '17', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273306', '7', '17', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273307', '7', '17', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273308', '7', '17', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273309', '7', '17', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273310', '7', '17', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273311', '7', '17', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273312', '7', '17', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273313', '7', '17', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273314', '7', '19', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273315', '7', '19', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273316', '7', '19', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273317', '7', '19', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273318', '7', '19', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273319', '7', '19', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273320', '7', '19', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273321', '7', '19', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273322', '7', '19', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273323', '7', '19', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273324', '7', '19', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273325', '7', '19', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273326', '7', '19', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273327', '7', '19', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273328', '7', '19', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273329', '7', '21', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273330', '7', '21', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273331', '7', '21', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273332', '7', '21', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273333', '7', '21', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273334', '7', '21', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273335', '7', '21', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273336', '7', '21', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273337', '7', '21', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273338', '7', '21', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273339', '7', '21', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273340', '7', '21', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273341', '7', '21', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273342', '7', '21', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273343', '7', '21', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273344', '7', '23', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273345', '7', '23', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273346', '7', '23', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273347', '7', '23', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273348', '7', '23', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273349', '7', '23', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273350', '7', '23', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273351', '7', '23', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273352', '7', '23', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273353', '7', '23', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273354', '7', '23', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273355', '7', '23', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273356', '7', '23', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273357', '7', '23', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273358', '7', '23', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273359', '7', '25', '3', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273360', '7', '25', '3', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273361', '7', '25', '3', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273362', '7', '25', '5', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273363', '7', '25', '5', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273364', '7', '25', '5', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273365', '7', '25', '7', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273366', '7', '25', '7', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273367', '7', '25', '7', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273368', '7', '25', '9', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273369', '7', '25', '9', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273370', '7', '25', '9', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');
INSERT INTO `kosmiczni_npc` VALUES ('273371', '7', '25', '11', 'Straznik Arguth', 'enemy', '25', '80', '68', '74', '50', '0', '1');
INSERT INTO `kosmiczni_npc` VALUES ('273372', '7', '25', '11', 'Straznik Arguth (Champion)', 'enemy', '25', '120', '102', '111', '75', '0', '2');
INSERT INTO `kosmiczni_npc` VALUES ('273373', '7', '25', '11', 'Straznik Arguth (Elita)', 'enemy', '25', '200', '170', '185', '125', '0', '3');

-- ----------------------------
-- Table structure for `kosmiczni_planety`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_planety`;
CREATE TABLE `kosmiczni_planety` (
  `nazwa` varchar(20) NOT NULL DEFAULT '[ Brak ]',
  `clan_id` int(11) NOT NULL DEFAULT '0',
  `przebywa` int(11) NOT NULL DEFAULT '0',
  `kp` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_planety
-- ----------------------------
INSERT INTO `kosmiczni_planety` VALUES ('Ziemia', '0', '0', '1');
INSERT INTO `kosmiczni_planety` VALUES ('Mars', '0', '0', '1');
INSERT INTO `kosmiczni_planety` VALUES ('Wenus', '0', '0', '2');
INSERT INTO `kosmiczni_planety` VALUES ('Merkury', '0', '0', '2');
INSERT INTO `kosmiczni_planety` VALUES ('Uran', '0', '0', '2');
INSERT INTO `kosmiczni_planety` VALUES ('Neptun', '0', '0', '2');
INSERT INTO `kosmiczni_planety` VALUES ('Jowisz', '0', '0', '8');
INSERT INTO `kosmiczni_planety` VALUES ('Saturn', '0', '0', '4');
INSERT INTO `kosmiczni_planety` VALUES ('Slonce', '0', '0', '15');

-- ----------------------------
-- Table structure for `kosmiczni_pw`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_pw`;
CREATE TABLE `kosmiczni_pw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `od` int(11) NOT NULL DEFAULT '0',
  `do` int(11) NOT NULL DEFAULT '0',
  `tresc` text NOT NULL,
  `data` varchar(50) NOT NULL DEFAULT '1.1.1970 00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_pw
-- ----------------------------

-- ----------------------------
-- Table structure for `kosmiczni_quest`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_quest`;
CREATE TABLE `kosmiczni_quest` (
  `user_id` int(11) NOT NULL,
  `quest` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_quest
-- ----------------------------
INSERT INTO `kosmiczni_quest` VALUES ('2', '1', '59');
INSERT INTO `kosmiczni_quest` VALUES ('1', '1', '195');
INSERT INTO `kosmiczni_quest` VALUES ('4', '1', '0');
INSERT INTO `kosmiczni_quest` VALUES ('6', '1', '195');
INSERT INTO `kosmiczni_quest` VALUES ('6', '2', '2');
INSERT INTO `kosmiczni_quest` VALUES ('1', '2', '2');
INSERT INTO `kosmiczni_quest` VALUES ('6', '3', '5');
INSERT INTO `kosmiczni_quest` VALUES ('4', '2', '2');
INSERT INTO `kosmiczni_quest` VALUES ('4', '3', '5');
INSERT INTO `kosmiczni_quest` VALUES ('7', '1', '195');
INSERT INTO `kosmiczni_quest` VALUES ('7', '2', '2');
INSERT INTO `kosmiczni_quest` VALUES ('7', '3', '5');
INSERT INTO `kosmiczni_quest` VALUES ('8', '1', '11');
INSERT INTO `kosmiczni_quest` VALUES ('1', '3', '5');
INSERT INTO `kosmiczni_quest` VALUES ('9', '1', '28');
INSERT INTO `kosmiczni_quest` VALUES ('24', '1', '13');
INSERT INTO `kosmiczni_quest` VALUES ('9', '2', '0');
INSERT INTO `kosmiczni_quest` VALUES ('2', '2', '2');

-- ----------------------------
-- Table structure for `kosmiczni_raport`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_raport`;
CREATE TABLE `kosmiczni_raport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `gracz` int(11) NOT NULL,
  `utworzono` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_raport
-- ----------------------------
INSERT INTO `kosmiczni_raport` VALUES ('3', '(Walka) Walka pomiêdzy Super Vegitto, a Overlord SSJ [Przegrana].', '7', 'Tue.Aug.16 04:43');
INSERT INTO `kosmiczni_raport` VALUES ('5', '(Walka) Walka pomiêdzy mafia, a Undertaker Kaio.[Wygrana]', '9', 'Wed.Aug.08 08:14');
INSERT INTO `kosmiczni_raport` VALUES ('6', '(Walka) Walka pomiêdzy mafia, a Undertaker Kaio [Przegrana].', '3', 'Wed.Aug.08 08:14');
INSERT INTO `kosmiczni_raport` VALUES ('8', '(Walka) Walka pomiêdzy Rockis, a SonGoku [Przegrana].', '14', 'Wed.Aug.13 01:20');
INSERT INTO `kosmiczni_raport` VALUES ('9', '(Walka) Walka pomiêdzy megis, a Cristina.[Wygrana]', '2', 'Wed.Aug.13 01:33');
INSERT INTO `kosmiczni_raport` VALUES ('10', '(Walka) Walka pomiêdzy megis, a Cristina [Przegrana].', '20', 'Wed.Aug.13 01:33');
INSERT INTO `kosmiczni_raport` VALUES ('12', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ [Przegrana].', '4', 'Wed.Aug.14 02:32');
INSERT INTO `kosmiczni_raport` VALUES ('14', '(Walka) Walka pomiêdzy Rockis, a SonGoku [Przegrana].', '14', 'Wed.Aug.14 02:32');
INSERT INTO `kosmiczni_raport` VALUES ('16', '(Walka) Walka pomiêdzy Rockis, a SonGoku [Przegrana].', '14', 'Thu.Aug.10 10:26');
INSERT INTO `kosmiczni_raport` VALUES ('17', '(Walka) Walka pomiêdzy mafia, a Kenny Goku SSJ.[Wygrana]', '9', 'Thu.Aug.11 11:16');
INSERT INTO `kosmiczni_raport` VALUES ('18', '(Walka) Walka pomiêdzy mafia, a Kenny Goku SSJ [Przegrana].', '25', 'Thu.Aug.11 11:16');
INSERT INTO `kosmiczni_raport` VALUES ('20', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>0</b> jednostek mocy.', '2', '');
INSERT INTO `kosmiczni_raport` VALUES ('21', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>0</b> jednostek mocy.', '5', '');
INSERT INTO `kosmiczni_raport` VALUES ('22', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>0</b> jednostek mocy.', '25', '');
INSERT INTO `kosmiczni_raport` VALUES ('24', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ [Przegrana].', '4', 'Thu.Aug.12 12:55');
INSERT INTO `kosmiczni_raport` VALUES ('25', '(Walka) Walka pomiêdzy mafia, a Salamander.[Wygrana]', '9', 'Thu.Aug.13 01:19');
INSERT INTO `kosmiczni_raport` VALUES ('26', '(Walka) Walka pomiêdzy mafia, a Salamander [Przegrana].', '19', 'Thu.Aug.13 01:19');
INSERT INTO `kosmiczni_raport` VALUES ('27', '(Walka) Walka pomiêdzy mafia, a Ronaldo.[Wygrana]', '9', 'Thu.Aug.13 01:19');
INSERT INTO `kosmiczni_raport` VALUES ('28', '(Walka) Walka pomiêdzy mafia, a Ronaldo [Przegrana].', '21', 'Thu.Aug.13 01:19');
INSERT INTO `kosmiczni_raport` VALUES ('29', '(Walka) Walka pomiêdzy mafia, a Undertaker Kaio.[Wygrana]', '9', 'Thu.Aug.13 01:25');
INSERT INTO `kosmiczni_raport` VALUES ('30', '(Walka) Walka pomiêdzy mafia, a Undertaker Kaio [Przegrana].', '3', 'Thu.Aug.13 01:25');
INSERT INTO `kosmiczni_raport` VALUES ('31', '(Walka) Walka pomiêdzy mafia, a Gervid.[Wygrana]', '9', 'Thu.Aug.13 01:39');
INSERT INTO `kosmiczni_raport` VALUES ('32', '(Walka) Walka pomiêdzy mafia, a Gervid [Przegrana].', '11', 'Thu.Aug.13 01:39');
INSERT INTO `kosmiczni_raport` VALUES ('33', '(Walka) Walka pomiêdzy mafia, a Aang.[Wygrana]', '9', 'Thu.Aug.14 02:37');
INSERT INTO `kosmiczni_raport` VALUES ('34', '(Walka) Walka pomiêdzy mafia, a Aang [Przegrana].', '15', 'Thu.Aug.14 02:37');
INSERT INTO `kosmiczni_raport` VALUES ('35', '(Walka) Walka pomiêdzy mafia, a Aang.[Wygrana]', '9', 'Thu.Aug.15 03:22');
INSERT INTO `kosmiczni_raport` VALUES ('36', '(Walka) Walka pomiêdzy mafia, a Aang [Przegrana].', '15', 'Thu.Aug.15 03:22');
INSERT INTO `kosmiczni_raport` VALUES ('37', '(Walka) Walka pomiêdzy megis, a Cristina.[Wygrana]', '2', 'Thu.Aug.16 04:54');
INSERT INTO `kosmiczni_raport` VALUES ('38', '(Walka) Walka pomiêdzy megis, a Cristina [Przegrana].', '20', 'Thu.Aug.16 04:54');
INSERT INTO `kosmiczni_raport` VALUES ('39', '(Walka) Walka pomiêdzy megis, a Ronaldo.[Wygrana]', '2', 'Thu.Aug.16 04:57');
INSERT INTO `kosmiczni_raport` VALUES ('40', '(Walka) Walka pomiêdzy megis, a Ronaldo [Przegrana].', '21', 'Thu.Aug.16 04:57');
INSERT INTO `kosmiczni_raport` VALUES ('41', '(Walka) Walka pomiêdzy megis, a Salamander.[Wygrana]', '2', 'Thu.Aug.16 04:57');
INSERT INTO `kosmiczni_raport` VALUES ('42', '(Walka) Walka pomiêdzy megis, a Salamander [Przegrana].', '19', 'Thu.Aug.16 04:57');
INSERT INTO `kosmiczni_raport` VALUES ('43', '(Walka) Walka pomiêdzy megis, a Undertaker Kaio.[Wygrana]', '2', 'Thu.Aug.17 05:00');
INSERT INTO `kosmiczni_raport` VALUES ('44', '(Walka) Walka pomiêdzy megis, a Undertaker Kaio [Przegrana].', '3', 'Thu.Aug.17 05:00');
INSERT INTO `kosmiczni_raport` VALUES ('45', '(Walka) Walka pomiêdzy megis, a Crazy Gogeta.[Wygrana]', '2', 'Fri.Aug.15 03:31');
INSERT INTO `kosmiczni_raport` VALUES ('46', '(Walka) Walka pomiêdzy megis, a Crazy Gogeta [Przegrana].', '10', 'Fri.Aug.15 03:31');
INSERT INTO `kosmiczni_raport` VALUES ('47', '(Walka) Walka pomiêdzy megis, a Undertaker Kaio.[Wygrana]', '2', 'Fri.Aug.15 03:41');
INSERT INTO `kosmiczni_raport` VALUES ('48', '(Walka) Walka pomiêdzy megis, a Undertaker Kaio [Przegrana].', '3', 'Fri.Aug.15 03:41');
INSERT INTO `kosmiczni_raport` VALUES ('49', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>2</b> jednostek mocy.', '1', '');
INSERT INTO `kosmiczni_raport` VALUES ('50', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>1</b> jednostek mocy.', '2', '');
INSERT INTO `kosmiczni_raport` VALUES ('51', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>0</b> jednostek mocy.', '5', '');
INSERT INTO `kosmiczni_raport` VALUES ('52', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>2</b> jednostek mocy.', '9', '');
INSERT INTO `kosmiczni_raport` VALUES ('53', 'Wygrali¶cie wojnê i zdoby³e¶ <b class=bora>0</b> jednostek mocy.', '25', '');
INSERT INTO `kosmiczni_raport` VALUES ('54', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ.[Wygrana]', '1', 'Fri.Dec.09 09:11');
INSERT INTO `kosmiczni_raport` VALUES ('55', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ [Przegrana].', '4', 'Fri.Dec.09 09:11');
INSERT INTO `kosmiczni_raport` VALUES ('56', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ.[Wygrana]', '1', 'Sat.Jan.13 01:33');
INSERT INTO `kosmiczni_raport` VALUES ('57', '(Walka) Walka pomiêdzy Rockis, a Overlord SSJ [Przegrana].', '4', 'Sat.Jan.13 01:33');

-- ----------------------------
-- Table structure for `kosmiczni_smocza_kula`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_smocza_kula`;
CREATE TABLE `kosmiczni_smocza_kula` (
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `map_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_smocza_kula
-- ----------------------------
INSERT INTO `kosmiczni_smocza_kula` VALUES ('9', '3', '7');

-- ----------------------------
-- Table structure for `kosmiczni_stroj`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_stroj`;
CREATE TABLE `kosmiczni_stroj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `poziom` varchar(50) NOT NULL DEFAULT 'Normal',
  `moc` int(11) NOT NULL DEFAULT '0',
  `ulepszony` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_stroj
-- ----------------------------
INSERT INTO `kosmiczni_stroj` VALUES ('1', '2', 'Normal', '2', '0');
INSERT INTO `kosmiczni_stroj` VALUES ('2', '4', 'Super Unique', '18', '4');
INSERT INTO `kosmiczni_stroj` VALUES ('3', '9', 'Rare', '6', '2');
INSERT INTO `kosmiczni_stroj` VALUES ('4', '1', 'Mystic', '50', '28');
INSERT INTO `kosmiczni_stroj` VALUES ('5', '25', 'Mystic', '31', '9');

-- ----------------------------
-- Table structure for `kosmiczni_symbol`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_symbol`;
CREATE TABLE `kosmiczni_symbol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `poziom` varchar(50) NOT NULL DEFAULT 'Normal',
  `typ` tinyint(1) NOT NULL DEFAULT '1',
  `moc` smallint(3) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ulepszony` smallint(2) NOT NULL DEFAULT '0',
  `sprzedajacy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_symbol
-- ----------------------------
INSERT INTO `kosmiczni_symbol` VALUES ('12', '1', 'Legendary', '2', '8', '1', '22', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('2', '7', 'Mystic', '3', '11', '1', '2', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('1', '6', 'Super Elite', '2', '5', '1', '1', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('27', '4', 'Unique', '1', '6', '1', '2', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('165', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('31', '8', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('32', '24', 'Rare', '3', '2', '1', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('33', '8', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('34', '8', 'Elite', '3', '4', '1', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('37', '0', 'Elite', '3', '4', '0', '0', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('51', '0', 'Rare', '5', '2', '0', '4', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('65', '0', 'Super Rare', '5', '3', '0', '0', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('63', '0', 'Elite', '1', '4', '0', '0', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('62', '0', 'Elite', '2', '4', '0', '1', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('70', '0', 'Rare', '2', '2', '0', '1', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('168', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('91', '2', 'Mystic', '5', '11', '1', '6', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('102', '0', 'Elite', '5', '4', '0', '0', '24');
INSERT INTO `kosmiczni_symbol` VALUES ('105', '25', 'Super Legendary', '1', '9', '1', '16', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('143', '0', 'Elite', '5', '4', '0', '0', '9');
INSERT INTO `kosmiczni_symbol` VALUES ('125', '5', 'Elite', '2', '4', '1', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('167', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('136', '9', 'Elite', '2', '4', '1', '2', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('166', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('164', '9', 'Super Rare', '3', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('163', '9', 'Super Rare', '1', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('162', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('161', '9', 'Normal', '3', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('160', '9', 'Normal', '3', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('159', '9', 'Normal', '3', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('158', '9', 'Elite', '2', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('157', '9', 'Rare', '1', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('169', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('170', '9', 'Super Rare', '3', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('171', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('172', '9', 'Super Rare', '5', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('173', '9', 'Elite', '1', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('174', '9', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('176', '9', 'Super Rare', '5', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('177', '9', 'Normal', '5', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('178', '9', 'Rare', '4', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('179', '9', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('180', '9', 'Super Rare', '3', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('184', '9', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('195', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('186', '9', 'Normal', '5', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('187', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('188', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('189', '9', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('190', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('191', '9', 'Super Rare', '3', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('192', '9', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('194', '9', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('196', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('197', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('206', '9', 'Elite', '4', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('199', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('200', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('201', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('202', '9', 'Super Rare', '2', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('205', '9', 'Elite', '3', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('204', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('207', '9', 'Rare', '1', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('208', '9', 'Elite', '2', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('209', '9', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('210', '9', 'Super Rare', '2', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('211', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('212', '9', 'Rare', '4', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('213', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('214', '9', 'Normal', '3', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('215', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('216', '9', 'Super Rare', '1', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('217', '9', 'Super Rare', '2', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('218', '9', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('219', '9', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('220', '9', 'Elite', '2', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('221', '9', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('222', '9', 'Rare', '2', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('223', '9', 'Super Rare', '4', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('231', '9', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('232', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('233', '9', 'Super Rare', '3', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('234', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('235', '9', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('236', '9', 'Normal', '3', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('237', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('239', '9', 'Super Rare', '1', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('240', '9', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('241', '9', 'Rare', '3', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('242', '9', 'Normal', '4', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('243', '9', 'Elite', '2', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('244', '9', 'Rare', '4', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('245', '9', 'Super Rare', '2', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('246', '9', 'Super Rare', '1', '3', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('247', '9', 'Elite', '1', '4', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('248', '9', 'Normal', '5', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('249', '9', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('250', '9', 'Normal', '5', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('251', '9', 'Normal', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('252', '24', 'Rare', '5', '2', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('253', '24', 'Normal', '2', '1', '0', '0', '0');
INSERT INTO `kosmiczni_symbol` VALUES ('265', '0', 'Elite', '2', '4', '0', '0', '2');
INSERT INTO `kosmiczni_symbol` VALUES ('264', '0', 'Elite', '3', '4', '0', '0', '2');

-- ----------------------------
-- Table structure for `kosmiczni_system`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_system`;
CREATE TABLE `kosmiczni_system` (
  `nazwa` varchar(100) NOT NULL,
  `moc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_system
-- ----------------------------
INSERT INTO `kosmiczni_system` VALUES ('exp', '1');
INSERT INTO `kosmiczni_system` VALUES ('trening', '1');
INSERT INTO `kosmiczni_system` VALUES ('training_time', '0');
INSERT INTO `kosmiczni_system` VALUES ('mob_respawn', '1357998075');
INSERT INTO `kosmiczni_system` VALUES ('mob_respawn2', '8');
INSERT INTO `kosmiczni_system` VALUES ('moc_moba', '10');
INSERT INTO `kosmiczni_system` VALUES ('drop_moc', '1');
INSERT INTO `kosmiczni_system` VALUES ('drop_moc_ile', '1');
INSERT INTO `kosmiczni_system` VALUES ('czas_resetu', '1358001196');
INSERT INTO `kosmiczni_system` VALUES ('czas_wiedzy', '300');
INSERT INTO `kosmiczni_system` VALUES ('moc_wiedzy', '10');
INSERT INTO `kosmiczni_system` VALUES ('drop_kp', '1');
INSERT INTO `kosmiczni_system` VALUES ('drop_symbol', '5');
INSERT INTO `kosmiczni_system` VALUES ('drop_ms', '1');
INSERT INTO `kosmiczni_system` VALUES ('ulepszenie_ms', '60');
INSERT INTO `kosmiczni_system` VALUES ('czas_wyprawy', '2100');
INSERT INTO `kosmiczni_system` VALUES ('drop_wyprawy', '80');
INSERT INTO `kosmiczni_system` VALUES ('exp_wyprawy', '1');
INSERT INTO `kosmiczni_system` VALUES ('szansa_wyprawy', '75');
INSERT INTO `kosmiczni_system` VALUES ('drop_psk', '1');
INSERT INTO `kosmiczni_system` VALUES ('respawn_sk', '432000');
INSERT INTO `kosmiczni_system` VALUES ('respawn_sk_time', '1347117714');
INSERT INTO `kosmiczni_system` VALUES ('power_sk', '85');
INSERT INTO `kosmiczni_system` VALUES ('czas_podrozy', '300');
INSERT INTO `kosmiczni_system` VALUES ('turniej', '1346848923');
INSERT INTO `kosmiczni_system` VALUES ('min_clan_lvl', '30');

-- ----------------------------
-- Table structure for `kosmiczni_technika`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_technika`;
CREATE TABLE `kosmiczni_technika` (
  `user_id` int(11) NOT NULL,
  `t1` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_technika
-- ----------------------------
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('1', '1');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('2', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('3', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('4', '1');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('5', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('6', '1');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('7', '1');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('8', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('9', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('10', '0');
INSERT INTO `kosmiczni_technika` VALUES ('14', '1');
INSERT INTO `kosmiczni_technika` VALUES ('15', '1');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('24', '0');
INSERT INTO `kosmiczni_technika` VALUES ('25', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');
INSERT INTO `kosmiczni_technika` VALUES ('0', '0');

-- ----------------------------
-- Table structure for `kosmiczni_turniej`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_turniej`;
CREATE TABLE `kosmiczni_turniej` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `kategoria` int(11) NOT NULL DEFAULT '1',
  `runda` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_turniej
-- ----------------------------
INSERT INTO `kosmiczni_turniej` VALUES ('1', '2', '1', '0');

-- ----------------------------
-- Table structure for `kosmiczni_umiejetnosci`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_umiejetnosci`;
CREATE TABLE `kosmiczni_umiejetnosci` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `up1` smallint(2) NOT NULL DEFAULT '0',
  `ua1` smallint(2) NOT NULL DEFAULT '0',
  `ua1_slot` smallint(3) NOT NULL DEFAULT '0',
  `up2` smallint(2) NOT NULL DEFAULT '0',
  `up3` smallint(2) NOT NULL DEFAULT '0',
  `up4` smallint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_umiejetnosci
-- ----------------------------
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('1', '0', '2', '100', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('2', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('3', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('4', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('5', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('6', '0', '0', '0', '0', '0', '1');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('7', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('8', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('9', '4', '3', '0', '3', '4', '3');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('10', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('15', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('24', '3', '1', '0', '4', '3', '1');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('25', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_umiejetnosci` VALUES ('0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `kosmiczni_user`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_user`;
CREATE TABLE `kosmiczni_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `haslo` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `zalogowany` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_user
-- ----------------------------
INSERT INTO `kosmiczni_user` VALUES ('1', 'rockis', '814a74b21ddbbf86de584309ae3bb2d3', 'admin@genox.cba.pl', '1');
INSERT INTO `kosmiczni_user` VALUES ('2', 'megis', '984eca7a9c99c4bf7f0fe6d4bc43653d', 'msnoch5@o2.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('3', 'Ogorek', '814a74b21ddbbf86de584309ae3bb2d3', 'michal4022184@o2.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('4', 'over-lord', '814a74b21ddbbf86de584309ae3bb2d3', 'mistrzchaosu31@wp.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('5', 'crusher', '814a74b21ddbbf86de584309ae3bb2d3', 'crushX@op.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('6', 'thunder', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('7', 'mafia1976', 'ec645b03764139b9109a5d84416ffa77', 'mafia1976@o2.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('8', 'thunder2', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('9', 'thunder3', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('10', 'thunder4', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('11', 'thunder5', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('12', 'thunder6', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('13', 'thunder7', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('14', 'thunder8', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('15', 'thunder9', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('16', 'thunder10', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('17', 'thunder11', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('18', 'thunder12', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('19', 'thunder13', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('20', 'thunder14', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('21', 'thunder15', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('22', 'kibelekmocy2', 'f75fc72a8bcba96c8a435ab9b163c003', 'msnoch5@wp.pl', '0');
INSERT INTO `kosmiczni_user` VALUES ('23', 'thunder16', '814a74b21ddbbf86de584309ae3bb2d3', 'aa@aa.pl', '0');

-- ----------------------------
-- Table structure for `kosmiczni_wiedza`
-- ----------------------------
DROP TABLE IF EXISTS `kosmiczni_wiedza`;
CREATE TABLE `kosmiczni_wiedza` (
  `user_id` int(11) NOT NULL,
  `w1` tinyint(1) NOT NULL DEFAULT '0',
  `w2` tinyint(1) NOT NULL DEFAULT '0',
  `w3` tinyint(1) NOT NULL DEFAULT '0',
  `w4` tinyint(1) NOT NULL DEFAULT '0',
  `w5` tinyint(1) NOT NULL DEFAULT '0',
  `w6` tinyint(1) NOT NULL DEFAULT '0',
  `w7` tinyint(1) NOT NULL DEFAULT '0',
  `w8` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kosmiczni_wiedza
-- ----------------------------
INSERT INTO `kosmiczni_wiedza` VALUES ('2', '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('6', '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('4', '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('7', '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('8', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('9', '1', '1', '1', '1', '0', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('24', '1', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `kosmiczni_wiedza` VALUES ('5', '0', '0', '0', '0', '0', '0', '0', '0');
