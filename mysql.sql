INDX( 	 6           (   X  �       o     �  �l         ��     p Z     p�     �~m $� nw�%K��~m $��~m $�        :              P A T R O L ~ 1 . P C X       ��     p Z     p�     �~m $� nw�%K��~m $��~m $�       �              P A T R O L ~ 2 . P C X       ��     � j     p�      m $� nw�%K� m $� m $�       �
              p l a n t f o r e s t l a r g e . p c x      ��     � j     p�      m $� nw�%K� m $� m $�       �              p l a n t f  r e s t s m a l l . p c x      ��     p Z     p�      m $� nw�%K� m $� m $�       �
              P L A N T F ~ 1 . P C X       ��     p Z     p�      m $� nw�%K� m $� m $�       �              P L A N T F ~ 2 . P C X       ��     x f     p�      m $� nw�%K� m $� m $� 0      �&              p r e c i s i o n l a r g e . p c x   ��     x f     p�     0�m $� nw�%K�0�m $�0�m $�       �              p r e c i s i o n s m a l l . p c x   ��     p Z    p�      m $� nw�%K� m $� m $� 0      �&              P R E C I S ~ 1 . P C X       ��     p Z     p�     0�m $� nw�%K�0�m $�0�m $�       �              P R E C I S ~ 2 . P C X       ��     p ^     p�     0�m $� nw�%K�0�m $�0�m $�                      r e c o n l a r g e . p c x   ��     p Z     p�     0�m $� nw�%K�0�m $�0�m $�                      R E C O N L ~ 1 . P C X       ��     p ^     p�     0�m $� nw�%K�0�m $�0�m $�       �             r e c o n s m a l l . p c x   ��     p Z     p�     0�m $� nw�%K�0�m $�0�m $�       �              R E C O N S ~ 1 . P C X       ��     p `     p�     `m $� nw�%K�`m $�`m $�        T              s h a z a m l a r g e . p c x ��     p `     p�     `m $� nw�%K�`m $�`m $�       e              s h a z a m s m a l l . p c x ��     p Z     p�     `m $� nw�%K�`m $�`m $�        T              S H A Z A M ~ 1 . P C X       ��     p Z     p�     `m $  nw�%K�`m $�`m $�       e              S H A Z A M ~ 2 . P C X       �     x d     p�     `m $� nw�%K�`m $�`m $�        �              s k i p t u r n l a r g e . p c x     �     x d     p�     �" m $� nw�%K��" m $��" m $�                     s k i p t u r n s m a l l . p c x     �     p Z     p�     `m $� nw�%K�`m $�`m $�        �              S K I P T U ~ 1 . P C X       �     p Z     p�     �" m $� nw�%K��" m $��" m $�                    S K I P T U ~ 2 . P C X       	�     p `     p�     �!m $� nw�%K��!m $��!m $�        B              u n l o a d l a r g e . p c x 
�     p `     p�     �!m $� nw�%K��!m $��!m $�       �              u n l o a d s m a l l . p c x 	�     p Z     p�     �!m $� nw�%K��!m $��!m $�        B              U N L O A D ~ 1 . P C X       
�     p Z     p�     �!m $� nw�%K��!m $��!m $�       �              U N L O A D ~ 2 . P C X       �     p \     p�      1#m $  ���%K� 1#m $� 1#m $�        �              
w a i t l a r g e . p c x     �     p Z     p�      1#m $� ���%K� 1#m $� 1#m $�        �              W A I T L A ~ 1 . P C X       �     p \     p�      1#m $� ���%K� �;m $� �;m $�       )              
w a i t s m a l l . p c x     �     p Z     p�      1#m $� ���%K� �;m $� �;m $�       )              W A I T S M ~ 1 . P C X       
�     p `     p�      �;m $� ���%K� �;m $� �;m $�                       x t h i n g  a r g e . p c x �     p `     p�      �;m $� ���%K� �;m $� �;m $�                     x t h i n g s m a l l . p c x 
�     p Z     p�      �;m $� ���%K� �;m $� �;m $�                       X T H I N G ~ 1 . P C X       �     p Z     p�      �;m $� ���%K� �;m $� �;m $�                     X T H I N G ~ 2 . P C X                                                                                                                                                                    E utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mapitem`
--

CREATE TABLE IF NOT EXISTS `mapitem` (
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `przedmiot` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob`
--

CREATE TABLE IF NOT EXISTS `mob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'mob/',
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '0',
  `typ` int(11) NOT NULL DEFAULT '0',
  `szerokosc` int(11) NOT NULL DEFAULT '32',
  `dlugosc` int(11) NOT NULL DEFAULT '48',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `zycie_max` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '100',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '120',
  `ckm` int(11) NOT NULL DEFAULT '120',
  `przebicie` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `profesja` tinyint(1) NOT NULL DEFAULT '1',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '1',
  `zrecznosc` int(11) NOT NULL DEFAULT '1',
  `intelekt` int(11) NOT NULL DEFAULT '1',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `unik` smallint(3) NOT NULL DEFAULT '0',
  `blok` smallint(3) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `respawn_time` int(11) NOT NULL DEFAULT '0',
  `respawn` double(20,0) NOT NULL DEFAULT '0',
  `grupa` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `paczka` int(11) NOT NULL DEFAULT '0',
  `paczka2` int(11) NOT NULL DEFAULT '0',
  `zajety_walka` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Zrzut danych tabeli `mob`
--

INSERT INTO `mob` (`id`, `obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`, `zajety_walka`) VALUES
(3, 'mob/krolik.gif', 1, 59, 62, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652501, 0, 0, 0, 0, 1, 0, 0),
(4, 'mob/krolik.gif', 1, 59, 65, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652510, 0, 0, 0, 0, 1, 0, 0),
(5, 'mob/krolik.gif', 1, 50, 60, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652463, 0, 0, 0, 0, 1, 0, 0),
(6, 'mob/krolik.gif', 1, 56, 66, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652478, 0, 0, 0, 0, 1, 0, 0),
(7, 'mob/krolik.gif', 1, 62, 62, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652505, 0, 0, 0, 0, 1, 0, 0),
(8, 'mob/zajac.gif', 1, 40, 93, 'Zajac', 1, 0, 18, 24, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 1, 0, 0),
(9, 'mob/zajac.gif', 1, 59, 93, 'Zajac', 2, 0, 18, 24, 35, 35, 100, 1, 0, 0, 0, 120, 120, 0, 0, 3, 1, 0, 0, 2, 2, 2, 0, 0, 0, 0, 9, 20, 0, 0, 0, 0, 0, 1, 0, 0),
(10, 'mob/pajak.gif', 1, 1, 44, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'mob/pajak.gif', 1, 6, 39, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'mob/pajak.gif', 1, 42, 87, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'mob/pajak.gif', 1, 48, 93, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'mob/pancernik1.gif', 1, 51, 75, 'Mlody Pancernik', 10, 0, 32, 18, 375, 375, 111, 50, 25, 5, 0, 120, 120, 0, 5, 15, 1, 0, 0, 10, 10, 10, 0, 0, 0, 0, 80, 100, 1351325203, 0, 0, 0, 0, 0, 0, 0),
(15, 'mob/pancernik2.gif', 1, 47, 73, 'Mlody Pancernik', 10, 0, 32, 18, 375, 375, 111, 50, 25, 5, 0, 120, 120, 0, 5, 15, 1, 0, 0, 10, 10, 10, 0, 0, 0, 0, 80, 100, 1351325192, 0, 0, 0, 0, 0, 0, 0),
(16, 'mob/pancernik3.gif', 1, 47, 73, 'Pancernik Rogaty', 15, 0, 36, 22, 750, 750, 115, 75, 38, 8, 0, 120, 120, 0, 19, 27, 1, 0, 0, 15, 15, 15, 0, 0, 0, 0, 240, 150, 1351325238, 0, 0, 0, 0, 0, 0, 0),
(17, 'mob/szczur1.gif', 1, 56, 23, 'Szczur Zbozowy', 14, 0, 32, 48, 665, 665, 114, 70, 35, 7, 0, 120, 120, 0, 19, 33, 1, 0, 0, 14, 14, 14, 0, 0, 0, 0, 140, 140, 1359663240, 0, 0, 0, 0, 1, 0, 0),
(18, 'mob/szczur2.gif', 1, 50, 26, 'Szczurzy Krol', 17, 0, 32, 48, 935, 935, 117, 85, 43, 9, 0, 120, 120, 0, 29, 47, 1, 0, 0, 17, 17, 17, 0, 0, 0, 0, 170, 170, 0, 0, 0, 0, 0, 1, 0, 0),
(19, 'mob/szczur3.gif', 1, 56, 25, 'Szczurzy Wojownik', 16, 0, 32, 48, 840, 840, 116, 80, 40, 8, 0, 120, 120, 0, 30, 38, 1, 0, 0, 16, 16, 16, 0, 0, 0, 0, 160, 160, 1359663265, 0, 0, 0, 0, 1, 0, 0),
(20, 'mob/szczur.gif', 1, 53, 26, 'Szczur Piwniczy', 15, 0, 32, 48, 750, 750, 115, 75, 38, 8, 0, 120, 120, 0, 20, 40, 1, 0, 0, 15, 15, 15, 0, 0, 0, 0, 130, 150, 1359663267, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npc`
--

CREATE TABLE IF NOT EXISTS `npc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'npc/',
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `shop` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '0',
  `typ` int(11) NOT NULL DEFAULT '0',
  `procentodsprzedazy` smallint(3) NOT NULL DEFAULT '100',
  `szerokosc` int(11) NOT NULL DEFAULT '32',
  `dlugosc` int(11) NOT NULL DEFAULT '48',
  `cena` mediumint(4) NOT NULL DEFAULT '100',
  `max_sprzedaz` double(20,0) NOT NULL DEFAULT '15000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=14 ;

--
-- Zrzut danych tabeli `npc`
--

INSERT INTO `npc` (`id`, `obrazek`, `mapa`, `x`, `y`, `shop`, `nazwa`, `poziom`, `typ`, `procentodsprzedazy`, `szerokosc`, `dlugosc`, `cena`, `max_sprzedaz`) VALUES
(1, 'npc/makatara.gif', 1, 7, 11, 1, 'Makatara', 18, 0, 100, 32, 48, 75, 5000),
(2, 'npc/niel.gif', 1, 15, 13, 6, 'Niel', 34, 0, 100, 32, 48, 100, 15000),
(3, 'npc/teleporter.gif', 1, 11, 16, 0, 'Zakon Planu Astralnego', 50, 0, 100, 27, 47, 100, 15000),
(4, 'npc/bard.gif', 1, 25, 12, 0, 'Bard Grant', 37, 0, 100, 32, 48, 100, 15000),
(5, 'npc/obwolywacz.gif', 1, 24, 14, 0, 'Obwolywacz', 28, 0, 100, 48, 48, 100, 15000),
(6, 'npc/garus.gif', 1, 25, 32, 7, 'Garus Tyrrak', 100, 0, 0, 36, 48, 140, 0),
(7, 'npc/psorkajarenia.gif', 1, 32, 36, 10, 'Psorka Jarenia', 43, 0, 100, 32, 48, 100, 15000),
(8, 'npc/roan.gif', 1, 19, 39, 2, 'Roan', 15, 0, 75, 32, 48, 95, 20000),
(9, 'npc/huslin.gif', 1, 5, 79, 3, 'Huslin', 56, 0, 90, 32, 48, 80, 40000),
(11, 'npc/straznik.gif', 1, 21, 11, 5, 'Straznik', 40, 0, 0, 32, 48, 85, 0),
(12, 'npc/straznik.gif', 1, 18, 11, 0, 'Straznik', 40, 0, 0, 32, 48, 85, 0),
(13, 'npc/straznik.gif', 1, 36, 57, 0, 'Straznik', 40, 0, 0, 32, 48, 85, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paczka_przedmiot`
--

CREATE TABLE IF NOT EXISTS `paczka_przedmiot` (
  `paczka_id` int(11) NOT NULL,
  `przedmiot_id` int(11) NOT NULL DEFAULT '0',
  `szansa` int(11) NOT NULL DEFAULT '1000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `paczka_przedmiot`
--

INSERT INTO `paczka_przedmiot` (`paczka_id`, `przedmiot_id`, `szansa`) VALUES
(1, 1, 1000);
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac`
--

CREATE TABLE IF NOT EXISTS `postac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '1',
  `zycie` int(11) NOT NULL DEFAULT '40',
  `zycie_max` int(11) NOT NULL DEFAULT '20',
  `zloto` double(21,0) NOT NULL DEFAULT '0',
  `exp` double(60,0) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '4',
  `zrecznosc` int(11) NOT NULL DEFAULT '3',
  `intelekt` int(11) NOT NULL DEFAULT '3',
  `obrazenia_min` int(11) NOT NULL DEFAULT '0',
  `obrazenia_max` int(11) NOT NULL DEFAULT '2',
  `mapa` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '35',
  `y` int(11) NOT NULL DEFAULT '37',
  `sa` int(11) NOT NULL DEFAULT '100',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `ph` int(11) NOT NULL DEFAULT '0',
  `sl` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '120',
  `ckm` int(11) NOT NULL DEFAULT '120',
  `profesja` varchar(50) COLLATE utf8_polish_ci NOT NULL DEFAULT 'none',
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'avatar/m_bd28.gif',
  `respawn` double(20,0) NOT NULL DEFAULT '0',
  `wybrana_mapa` int(11) NOT NULL DEFAULT '1',
  `wybrane_x` int(11) NOT NULL DEFAULT '35',
  `wybrane_y` int(11) NOT NULL DEFAULT '37',
  `zalogowany` tinyint(1) NOT NULL DEFAULT '0',
  `zablokowany_chat` double(25,0) NOT NULL DEFAULT '0',
  `ban` double(20,0) NOT NULL DEFAULT '0',
  `um` int(11) NOT NULL DEFAULT '0',
  `grupa` int(11) NOT NULL DEFAULT '0',
  `pvp` tinyint(1) NOT NULL DEFAULT '0',
  `zajety_walka` int(1) NOT NULL DEFAULT '0',
  `speedfight` tinyint(1) NOT NULL DEFAULT '1',
  `ranga` tinyint(1) NOT NULL DEFAULT '0',
  `lockpmessage` tinyint(1) NOT NULL DEFAULT '0',
  `lockifriend` tinyint(1) NOT NULL DEFAULT '0',
  `lockigroup` tinyint(1) NOT NULL DEFAULT '0',
  `locksitem` tinyint(1) NOT NULL DEFAULT '0',
  `wyczerpanie` mediumint(4) NOT NULL DEFAULT '180',
  `tw` double(20,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_loot`
--

CREATE TABLE IF NOT EXISTS `przedmiot_loot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `wartosc_kupna` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `przedmiot_loot`
--

INSERT INTO `przedmiot_loot` (`id`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zalozony`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, `wartosc_kupna`, `obnizac`, `obnizacm`, `obnizsa`, `zycie_za_sile`, `pelne_leczenie`, `opis`, `mana`, `energia`) VALUES
(1, 'Mieso', 'normal', 'Konsupcyjne', 'przedmiot/mieso.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 7, 0, 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_postac`
--

CREATE TABLE IF NOT EXISTS `przedmiot_postac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postac` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_sklep`
--

CREATE TABLE IF NOT EXISTS `przedmiot_sklep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sklep` int(11) NOT NULL DEFAULT '0',
  `poz_x` int(11) NOT NULL DEFAULT '0',
  `poz_y` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `wartosc_kupna` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  `sl` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=200 ;

--
-- Zrzut danych tabeli `przedmiot_sklep`
--

INSERT INTO `przedmiot_sklep` (`id`, `sklep`, `poz_x`, `poz_y`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zalozony`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, `wartosc_kupna`, `obnizac`, `obnizacm`, `obnizsa`, `zycie_za_sile`, `pelne_leczenie`, `opis`, `mana`, `energia`, `sl`) VALUES
(1, 1, 39, 7, 'Mniejszy Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura2.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 44, 0, 0, 0, 0, 0, '', 0, 0, 0),
(2, 1, 7, 7, 'Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura1.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 74, 0, 0, 0, 0, 0, '', 0, 0, 0),
(3, 1, 7, 39, 'Mocny Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura3.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 210, 0, 0, 0, 0, 0, '', 0, 0, 0),
(4, 2, 7, 7, 'Skorzana Czapka', '', 'Helm', 'przedmiot/cap/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '', 0, 0, 0),
(5, 2, 39, 7, 'Skorzany Helm', '', 'Helm', 'przedmiot/cap/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(6, 2, 71, 7, 'Wzmocniony Skorzany Helm', '', 'Helm', 'przedmiot/cap/3.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, '', 0, 0, 0),
(7, 2, 7, 39, 'Sztylet', '', 'BronJednoreczna', 'przedmiot/lhand/bj1.gif', 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, '', 0, 0, 0),
(8, 2, 39, 39, 'Krotki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj2.gif', 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 18, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, '', 0, 0, 0),
(9, 2, 71, 39, 'Dlugi Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj3.gif', 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 31, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(10, 2, 103, 39, 'Szeroki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj4.gif', 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 35, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 862, 0, 0, 0, 0, 0, '', 0, 0, 0),
(11, 2, 135, 39, 'Topor', '', 'BronJednoreczna', 'przedmiot/lhand/topor1.gif', 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 44, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, '', 0, 0, 0),
(12, 2, 7, 71, 'Krotki Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk1.gif', 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 13, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, '', 0, 0, 0),
(13, 2, 39, 71, 'Krotki Refleksyjny Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 11, 0, 0, 37, 45, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(14, 2, 7, 103, 'Lekka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/1.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, '', 0, 0, 0),
(15, 2, 39, 103, 'Ciezka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/2.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, '', 0, 0, 0),
(16, 2, 7, 135, 'Puklerz', '', 'Tarcza', 'przedmiot/rhand/tarcza1.gif', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0, '', 0, 0, 0),
(17, 2, 39, 135, 'Pancerny Puklerz', '', 'Tarcza', 'przedmiot/rhand/tarcza2.gif', 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, '', 0, 0, 0),
(18, 2, 71, 135, 'Drewniana Tarcza', '', 'Tarcza', 'przedmiot/rhand/tarcza3.gif', 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 14, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 382, 0, 0, 0, 0, 0, '', 0, 0, 0),
(19, 3, 7, 7, 'Proca', '', 'BronDystansowa', 'przedmiot/lhand/proca.gif', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 4, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, '', 0, 0, 0),
(20, 3, 39, 7, 'Krotki Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk1.gif', 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 13, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, '', 0, 0, 0),
(21, 3, 71, 7, 'Krotki Refleksyjny Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 11, 0, 0, 37, 45, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(22, 3, 103, 7, 'Lekka Kusza', '', 'BronDystansowa', 'przedmiot/lhand/kusza1.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 30, 36, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 21, 0, 0, 0, 1722, 0, 0, 0, 0, 0, '', 0, 0, 0),
(23, 3, 135, 7, 'Dlugi Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk3.gif', 15, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 57, 70, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 3618, 0, 0, 0, 0, 0, '', 0, 0, 0),
(24, 3, 167, 7, 'Kusza Ciezka', '', 'BronDystansowa', 'przedmiot/lhand/kusza2.gif', 18, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 56, 68, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 41, 0, 0, 0, 5086, 0, 0, 0, 0, 0, '', 0, 0, 0),
(25, 3, 199, 7, 'Dlugi Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk4.gif', 22, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 88, 107, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 7428, 0, 0, 0, 0, 0, '', 0, 0, 0),
(26, 3, 231, 7, 'Cisowy Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk5.gif', 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 15, 0, 0, 116, 142, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11772, 0, 0, 0, 0, 0, '', 0, 0, 0),
(27, 3, 7, 39, 'Solidny Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk6.gif', 35, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 121, 148, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 12, 88, 0, 0, 0, 18996, 0, 0, 0, 0, 0, '', 0, 0, 0),
(28, 3, 39, 71, 'Lepsze Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala1.gif', 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 3, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 40, 5, 0, 0, 0, 0, '', 0, 0, 0),
(29, 3, 7, 71, 'Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala1.gif', 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 18, 1, 0, 0, 0, 0, '', 0, 0, 0),
(30, 3, 71, 71, 'Czerwone Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 7, 7, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 94, 10, 0, 0, 0, 0, '', 0, 0, 0),
(31, 3, 103, 71, 'Mocne Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala3.gif', 15, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 11, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 116, 15, 0, 0, 0, 0, '', 0, 0, 0),
(32, 3, 135, 71, 'Wzmocnione Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala4.gif', 25, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 19, 19, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 828, 25, 0, 0, 0, 0, '', 0, 0, 0),
(33, 3, 167, 71, 'Swiszczace Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala5.gif', 30, 0, 0, 0, 1, 1, 0, 0, 0, 0, 16, 0, 0, 23, 23, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 814, 30, 0, 0, 0, 0, '', 0, 0, 0),
(34, 3, 199, 71, 'Zatrute Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala6.gif', 40, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 200, 0, 0, 2008, 40, 0, 18, 0, 0, '', 0, 0, 0),
(35, 3, 231, 71, 'Niebieskie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala7.gif', 50, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 44, 44, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 2562, 50, 0, 0, 0, 0, '', 0, 0, 0),
(36, 3, 7, 103, 'Cieciwa', '', 'Neutralne', 'przedmiot/neu/cieciwa1.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(37, 3, 39, 103, 'Jedwabna Cieciwa', '', 'Neutralne', 'przedmiot/neu/cieciwa2.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(38, 4, 7, 7, 'Pierscien Lowcy', '', 'Pierscien', 'przedmiot/pie/pierscien1.gif', 15, 0, 0, 0, 0, 0, 0, 0, 0, 89, 12, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1478, 0, 0, 0, 0, 0, '', 0, 0, 0),
(39, 1, 7, 71, 'Mikstura Makatary', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura4.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 500, 0, 2266, 0, 0, 0, 0, 0, '', 0, 0, 0),
(40, 5, 7, 7, 'Amulet Boga Wojny', '', 'Naszyjnik', 'przedmiot/nas/1.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2418, 0, 0, 0, 0, 0, '', 0, 0, 0),
(41, 6, 7, 7, 'Czapka Lesnego Elfa', '', 'Helm', 'przedmiot/cap/4.gif', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 480, 0, 0, 0, 0, 0, '', 0, 0, 0),
(42, 7, 7, 7, 'Pierscien Zrecznosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 1, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 104, 104, 0, 0, 2, 6, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135200, 0, 0, 0, 0, 0, '', 0, 0, 0),
(43, 7, 39, 7, 'Pierscien Sily Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 1, 0, 0, 0, 0, 0, 0, 0, 1097, 58, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128800, 0, 0, 0, 0, 0, '', 0, 0, 0),
(44, 7, 71, 7, 'Pierscien Szybkosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 0, 1, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 3, 12, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122800, 0, 0, 0, 0, 0, '', 0, 0, 0),
(45, 7, 103, 7, 'Pierscien Madrosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 104, 54, 0, 2, 6, 6, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(46, 2, 7, 167, 'Rapier', '', 'BronJednoreczna', 'przedmiot/lhand/bj5.gif', 18, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 75, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3076, 0, 0, 0, 0, 0, '', 0, 0, 0),
(47, 8, 7, 7, 'Pierscien Szczurolapa', '', 'Pierscien', 'przedmiot/pie/szczurolap.gif', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 722, 0, 0, 0, 0, 0, '', 0, 0, 0),
(48, 8, 7, 39, 'Miecz Poltorareczny', '', 'BronPoltorareczna', 'przedmiot/lhand/bp1.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 77, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2188, 0, 0, 0, 0, 0, '', 0, 0, 0),
(49, 8, 7, 71, 'Nszyjnik Uniku', '', 'Naszyjnik', 'przedmiot/nas/2.gif', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(50, 9, 7, 7, 'Skorzana Czapka', '', 'Helm', 'przedmiot/cap/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '', 0, 0, 0),
(51, 9, 39, 7, 'Skorzany Helm', '', 'Helm', 'przedmiot/cap/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(52, 9, 71, 7, 'Wzmocniony Skorzany Helm', '', 'Helm', 'przedmiot/cap/3.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, '', 0, 0, 0),
(53, 9, 103, 7, 'Szyszak', '', 'Helm', 'przedmiot/cap/szyszak.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, '', 0, 0, 0),
(54, 9, 135, 7, 'Helm Otwarty', '', 'Helm', 'przedmiot/cap/5.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(55, 9, 7, 39, 'Skorzane Buty', '', 'Buty', 'przedmiot/but/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, '', 0, 0, 0),
(56, 9, 39, 39, 'Wzmocnione Buty', '', 'Buty', 'przedmiot/but/2.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, '', 0, 0, 0),
(57, 9, 7, 71, 'Lekka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/1.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, '', 0, 0, 0),
(58, 9, 39, 71, 'Ciezka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/2.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, '', 0, 0, 0),
(59, 9, 71, 71, 'Lekka Cwierkowana Zbroja', '', 'Zbroja', 'przedmiot/armor/3.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, 0, 0, 0, 0, 0, '', 0, 0, 0),
(60, 9, 103, 71, 'Ciezka Cwierkowana Zbroja', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 0, 0, 0, 0, '', 0, 0, 0),
(61, 9, 7, 103, 'Zbroja Cwierkowana Lowcy', '', 'Zbroja', 'przedmiot/armor/3.gif', 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, '', 0, 0, 0),
(62, 9, 39, 103, 'Cwierkowana Zbroja Zrecznosci', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 5, 0, 0, 1, 1, 1, 0, 0, 0, 0, 2, 14, 10, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 0, 0, 0, 0, 0, '', 0, 0, 0),
(63, 9, 71, 103, 'Ciezka Cwierkowa Zbroja Lowcy', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 6, 0, 0, 1, 1, 1, 0, 0, 0, 0, 2, 16, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 446, 0, 0, 0, 0, 0, '', 0, 0, 0),
(64, 9, 135, 71, 'Lekka Kolczuga', '', 'Zbroja', 'przedmiot/armor/4.gif', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 822, 0, 0, 0, 0, 0, '', 0, 0, 0),
(65, 9, 103, 103, 'Stara Kolczuga Lowcy', '', 'Zbroja', 'przedmiot/armor/zniszczona.gif', 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 810, 0, 0, 0, 0, 0, '', 0, 0, 0),
(66, 9, 135, 103, 'Uszkodzona Zbroja Paskowa Lowcy', '', 'Zbroja', 'przedmiot/armor/uszkodzona.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1910, 0, 0, 0, 0, 0, '', 0, 0, 0),
(67, 9, 167, 103, 'Iridianowa Kolczuga', '', 'Zbroja', 'przedmiot/armor/niebieska-kolczuga.gif', 11, 0, 0, 1, 1, 0, 0, 0, 0, 0, 4, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(68, 9, 199, 103, 'Kolczuga Tancerza', '', 'Zbroja', 'przedmiot/armor/tancek-kolczuga.gif', 15, 0, 0, 1, 1, 0, 0, 0, 0, 0, 5, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3798, 0, 0, 0, 0, 0, '', 0, 0, 0),
(69, 9, 231, 103, 'Zbroja Paskowa Lowcy', '', 'Zbroja', 'przedmiot/armor/5.gif', 20, 0, 0, 0, 1, 1, 0, 0, 0, 0, 7, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4342, 0, 0, 0, 0, 0, '', 0, 0, 0),
(70, 9, 7, 295, 'Oslona Ostrzy', '', 'Zbroja', 'przedmiot/armor/6.gif', 19, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5914, 0, 0, 0, 0, 0, '', 0, 0, 0),
(71, 9, 7, 135, 'Zbroja Pierscieniowa', '', 'Zbroja', 'przedmiot/armor/7.gif', 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 772, 0, 0, 0, 1, 0, '', 0, 0, 0),
(72, 9, 39, 135, 'Kolczuga', '', 'Zbroja', 'przedmiot/armor/kolczuga.gif', 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 952, 0, 0, 0, 1, 0, '', 0, 0, 0),
(73, 9, 71, 135, 'Zbroja Paskowa', '', 'Zbroja', 'przedmiot/armor/5.gif', 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 32, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 1, 0, '', 0, 0, 0),
(74, 9, 103, 135, 'Zbroja Luskowa', '', 'Zbroja', 'przedmiot/armor/8.gif', 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 43, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1852, 0, 0, 0, 1, 0, '', 0, 0, 0),
(75, 9, 135, 135, 'Zbroja Segmentowa', '', 'Zbroja', 'przedmiot/armor/5-2.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 50, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3618, 0, 0, 0, 2, 0, '', 0, 0, 0),
(76, 9, 7, 167, 'Sztylet', '', 'BronJednoreczna', 'przedmiot/lhand/bj1.gif', 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, '', 0, 0, 0),
(77, 9, 39, 167, 'Krotki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj2.gif', 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 18, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, '', 0, 0, 0),
(78, 9, 103, 167, 'Dlugi Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj3.gif', 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 31, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(79, 9, 135, 167, 'Szeroki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj4.gif', 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 35, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 862, 0, 0, 0, 0, 0, '', 0, 0, 0),
(80, 9, 199, 167, 'Topor', '', 'BronJednoreczna', 'przedmiot/lhand/topor1.gif', 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 44, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, '', 0, 0, 0),
(81, 9, 71, 167, 'Bicz', '', 'BronJednoreczna', 'przedmiot/lhand/bicz.gif', 6, 1, 1, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 19, 23, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 758, 0, 0, 0, 0, 0, '', 0, 0, 0),
(82, 9, 167, 167, 'Szpada', '', 'BronJednoreczna', 'przedmiot/lhand/szpada.gif', 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 0, 32, 40, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1642, 0, 0, 0, 0, 0, '', 0, 0, 0),
(83, 9, 231, 167, 'Mongersztern', '', 'BronJednoreczna', 'przedmiot/lhand/mongersztern.gif', 23, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 99, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7332, 0, 0, 0, 0, 0, '', 0, 0, 0),
(84, 9, 39, 295, 'Cep Bojowy', '', 'BronJednoreczna', 'przedmiot/lhand/cep.gif', 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 109, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8596, 0, 0, 0, 0, 0, '', 0, 0, 0),
(85, 9, 71, 199, 'Miecz Poltorareczny', '', 'BronPoltorareczna', 'przedmiot/lhand/bp1.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 77, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2188, 0, 0, 0, 0, 0, '', 0, 0, 0),
(86, 9, 7, 199, 'Mlot Bojowy', '', 'BronPoltorareczna', 'przedmiot/lhand/bp2.gif', 12, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 60, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1450, 0, 0, 0, 0, 0, '', 0, 0, 0),
(87, 9, 39, 199, 'Wlocznia', '', 'BronPoltorareczna', 'przedmiot/lhand/bp3.gif', 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 65, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1680, 0, 0, 0, 0, 0, '', 0, 0, 0),
(88, 9, 7, 231, 'Halabarda', '', 'BronDwureczna', 'przedmiot/lhand/bd1.gif', 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 119, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5106, 0, 0, 0, 0, 0, '', 0, 0, 0),
(89, 9, 39, 231, 'Miecz Dwureczny', '', 'BronDwureczna', 'przedmiot/lhand/bd2.gif', 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 141, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6738, 0, 0, 0, 0, 0, '', 0, 0, 0),
(90, 9, 71, 231, 'Dwureczny Topor', '', 'BronDwureczna', 'przedmiot/lhand/bd3.gif', 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 148, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7332, 0, 0, 0, 0, 0, '', 0, 0, 0),
(91, 9, 103, 231, 'Bojowy Mlot Dwureczny', '', 'BronDwureczna', 'przedmiot/lhand/bd4.gif', 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134, 163, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8596, 0, 0, 0, 0, 0, '', 0, 0, 0),
(128, 10, 7, 7, 'Skorzane Rekawice', '', 'Rekawice', 'przedmiot/rek/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(129, 10, 39, 7, 'Wzmocnione Rekawice', '', 'Rekawice', 'przedmiot/rek/3.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172, 0, 0, 0, 0, 0, '', 0, 0, 0),
(130, 10, 71, 7, 'Rekawice Jezdzieckie', '', 'Rekawice', 'przedmiot/rek/4.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(131, 10, 103, 7, 'Rekawice Kolcze', '', 'Rekawice', 'przedmiot/rek/5.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(132, 10, 135, 7, 'Rekawice Rycerskie', '', 'Rekawice', 'przedmiot/rek/6.gif', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 654, 0, 0, 0, 0, 0, '', 0, 0, 0),
(133, 10, 167, 7, 'Zlociste Rekawice', '', 'Rekawice', 'przedmiot/rek/7.gif', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 980, 0, 0, 0, 0, 0, '', 0, 0, 0),
(134, 10, 199, 7, 'Rekawice Szarego Niedzwiedzia', '', 'Rekawice', 'przedmiot/rek/8.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 15, 15, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2298, 0, 0, 0, 0, 0, '', 0, 0, 0),
(135, 10, 231, 7, 'Zatrute Rekawice Lowcy', '', 'Rekawice', 'przedmiot/rek/9.gif', 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3798, 0, 0, 0, 0, 0, '', 0, 0, 0),
(136, 2, 7, 199, 'Nóż do Oprawiania Skóry', '', 'BronPomocnicza', 'przedmiot/rhand/pom1.gif', 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 14, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 0, 0, 0, 0, 0, '', 0, 0, 0),
(137, 2, 39, 199, 'Prosty Nóż', '', 'BronPomocnicza', 'przedmiot/rhand/pom2.gif', 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 23, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(138, 2, 71, 199, 'Miecz Pomocniczy', '', 'BronPomocnicza', 'przedmiot/rhand/pom3.gif', 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 35, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1740, 0, 0, 0, 0, 0, '', 0, 0, 0),
(139, 2, 103, 199, 'Prosty Korbacz Pomocniczy', '', 'BronPomocnicza', 'przedmiot/rhand/pom4.gif', 18, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 54, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4614, 0, 0, 0, 0, 0, '', 0, 0, 0),
(156, 10, 7, 135, 'Czapka Kartografa', '', 'Helm', 'przedmiot/cap/czapka-kartografa.gif', 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 12, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1340, 0, 0, 0, 0, 0, '', 0, 0, 0),
(157, 10, 7, 263, 'Dobre Skórzane Buty', '', 'Buty', 'przedmiot/but/4.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 18, 18, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1149, 0, 0, 0, 0, 0, '', 0, 0, 0),
(459, 7, 7, 71, 'Kamien Teleportujacy do Pieczary Pajeczyn', 'normal', 'Zwoj', 'przedmiot/tep/pieczarapajeczyn.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(460, 7, 39, 71, 'Kamien Teleportujacy do Podziemnego Przejscia', 'normal', 'Zwoj', 'przedmiot/tep/podziemneprzejscie.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(461, 7, 71, 71, 'Kamien Teleportujacy do Tygrysiej Granicy', 'normal', 'Zwoj', 'przedmiot/tep/tygrysiagranica.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 51, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(462, 7, 103, 71, 'Kamien Teleportujacy do Zburzonej Twierdzy', 'normal', 'Zwoj', 'przedmiot/tep/zburzonatwierdza.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 41, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(774, 7, 7, 135, 'Stroj Zielonowlosego Chlopaka', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/male_p1.png', 0, 0, 25),
(775, 7, 39, 135, 'Stroj Mroznego Czarodzieja', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/m_magmrozu.gif', 0, 0, 25),
(776, 7, 71, 135, 'Stroj Westalki', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/female_p1.png', 0, 0, 25),
(777, 7, 103, 135, 'Stroj Bandytki', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/female_p2.png', 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyjaciele`
--

CREATE TABLE IF NOT EXISTS `przyjaciele` (
  `postac` int(11) NOT NULL DEFAULT '0',
  `przyjaciel` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `funkcja` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `czas` double(20,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `system`
--

INSERT INTO `system` (`funkcja`, `czas`) VALUES
('czysc_czat', 0),
('wyczerpanie', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejetnosci`
--

CREATE TABLE IF NOT EXISTS `umiejetnosci` (
  `postac_id` int(11) NOT NULL DEFAULT '0',
  `u1` smallint(2) NOT NULL DEFAULT '0',
  `u2` smallint(2) NOT NULL DEFAULT '0',
  `u3` smallint(2) NOT NULL DEFAULT '0',
  `u4` smallint(2) NOT NULL DEFAULT '0',
  `u5` smallint(2) NOT NULL DEFAULT '0',
  `u6` smallint(2) NOT NULL DEFAULT '0',
  `u7` smallint(2) NOT NULL DEFAULT '0',
  `u8` smallint(2) NOT NULL DEFAULT '0',
  `u9` smallint(2) NOT NULL DEFAULT '0',
  `u10` smallint(2) NOT NULL DEFAULT '0',
  `u11` smallint(2) NOT NULL DEFAULT '0',
  `u12` smallint(2) NOT NULL DEFAULT '0',
  `u13` smallint(2) NOT NULL DEFAULT '0',
  `u14` smallint(2) NOT NULL DEFAULT '0',
  `u15` smallint(2) NOT NULL DEFAULT '0',
  `u16` smallint(2) NOT NULL DEFAULT '0',
  `u17` smallint(2) NOT NULL DEFAULT '0',
  `u18` smallint(2) NOT NULL DEFAULT '0',
  `u19` smallint(2) NOT NULL DEFAULT '0',
  `u20` smallint(2) NOT NULL DEFAULT '0',
  `u21` smallint(2) NOT NULL DEFAULT '0',
  `u22` smallint(2) NOT NULL DEFAULT '0',
  `u23` smallint(2) NOT NULL DEFAULT '0',
  `u24` smallint(2) NOT NULL DEFAULT '0',
  `u25` smallint(2) NOT NULL DEFAULT '0',
  `u26` smallint(2) NOT NULL DEFAULT '0',
  `u27` smallint(2) NOT NULL DEFAULT '0',
  `u28` smallint(2) NOT NULL DEFAULT '0',
  `u29` smallint(2) NOT NULL DEFAULT '0',
  `u30` smallint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `walkaturowa`
--

CREATE TABLE IF NOT EXISTS `walkaturowa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player1_id` int(11) DEFAULT '0',
  `player1_pos` int(11) DEFAULT '0',
  `player1_sa` int(11) DEFAULT '0',
  `mob1_id` int(11) DEFAULT '0',
  `mob1_pos` int(11) DEFAULT '0',
  `mob1_sa` int(11) DEFAULT '0',
  `mob2_id` int(11) DEFAULT '0',
  `mob2_pos` int(11) DEFAULT '0',
  `mob2_sa` int(11) DEFAULT '0',
  `tura` int(11) unsigned DEFAULT '1',
  `endturn` double(20,0) DEFAULT '0',
  `log` text COLLATE utf8_polish_ci,
  `mob3_id` int(11) DEFAULT '0',
  `mob3_pos` int(11) DEFAULT '0',
  `mob3_sa` int(11) DEFAULT '0',
  `mob4_id` int(11) DEFAULT '0',
  `mob4_pos` int(11) DEFAULT '0',
  `mob4_sa` int(11) DEFAULT '0',
  `mob5_id` int(11) DEFAULT '0',
  `mob5_pos` int(11) DEFAULT '0',
  `mob5_sa` int(11) DEFAULT '0',
  `mob6_id` int(11) DEFAULT '0',
  `mob6_pos` int(11) DEFAULT '0',
  `mob6_sa` int(11) DEFAULT '0',
  `mob7_id` int(11) DEFAULT '0',
  `mob7_pos` int(11) DEFAULT '0',
  `mob7_sa` int(11) DEFAULT '0',
  `mob8_id` int(11) DEFAULT '0',
  `mob8_pos` int(11) DEFAULT '0',
  `mob8_sa` int(11) DEFAULT '0',
  `mob9_id` int(11) DEFAULT '0',
  `mob9_pos` int(11) DEFAULT '0',
  `mob9_sa` int(11) DEFAULT '0',
  `mob10_id` int(11) DEFAULT '0',
  `mob10_pos` int(11) DEFAULT '0',
  `mob10_sa` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapro_grupa`
--

CREATE TABLE IF NOT EXISTS `zapro_grupa` (
  `grupa` int(11) NOT NULL DEFAULT '0',
  `postac_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapro_przyjaciel`
--

CREATE TABLE IF NOT EXISTS `zapro_przyjaciel` (
  `postac_id` int(11) NOT NULL DEFAULT '0',
  `postac2_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
--
-- Baza danych: `devmargo`
--
CREATE DATABASE `devmargo` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `devmargo`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `aukcje`
--

CREATE TABLE IF NOT EXISTS `aukcje` (
  `item_id` int(11) DEFAULT '0',
  `cena` int(11) DEFAULT '0',
  `sprzedawca` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blokadaprzejscia`
--

CREATE TABLE IF NOT EXISTS `blokadaprzejscia` (
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `blokadaprzejscia`
--

INSERT INTO `blokadaprzejscia` (`mapa`, `x`, `y`) VALUES
(1, 4, 11),
(1, 5, 11),
(1, 3, 11),
(1, 3, 12),
(1, 3, 10),
(1, 6, 10),
(1, 7, 10),
(1, 8, 11),
(1, 9, 10),
(1, 10, 10),
(1, 11, 10),
(1, 12, 10),
(1, 13, 10),
(1, 14, 10),
(1, 15, 10),
(1, 16, 10),
(1, 17, 10),
(1, 18, 10),
(1, 19, 10),
(1, 20, 10),
(1, 21, 10),
(1, 22, 10),
(1, 23, 11),
(1, 24, 10),
(1, 25, 10),
(1, 26, 10),
(1, 27, 10),
(1, 28, 11),
(1, 29, 8),
(1, 29, 9),
(1, 3, 13),
(1, 3, 14),
(1, 43, 83),
(1, 44, 83),
(1, 47, 80),
(1, 48, 80),
(1, 45, 80),
(1, 46, 80);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `kto` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `tresc` text COLLATE utf8_polish_ci NOT NULL,
  `mapa_id` int(11) NOT NULL DEFAULT '0',
  `postac_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupa`
--

CREATE TABLE IF NOT EXISTS `grupa` (
  `grupa_id` int(11) NOT NULL DEFAULT '0',
  `postac_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mapa`
--

CREATE TABLE IF NOT EXISTS `mapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(75) COLLATE utf8_polish_ci NOT NULL,
  `pvp` tinyint(1) NOT NULL DEFAULT '0',
  `obrazek` varchar(250) COLLATE utf8_polish_ci NOT NULL DEFAULT 'mapy/',
  `maks_x` int(11) NOT NULL DEFAULT '10',
  `maks_y` int(11) NOT NULL DEFAULT '10',
  `dead_map` int(11) NOT NULL DEFAULT '1',
  `dead_x` int(11) NOT NULL DEFAULT '35',
  `dead_y` int(11) NOT NULL DEFAULT '35',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `mapa`
--

INSERT INTO `mapa` (`id`, `nazwa`, `pvp`, `obrazek`, `maks_x`, `maks_y`, `dead_map`, `dead_x`, `dead_y`) VALUES
(1, 'Ithan', 0, 'mapy/ithan3.png', 63, 95, 1, 35, 35);
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mapa_przenies`
--

CREATE TABLE IF NOT EXISTS `mapa_przenies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `do_mapa` int(11) NOT NULL DEFAULT '0',
  `do_x` int(11) NOT NULL DEFAULT '0',
  `do_y` int(11) NOT NULL DEFAULT '0',
  `klucz` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mapitem`
--

CREATE TABLE IF NOT EXISTS `mapitem` (
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `przedmiot` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob`
--

CREATE TABLE IF NOT EXISTS `mob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'mob/',
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '0',
  `typ` int(11) NOT NULL DEFAULT '0',
  `szerokosc` int(11) NOT NULL DEFAULT '32',
  `dlugosc` int(11) NOT NULL DEFAULT '48',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `zycie_max` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '100',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '120',
  `ckm` int(11) NOT NULL DEFAULT '120',
  `przebicie` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `profesja` tinyint(1) NOT NULL DEFAULT '1',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '1',
  `zrecznosc` int(11) NOT NULL DEFAULT '1',
  `intelekt` int(11) NOT NULL DEFAULT '1',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `unik` smallint(3) NOT NULL DEFAULT '0',
  `blok` smallint(3) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `respawn_time` int(11) NOT NULL DEFAULT '0',
  `respawn` double(20,0) NOT NULL DEFAULT '0',
  `grupa` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `paczka` int(11) NOT NULL DEFAULT '0',
  `paczka2` int(11) NOT NULL DEFAULT '0',
  `zajety_walka` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Zrzut danych tabeli `mob`
--

INSERT INTO `mob` (`id`, `obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`, `zajety_walka`) VALUES
(3, 'mob/krolik.gif', 1, 59, 62, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652501, 0, 0, 0, 0, 1, 0, 0),
(4, 'mob/krolik.gif', 1, 59, 65, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652510, 0, 0, 0, 0, 1, 0, 0),
(5, 'mob/krolik.gif', 1, 50, 60, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652463, 0, 0, 0, 0, 1, 0, 0),
(6, 'mob/krolik.gif', 1, 56, 66, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652478, 0, 0, 0, 0, 1, 0, 0),
(7, 'mob/krolik.gif', 1, 62, 62, 'Krolik', 1, 0, 24, 16, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 1359652505, 0, 0, 0, 0, 1, 0, 0),
(8, 'mob/zajac.gif', 1, 40, 93, 'Zajac', 1, 0, 18, 24, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 1, 0, 0),
(9, 'mob/zajac.gif', 1, 59, 93, 'Zajac', 2, 0, 18, 24, 35, 35, 100, 1, 0, 0, 0, 120, 120, 0, 0, 3, 1, 0, 0, 2, 2, 2, 0, 0, 0, 0, 9, 20, 0, 0, 0, 0, 0, 1, 0, 0),
(10, 'mob/pajak.gif', 1, 1, 44, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'mob/pajak.gif', 1, 6, 39, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'mob/pajak.gif', 1, 42, 87, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'mob/pajak.gif', 1, 48, 93, 'Pajak', 1, 0, 32, 32, 15, 15, 100, 0, 0, 0, 0, 120, 120, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'mob/pancernik1.gif', 1, 51, 75, 'Mlody Pancernik', 10, 0, 32, 18, 375, 375, 111, 50, 25, 5, 0, 120, 120, 0, 5, 15, 1, 0, 0, 10, 10, 10, 0, 0, 0, 0, 80, 100, 1351325203, 0, 0, 0, 0, 0, 0, 0),
(15, 'mob/pancernik2.gif', 1, 47, 73, 'Mlody Pancernik', 10, 0, 32, 18, 375, 375, 111, 50, 25, 5, 0, 120, 120, 0, 5, 15, 1, 0, 0, 10, 10, 10, 0, 0, 0, 0, 80, 100, 1351325192, 0, 0, 0, 0, 0, 0, 0),
(16, 'mob/pancernik3.gif', 1, 47, 73, 'Pancernik Rogaty', 15, 0, 36, 22, 750, 750, 115, 75, 38, 8, 0, 120, 120, 0, 19, 27, 1, 0, 0, 15, 15, 15, 0, 0, 0, 0, 240, 150, 1351325238, 0, 0, 0, 0, 0, 0, 0),
(17, 'mob/szczur1.gif', 1, 56, 23, 'Szczur Zbozowy', 14, 0, 32, 48, 665, 665, 114, 70, 35, 7, 0, 120, 120, 0, 19, 33, 1, 0, 0, 14, 14, 14, 0, 0, 0, 0, 140, 140, 1359663240, 0, 0, 0, 0, 1, 0, 0),
(18, 'mob/szczur2.gif', 1, 50, 26, 'Szczurzy Krol', 17, 0, 32, 48, 935, 935, 117, 85, 43, 9, 0, 120, 120, 0, 29, 47, 1, 0, 0, 17, 17, 17, 0, 0, 0, 0, 170, 170, 0, 0, 0, 0, 0, 1, 0, 0),
(19, 'mob/szczur3.gif', 1, 56, 25, 'Szczurzy Wojownik', 16, 0, 32, 48, 840, 840, 116, 80, 40, 8, 0, 120, 120, 0, 30, 38, 1, 0, 0, 16, 16, 16, 0, 0, 0, 0, 160, 160, 1359663265, 0, 0, 0, 0, 1, 0, 0),
(20, 'mob/szczur.gif', 1, 53, 26, 'Szczur Piwniczy', 15, 0, 32, 48, 750, 750, 115, 75, 38, 8, 0, 120, 120, 0, 20, 40, 1, 0, 0, 15, 15, 15, 0, 0, 0, 0, 130, 150, 1359663267, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npc`
--

CREATE TABLE IF NOT EXISTS `npc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'npc/',
  `mapa` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `shop` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '0',
  `typ` int(11) NOT NULL DEFAULT '0',
  `procentodsprzedazy` smallint(3) NOT NULL DEFAULT '100',
  `szerokosc` int(11) NOT NULL DEFAULT '32',
  `dlugosc` int(11) NOT NULL DEFAULT '48',
  `cena` mediumint(4) NOT NULL DEFAULT '100',
  `max_sprzedaz` double(20,0) NOT NULL DEFAULT '15000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=14 ;

--
-- Zrzut danych tabeli `npc`
--

INSERT INTO `npc` (`id`, `obrazek`, `mapa`, `x`, `y`, `shop`, `nazwa`, `poziom`, `typ`, `procentodsprzedazy`, `szerokosc`, `dlugosc`, `cena`, `max_sprzedaz`) VALUES
(1, 'npc/makatara.gif', 1, 7, 11, 1, 'Makatara', 18, 0, 100, 32, 48, 75, 5000),
(2, 'npc/niel.gif', 1, 15, 13, 6, 'Niel', 34, 0, 100, 32, 48, 100, 15000),
(3, 'npc/teleporter.gif', 1, 11, 16, 0, 'Zakon Planu Astralnego', 50, 0, 100, 27, 47, 100, 15000),
(4, 'npc/bard.gif', 1, 25, 12, 0, 'Bard Grant', 37, 0, 100, 32, 48, 100, 15000),
(5, 'npc/obwolywacz.gif', 1, 24, 14, 0, 'Obwolywacz', 28, 0, 100, 48, 48, 100, 15000),
(6, 'npc/garus.gif', 1, 25, 32, 7, 'Garus Tyrrak', 100, 0, 0, 36, 48, 140, 0),
(7, 'npc/psorkajarenia.gif', 1, 32, 36, 10, 'Psorka Jarenia', 43, 0, 100, 32, 48, 100, 15000),
(8, 'npc/roan.gif', 1, 19, 39, 2, 'Roan', 15, 0, 75, 32, 48, 95, 20000),
(9, 'npc/huslin.gif', 1, 5, 79, 3, 'Huslin', 56, 0, 90, 32, 48, 80, 40000),
(11, 'npc/straznik.gif', 1, 21, 11, 5, 'Straznik', 40, 0, 0, 32, 48, 85, 0),
(12, 'npc/straznik.gif', 1, 18, 11, 0, 'Straznik', 40, 0, 0, 32, 48, 85, 0),
(13, 'npc/straznik.gif', 1, 36, 57, 0, 'Straznik', 40, 0, 0, 32, 48, 85, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paczka_przedmiot`
--

CREATE TABLE IF NOT EXISTS `paczka_przedmiot` (
  `paczka_id` int(11) NOT NULL,
  `przedmiot_id` int(11) NOT NULL DEFAULT '0',
  `szansa` int(11) NOT NULL DEFAULT '1000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `paczka_przedmiot`
--

INSERT INTO `paczka_przedmiot` (`paczka_id`, `przedmiot_id`, `szansa`) VALUES
(1, 1, 1000);
-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `postac`
--

CREATE TABLE IF NOT EXISTS `postac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `poziom` int(11) NOT NULL DEFAULT '1',
  `zycie` int(11) NOT NULL DEFAULT '40',
  `zycie_max` int(11) NOT NULL DEFAULT '20',
  `zloto` double(21,0) NOT NULL DEFAULT '0',
  `exp` double(60,0) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '4',
  `zrecznosc` int(11) NOT NULL DEFAULT '3',
  `intelekt` int(11) NOT NULL DEFAULT '3',
  `obrazenia_min` int(11) NOT NULL DEFAULT '0',
  `obrazenia_max` int(11) NOT NULL DEFAULT '2',
  `mapa` int(11) NOT NULL DEFAULT '1',
  `x` int(11) NOT NULL DEFAULT '35',
  `y` int(11) NOT NULL DEFAULT '37',
  `sa` int(11) NOT NULL DEFAULT '100',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `ph` int(11) NOT NULL DEFAULT '0',
  `sl` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '120',
  `ckm` int(11) NOT NULL DEFAULT '120',
  `profesja` varchar(50) COLLATE utf8_polish_ci NOT NULL DEFAULT 'none',
  `obrazek` varchar(500) COLLATE utf8_polish_ci NOT NULL DEFAULT 'avatar/m_bd28.gif',
  `respawn` double(20,0) NOT NULL DEFAULT '0',
  `wybrana_mapa` int(11) NOT NULL DEFAULT '1',
  `wybrane_x` int(11) NOT NULL DEFAULT '35',
  `wybrane_y` int(11) NOT NULL DEFAULT '37',
  `zalogowany` tinyint(1) NOT NULL DEFAULT '0',
  `zablokowany_chat` double(25,0) NOT NULL DEFAULT '0',
  `ban` double(20,0) NOT NULL DEFAULT '0',
  `um` int(11) NOT NULL DEFAULT '0',
  `grupa` int(11) NOT NULL DEFAULT '0',
  `pvp` tinyint(1) NOT NULL DEFAULT '0',
  `zajety_walka` int(1) NOT NULL DEFAULT '0',
  `speedfight` tinyint(1) NOT NULL DEFAULT '1',
  `ranga` tinyint(1) NOT NULL DEFAULT '0',
  `lockpmessage` tinyint(1) NOT NULL DEFAULT '0',
  `lockifriend` tinyint(1) NOT NULL DEFAULT '0',
  `lockigroup` tinyint(1) NOT NULL DEFAULT '0',
  `locksitem` tinyint(1) NOT NULL DEFAULT '0',
  `wyczerpanie` mediumint(4) NOT NULL DEFAULT '180',
  `tw` double(20,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_loot`
--

CREATE TABLE IF NOT EXISTS `przedmiot_loot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `wartosc_kupna` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `przedmiot_loot`
--

INSERT INTO `przedmiot_loot` (`id`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zalozony`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, `wartosc_kupna`, `obnizac`, `obnizacm`, `obnizsa`, `zycie_za_sile`, `pelne_leczenie`, `opis`, `mana`, `energia`) VALUES
(1, 'Mieso', 'normal', 'Konsupcyjne', 'przedmiot/mieso.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 7, 0, 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_postac`
--

CREATE TABLE IF NOT EXISTS `przedmiot_postac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postac` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_sklep`
--

CREATE TABLE IF NOT EXISTS `przedmiot_sklep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sklep` int(11) NOT NULL DEFAULT '0',
  `poz_x` int(11) NOT NULL DEFAULT '0',
  `poz_y` int(11) NOT NULL DEFAULT '0',
  `nazwa` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `klasa` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `obrazek` varchar(200) COLLATE utf8_polish_ci NOT NULL DEFAULT 'przedmiot/',
  `wym_poziom` int(11) NOT NULL DEFAULT '0',
  `prof1` tinyint(1) NOT NULL DEFAULT '0',
  `prof2` tinyint(1) NOT NULL DEFAULT '0',
  `prof3` tinyint(1) NOT NULL DEFAULT '0',
  `prof4` tinyint(1) NOT NULL DEFAULT '0',
  `prof5` tinyint(1) NOT NULL DEFAULT '0',
  `prof6` tinyint(1) NOT NULL DEFAULT '0',
  `wartosc_sprzedazy` int(11) NOT NULL DEFAULT '0',
  `zalozony` tinyint(1) NOT NULL DEFAULT '0',
  `zycie` int(11) NOT NULL DEFAULT '0',
  `sa` int(11) NOT NULL DEFAULT '0',
  `ac` int(11) NOT NULL DEFAULT '0',
  `acm` int(11) NOT NULL DEFAULT '0',
  `obr_min` int(11) NOT NULL DEFAULT '0',
  `obr_max` int(11) NOT NULL DEFAULT '0',
  `mnoznik` int(3) NOT NULL DEFAULT '0',
  `mnoznik_typ` tinyint(1) NOT NULL DEFAULT '0',
  `sila` int(11) NOT NULL DEFAULT '0',
  `zrecznosc` int(11) NOT NULL DEFAULT '0',
  `intelekt` int(11) NOT NULL DEFAULT '0',
  `wszystkie_cechy` int(11) NOT NULL DEFAULT '0',
  `ck` int(11) NOT NULL DEFAULT '0',
  `ckf` int(11) NOT NULL DEFAULT '0',
  `ckm` int(11) NOT NULL DEFAULT '0',
  `acp` int(11) NOT NULL DEFAULT '0',
  `absorbcja` int(11) NOT NULL DEFAULT '0',
  `mabsorbcja` int(11) NOT NULL DEFAULT '0',
  `leczenie` int(11) NOT NULL DEFAULT '0',
  `unik` int(11) NOT NULL DEFAULT '0',
  `blok` int(11) NOT NULL DEFAULT '0',
  `obr_mag` int(11) NOT NULL DEFAULT '0',
  `przebicie` smallint(3) NOT NULL DEFAULT '0',
  `obr_poi` int(11) NOT NULL DEFAULT '0',
  `glebokarana` smallint(3) NOT NULL DEFAULT '0',
  `atak_gr` int(11) NOT NULL DEFAULT '0',
  `ilosc` int(5) NOT NULL DEFAULT '0',
  `mikstura_leczenie` int(11) NOT NULL DEFAULT '0',
  `kontra` smallint(3) NOT NULL DEFAULT '0',
  `wartosc_kupna` int(11) NOT NULL DEFAULT '0',
  `obnizac` int(11) NOT NULL DEFAULT '0',
  `obnizacm` int(11) NOT NULL DEFAULT '0',
  `obnizsa` int(11) NOT NULL DEFAULT '0',
  `zycie_za_sile` int(11) NOT NULL DEFAULT '0',
  `pelne_leczenie` int(11) NOT NULL DEFAULT '0',
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `mana` int(11) NOT NULL DEFAULT '0',
  `energia` int(11) NOT NULL DEFAULT '0',
  `sl` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=200 ;

--
-- Zrzut danych tabeli `przedmiot_sklep`
--

INSERT INTO `przedmiot_sklep` (`id`, `sklep`, `poz_x`, `poz_y`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zalozony`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, `wartosc_kupna`, `obnizac`, `obnizacm`, `obnizsa`, `zycie_za_sile`, `pelne_leczenie`, `opis`, `mana`, `energia`, `sl`) VALUES
(1, 1, 39, 7, 'Mniejszy Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura2.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 44, 0, 0, 0, 0, 0, '', 0, 0, 0),
(2, 1, 7, 7, 'Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura1.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 74, 0, 0, 0, 0, 0, '', 0, 0, 0),
(3, 1, 7, 39, 'Mocny Eliksir Zdrowia', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura3.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 210, 0, 0, 0, 0, 0, '', 0, 0, 0),
(4, 2, 7, 7, 'Skorzana Czapka', '', 'Helm', 'przedmiot/cap/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '', 0, 0, 0),
(5, 2, 39, 7, 'Skorzany Helm', '', 'Helm', 'przedmiot/cap/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(6, 2, 71, 7, 'Wzmocniony Skorzany Helm', '', 'Helm', 'przedmiot/cap/3.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, '', 0, 0, 0),
(7, 2, 7, 39, 'Sztylet', '', 'BronJednoreczna', 'przedmiot/lhand/bj1.gif', 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, '', 0, 0, 0),
(8, 2, 39, 39, 'Krotki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj2.gif', 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 18, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, '', 0, 0, 0),
(9, 2, 71, 39, 'Dlugi Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj3.gif', 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 31, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(10, 2, 103, 39, 'Szeroki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj4.gif', 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 35, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 862, 0, 0, 0, 0, 0, '', 0, 0, 0),
(11, 2, 135, 39, 'Topor', '', 'BronJednoreczna', 'przedmiot/lhand/topor1.gif', 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 44, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, '', 0, 0, 0),
(12, 2, 7, 71, 'Krotki Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk1.gif', 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 13, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, '', 0, 0, 0),
(13, 2, 39, 71, 'Krotki Refleksyjny Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 11, 0, 0, 37, 45, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(14, 2, 7, 103, 'Lekka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/1.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, '', 0, 0, 0),
(15, 2, 39, 103, 'Ciezka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/2.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, '', 0, 0, 0),
(16, 2, 7, 135, 'Puklerz', '', 'Tarcza', 'przedmiot/rhand/tarcza1.gif', 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 124, 0, 0, 0, 0, 0, '', 0, 0, 0),
(17, 2, 39, 135, 'Pancerny Puklerz', '', 'Tarcza', 'przedmiot/rhand/tarcza2.gif', 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 296, 0, 0, 0, 0, 0, '', 0, 0, 0),
(18, 2, 71, 135, 'Drewniana Tarcza', '', 'Tarcza', 'przedmiot/rhand/tarcza3.gif', 6, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 14, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 382, 0, 0, 0, 0, 0, '', 0, 0, 0),
(19, 3, 7, 7, 'Proca', '', 'BronDystansowa', 'przedmiot/lhand/proca.gif', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 4, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 0, 0, 0, 0, '', 0, 0, 0),
(20, 3, 39, 7, 'Krotki Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk1.gif', 3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 13, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144, 0, 0, 0, 0, 0, '', 0, 0, 0),
(21, 3, 71, 7, 'Krotki Refleksyjny Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 11, 0, 0, 37, 45, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(22, 3, 103, 7, 'Lekka Kusza', '', 'BronDystansowa', 'przedmiot/lhand/kusza1.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 30, 36, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 21, 0, 0, 0, 1722, 0, 0, 0, 0, 0, '', 0, 0, 0),
(23, 3, 135, 7, 'Dlugi Luk', '', 'BronDystansowa', 'przedmiot/lhand/luk3.gif', 15, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 57, 70, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 3618, 0, 0, 0, 0, 0, '', 0, 0, 0),
(24, 3, 167, 7, 'Kusza Ciezka', '', 'BronDystansowa', 'przedmiot/lhand/kusza2.gif', 18, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 56, 68, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 41, 0, 0, 0, 5086, 0, 0, 0, 0, 0, '', 0, 0, 0),
(25, 3, 199, 7, 'Dlugi Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk4.gif', 22, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 88, 107, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 7428, 0, 0, 0, 0, 0, '', 0, 0, 0),
(26, 3, 231, 7, 'Cisowy Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk5.gif', 28, 0, 0, 0, 1, 1, 0, 0, 0, 0, 15, 0, 0, 116, 142, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11772, 0, 0, 0, 0, 0, '', 0, 0, 0),
(27, 3, 7, 39, 'Solidny Luk Refleksyjny', '', 'BronDystansowa', 'przedmiot/lhand/luk6.gif', 35, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 121, 148, 120, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 12, 88, 0, 0, 0, 18996, 0, 0, 0, 0, 0, '', 0, 0, 0),
(28, 3, 39, 71, 'Lepsze Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala1.gif', 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 3, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 40, 5, 0, 0, 0, 0, '', 0, 0, 0),
(29, 3, 7, 71, 'Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala1.gif', 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 18, 1, 0, 0, 0, 0, '', 0, 0, 0),
(30, 3, 71, 71, 'Czerwone Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala2.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 7, 7, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 94, 10, 0, 0, 0, 0, '', 0, 0, 0),
(31, 3, 103, 71, 'Mocne Krotkie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala3.gif', 15, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 11, 11, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 116, 15, 0, 0, 0, 0, '', 0, 0, 0),
(32, 3, 135, 71, 'Wzmocnione Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala4.gif', 25, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 19, 19, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 828, 25, 0, 0, 0, 0, '', 0, 0, 0),
(33, 3, 167, 71, 'Swiszczace Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala5.gif', 30, 0, 0, 0, 1, 1, 0, 0, 0, 0, 16, 0, 0, 23, 23, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, 814, 30, 0, 0, 0, 0, '', 0, 0, 0),
(34, 3, 199, 71, 'Zatrute Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala6.gif', 40, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 0, 200, 0, 0, 2008, 40, 0, 18, 0, 0, '', 0, 0, 0),
(35, 3, 231, 71, 'Niebieskie Strzaly', '', 'Strzaly', 'przedmiot/rhand/strzala7.gif', 50, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 44, 44, 100, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 250, 0, 0, 2562, 50, 0, 0, 0, 0, '', 0, 0, 0),
(36, 3, 7, 103, 'Cieciwa', '', 'Neutralne', 'przedmiot/neu/cieciwa1.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(37, 3, 39, 103, 'Jedwabna Cieciwa', '', 'Neutralne', 'przedmiot/neu/cieciwa2.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(38, 4, 7, 7, 'Pierscien Lowcy', '', 'Pierscien', 'przedmiot/pie/pierscien1.gif', 15, 0, 0, 0, 0, 0, 0, 0, 0, 89, 12, 0, 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1478, 0, 0, 0, 0, 0, '', 0, 0, 0),
(39, 1, 7, 71, 'Mikstura Makatary', 'normal', 'Konsupcyjne', 'przedmiot/pot/mikstura4.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 500, 0, 2266, 0, 0, 0, 0, 0, '', 0, 0, 0),
(40, 5, 7, 7, 'Amulet Boga Wojny', '', 'Naszyjnik', 'przedmiot/nas/1.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2418, 0, 0, 0, 0, 0, '', 0, 0, 0),
(41, 6, 7, 7, 'Czapka Lesnego Elfa', '', 'Helm', 'przedmiot/cap/4.gif', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 480, 0, 0, 0, 0, 0, '', 0, 0, 0),
(42, 7, 7, 7, 'Pierscien Zrecznosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 1, 0, 0, 0, 0, 0, 0, 83, 0, 0, 0, 0, 0, 0, 104, 104, 0, 0, 2, 6, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135200, 0, 0, 0, 0, 0, '', 0, 0, 0),
(43, 7, 39, 7, 'Pierscien Sily Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 1, 0, 0, 0, 0, 0, 0, 0, 1097, 58, 0, 0, 0, 0, 0, 0, 154, 0, 0, 0, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128800, 0, 0, 0, 0, 0, '', 0, 0, 0),
(44, 7, 71, 7, 'Pierscien Szybkosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 0, 1, 0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 204, 0, 0, 3, 12, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122800, 0, 0, 0, 0, 0, '', 0, 0, 0),
(45, 7, 103, 7, 'Pierscien Madrosci Valii', 'heroic', 'Pierscien', 'przedmiot/pie/2.gif', 100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 58, 0, 0, 0, 0, 0, 0, 0, 104, 54, 0, 2, 6, 6, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142000, 0, 0, 0, 0, 0, '', 0, 0, 0),
(46, 2, 7, 167, 'Rapier', '', 'BronJednoreczna', 'przedmiot/lhand/bj5.gif', 18, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 75, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3076, 0, 0, 0, 0, 0, '', 0, 0, 0),
(47, 8, 7, 7, 'Pierscien Szczurolapa', '', 'Pierscien', 'przedmiot/pie/szczurolap.gif', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 722, 0, 0, 0, 0, 0, '', 0, 0, 0),
(48, 8, 7, 39, 'Miecz Poltorareczny', '', 'BronPoltorareczna', 'przedmiot/lhand/bp1.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 77, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2188, 0, 0, 0, 0, 0, '', 0, 0, 0),
(49, 8, 7, 71, 'Nszyjnik Uniku', '', 'Naszyjnik', 'przedmiot/nas/2.gif', 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(50, 9, 7, 7, 'Skorzana Czapka', '', 'Helm', 'przedmiot/cap/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, '', 0, 0, 0),
(51, 9, 39, 7, 'Skorzany Helm', '', 'Helm', 'przedmiot/cap/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(52, 9, 71, 7, 'Wzmocniony Skorzany Helm', '', 'Helm', 'przedmiot/cap/3.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, '', 0, 0, 0),
(53, 9, 103, 7, 'Szyszak', '', 'Helm', 'przedmiot/cap/szyszak.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0, 0, 0, '', 0, 0, 0),
(54, 9, 135, 7, 'Helm Otwarty', '', 'Helm', 'przedmiot/cap/5.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(55, 9, 7, 39, 'Skorzane Buty', '', 'Buty', 'przedmiot/but/1.gif', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, '', 0, 0, 0),
(56, 9, 39, 39, 'Wzmocnione Buty', '', 'Buty', 'przedmiot/but/2.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 166, 0, 0, 0, 0, 0, '', 0, 0, 0),
(57, 9, 7, 71, 'Lekka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/1.gif', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, 0, '', 0, 0, 0),
(58, 9, 39, 71, 'Ciezka Skorzana Zbroja', '', 'Zbroja', 'przedmiot/armor/2.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206, 0, 0, 0, 0, 0, '', 0, 0, 0),
(59, 9, 71, 71, 'Lekka Cwierkowana Zbroja', '', 'Zbroja', 'przedmiot/armor/3.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 298, 0, 0, 0, 0, 0, '', 0, 0, 0),
(60, 9, 103, 71, 'Ciezka Cwierkowana Zbroja', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 468, 0, 0, 0, 0, 0, '', 0, 0, 0),
(61, 9, 7, 103, 'Zbroja Cwierkowana Lowcy', '', 'Zbroja', 'przedmiot/armor/3.gif', 5, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 398, 0, 0, 0, 0, 0, '', 0, 0, 0),
(62, 9, 39, 103, 'Cwierkowana Zbroja Zrecznosci', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 5, 0, 0, 1, 1, 1, 0, 0, 0, 0, 2, 14, 10, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 0, 0, 0, 0, 0, '', 0, 0, 0),
(63, 9, 71, 103, 'Ciezka Cwierkowa Zbroja Lowcy', '', 'Zbroja', 'przedmiot/armor/3-2.gif', 6, 0, 0, 1, 1, 1, 0, 0, 0, 0, 2, 16, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 446, 0, 0, 0, 0, 0, '', 0, 0, 0),
(64, 9, 135, 71, 'Lekka Kolczuga', '', 'Zbroja', 'przedmiot/armor/4.gif', 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 822, 0, 0, 0, 0, 0, '', 0, 0, 0),
(65, 9, 103, 103, 'Stara Kolczuga Lowcy', '', 'Zbroja', 'przedmiot/armor/zniszczona.gif', 8, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 810, 0, 0, 0, 0, 0, '', 0, 0, 0),
(66, 9, 135, 103, 'Uszkodzona Zbroja Paskowa Lowcy', '', 'Zbroja', 'przedmiot/armor/uszkodzona.gif', 10, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1910, 0, 0, 0, 0, 0, '', 0, 0, 0),
(67, 9, 167, 103, 'Iridianowa Kolczuga', '', 'Zbroja', 'przedmiot/armor/niebieska-kolczuga.gif', 11, 0, 0, 1, 1, 0, 0, 0, 0, 0, 4, 25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2148, 0, 0, 0, 0, 0, '', 0, 0, 0),
(68, 9, 199, 103, 'Kolczuga Tancerza', '', 'Zbroja', 'przedmiot/armor/tancek-kolczuga.gif', 15, 0, 0, 1, 1, 0, 0, 0, 0, 0, 5, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3798, 0, 0, 0, 0, 0, '', 0, 0, 0),
(69, 9, 231, 103, 'Zbroja Paskowa Lowcy', '', 'Zbroja', 'przedmiot/armor/5.gif', 20, 0, 0, 0, 1, 1, 0, 0, 0, 0, 7, 42, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4342, 0, 0, 0, 0, 0, '', 0, 0, 0),
(70, 9, 7, 295, 'Oslona Ostrzy', '', 'Zbroja', 'przedmiot/armor/6.gif', 19, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 45, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5914, 0, 0, 0, 0, 0, '', 0, 0, 0),
(71, 9, 7, 135, 'Zbroja Pierscieniowa', '', 'Zbroja', 'przedmiot/armor/7.gif', 8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 25, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 772, 0, 0, 0, 1, 0, '', 0, 0, 0),
(72, 9, 39, 135, 'Kolczuga', '', 'Zbroja', 'przedmiot/armor/kolczuga.gif', 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 29, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 952, 0, 0, 0, 1, 0, '', 0, 0, 0),
(73, 9, 71, 135, 'Zbroja Paskowa', '', 'Zbroja', 'przedmiot/armor/5.gif', 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 32, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1148, 0, 0, 0, 1, 0, '', 0, 0, 0),
(74, 9, 103, 135, 'Zbroja Luskowa', '', 'Zbroja', 'przedmiot/armor/8.gif', 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 43, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1852, 0, 0, 0, 1, 0, '', 0, 0, 0),
(75, 9, 135, 135, 'Zbroja Segmentowa', '', 'Zbroja', 'przedmiot/armor/5-2.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 50, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3618, 0, 0, 0, 2, 0, '', 0, 0, 0),
(76, 9, 7, 167, 'Sztylet', '', 'BronJednoreczna', 'przedmiot/lhand/bj1.gif', 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 0, 0, 0, 0, '', 0, 0, 0),
(77, 9, 39, 167, 'Krotki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj2.gif', 5, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 18, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 312, 0, 0, 0, 0, 0, '', 0, 0, 0),
(78, 9, 103, 167, 'Dlugi Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj3.gif', 8, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 31, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(79, 9, 135, 167, 'Szeroki Miecz', '', 'BronJednoreczna', 'przedmiot/lhand/bj4.gif', 9, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 35, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 862, 0, 0, 0, 0, 0, '', 0, 0, 0),
(80, 9, 199, 167, 'Topor', '', 'BronJednoreczna', 'przedmiot/lhand/topor1.gif', 11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 44, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1238, 0, 0, 0, 0, 0, '', 0, 0, 0),
(81, 9, 71, 167, 'Bicz', '', 'BronJednoreczna', 'przedmiot/lhand/bicz.gif', 6, 1, 1, 1, 0, 0, 0, 0, 0, 0, 10, 0, 0, 19, 23, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 758, 0, 0, 0, 0, 0, '', 0, 0, 0),
(82, 9, 167, 167, 'Szpada', '', 'BronJednoreczna', 'przedmiot/lhand/szpada.gif', 10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 0, 32, 40, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1642, 0, 0, 0, 0, 0, '', 0, 0, 0),
(83, 9, 231, 167, 'Mongersztern', '', 'BronJednoreczna', 'przedmiot/lhand/mongersztern.gif', 23, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 99, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7332, 0, 0, 0, 0, 0, '', 0, 0, 0),
(84, 9, 39, 295, 'Cep Bojowy', '', 'BronJednoreczna', 'przedmiot/lhand/cep.gif', 25, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 109, 120, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8596, 0, 0, 0, 0, 0, '', 0, 0, 0),
(85, 9, 71, 199, 'Miecz Poltorareczny', '', 'BronPoltorareczna', 'przedmiot/lhand/bp1.gif', 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 77, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2188, 0, 0, 0, 0, 0, '', 0, 0, 0),
(86, 9, 7, 199, 'Mlot Bojowy', '', 'BronPoltorareczna', 'przedmiot/lhand/bp2.gif', 12, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 60, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1450, 0, 0, 0, 0, 0, '', 0, 0, 0),
(87, 9, 39, 199, 'Wlocznia', '', 'BronPoltorareczna', 'przedmiot/lhand/bp3.gif', 13, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 65, 150, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1680, 0, 0, 0, 0, 0, '', 0, 0, 0),
(88, 9, 7, 231, 'Halabarda', '', 'BronDwureczna', 'przedmiot/lhand/bd1.gif', 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 119, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5106, 0, 0, 0, 0, 0, '', 0, 0, 0),
(89, 9, 39, 231, 'Miecz Dwureczny', '', 'BronDwureczna', 'przedmiot/lhand/bd2.gif', 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 141, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6738, 0, 0, 0, 0, 0, '', 0, 0, 0),
(90, 9, 71, 231, 'Dwureczny Topor', '', 'BronDwureczna', 'przedmiot/lhand/bd3.gif', 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 148, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7332, 0, 0, 0, 0, 0, '', 0, 0, 0),
(91, 9, 103, 231, 'Bojowy Mlot Dwureczny', '', 'BronDwureczna', 'przedmiot/lhand/bd4.gif', 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134, 163, 200, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8596, 0, 0, 0, 0, 0, '', 0, 0, 0),
(128, 10, 7, 7, 'Skorzane Rekawice', '', 'Rekawice', 'przedmiot/rek/2.gif', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, '', 0, 0, 0),
(129, 10, 39, 7, 'Wzmocnione Rekawice', '', 'Rekawice', 'przedmiot/rek/3.gif', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 172, 0, 0, 0, 0, 0, '', 0, 0, 0),
(130, 10, 71, 7, 'Rekawice Jezdzieckie', '', 'Rekawice', 'przedmiot/rek/4.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(131, 10, 103, 7, 'Rekawice Kolcze', '', 'Rekawice', 'przedmiot/rek/5.gif', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 174, 0, 0, 0, 0, 0, '', 0, 0, 0),
(132, 10, 135, 7, 'Rekawice Rycerskie', '', 'Rekawice', 'przedmiot/rek/6.gif', 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 654, 0, 0, 0, 0, 0, '', 0, 0, 0),
(133, 10, 167, 7, 'Zlociste Rekawice', '', 'Rekawice', 'przedmiot/rek/7.gif', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 980, 0, 0, 0, 0, 0, '', 0, 0, 0),
(134, 10, 199, 7, 'Rekawice Szarego Niedzwiedzia', '', 'Rekawice', 'przedmiot/rek/8.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 15, 15, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2298, 0, 0, 0, 0, 0, '', 0, 0, 0),
(135, 10, 231, 7, 'Zatrute Rekawice Lowcy', '', 'Rekawice', 'przedmiot/rek/9.gif', 20, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 14, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3798, 0, 0, 0, 0, 0, '', 0, 0, 0),
(136, 2, 7, 199, 'Nóż do Oprawiania Skóry', '', 'BronPomocnicza', 'przedmiot/rhand/pom1.gif', 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 14, 100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344, 0, 0, 0, 0, 0, '', 0, 0, 0),
(137, 2, 39, 199, 'Prosty Nóż', '', 'BronPomocnicza', 'przedmiot/rhand/pom2.gif', 8, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 23, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 700, 0, 0, 0, 0, 0, '', 0, 0, 0),
(138, 2, 71, 199, 'Miecz Pomocniczy', '', 'BronPomocnicza', 'przedmiot/rhand/pom3.gif', 12, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 35, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1740, 0, 0, 0, 0, 0, '', 0, 0, 0),
(139, 2, 103, 199, 'Prosty Korbacz Pomocniczy', '', 'BronPomocnicza', 'przedmiot/rhand/pom4.gif', 18, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 54, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4614, 0, 0, 0, 0, 0, '', 0, 0, 0),
(156, 10, 7, 135, 'Czapka Kartografa', '', 'Helm', 'przedmiot/cap/czapka-kartografa.gif', 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 12, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1340, 0, 0, 0, 0, 0, '', 0, 0, 0),
(157, 10, 7, 263, 'Dobre Skórzane Buty', '', 'Buty', 'przedmiot/but/4.gif', 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 18, 18, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1149, 0, 0, 0, 0, 0, '', 0, 0, 0),
(459, 7, 7, 71, 'Kamien Teleportujacy do Pieczary Pajeczyn', 'normal', 'Zwoj', 'przedmiot/tep/pieczarapajeczyn.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(460, 7, 39, 71, 'Kamien Teleportujacy do Podziemnego Przejscia', 'normal', 'Zwoj', 'przedmiot/tep/podziemneprzejscie.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(461, 7, 71, 71, 'Kamien Teleportujacy do Tygrysiej Granicy', 'normal', 'Zwoj', 'przedmiot/tep/tygrysiagranica.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 51, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(462, 7, 103, 71, 'Kamien Teleportujacy do Zburzonej Twierdzy', 'normal', 'Zwoj', 'przedmiot/tep/zburzonatwierdza.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 41, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 20),
(774, 7, 7, 135, 'Stroj Zielonowlosego Chlopaka', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/male_p1.png', 0, 0, 25),
(775, 7, 39, 135, 'Stroj Mroznego Czarodzieja', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/m_magmrozu.gif', 0, 0, 25),
(776, 7, 71, 135, 'Stroj Westalki', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/female_p1.png', 0, 0, 25),
(777, 7, 103, 135, 'Stroj Bandytki', 'normal', 'Stroje', 'przedmiot/e2/goons/pot.gif', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'avatar/female_p2.png', 0, 0, 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyjaciele`
--

CREATE TABLE IF NOT EXISTS `przyjaciele` (
  `postac` int(11) NOT NULL DEFAULT '0',
  `przyjaciel` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `funkcja` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `czas` double(20,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `system`
--

INSERT INTO `system` (`funkcja`, `czas`) VALUES
('czysc_czat', 0),
('wyczerpanie', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejetnosci`
--

CREATE TABLE IF NOT EXISTS `umiejetnosci` (
  `postac_id` int(11) NOT NULL DEFAULT '0',
  `u1` smallint(2) NOT NULL DEFAULT '0',
  `u2` smallint(2) NOT NULL DEFAULT '0',
  `u3` smallint(2) NOT NULL DEFAULT '0',
  `u4` smallint(2) NOT NULL DEFAULT '0',
  `u5` smallint(2) NOT NULL DEFAULT '0',
  `u6` smallint(2) NOT NULL DEFAULT '0',
  `u7` smallint(2) NOT NULL DEFAULT '0',
  `u8` smallint(2) NOT NULL DEFAULT '0',
  `u9` smallint(2) NOT NULL DEFAULT '0',
  `u10` smallint(2) NOT NULL DEFAULT '0',
  `u11` smallint(2) NOT NULL DEFAULT '0',
  `u12` smallint(2) NOT NULL DEFAULT '0',
  `u13` smallint(2) NOT NULL DEFAULT '0',
  `u14` smallint(2) NOT NULL DEFAULT '0',
  `u15` smallint(2) NOT NULL DEFAULT '0',
  `u16` smallint(2) NOT NULL DEFAULT '0',
  `u17` smallint(2) NOT NULL DEFAULT '0',
  `u18` smallint(2) NOT NULL DEFAULT '0',
  `u19` smallint(2) NOT NULL DEFAULT '0',
  `u20` smallint(2) NOT NULL DEFAULT '0',
  `u21` smallint(2) NOT NULL DEFAULT '0',
  `u22` smallint(2) NOT NULL DEFAULT '0',
  `u23` smallint(2) NOT NULL DEFAULT '0',
  `u24` smallint(2) NOT NULL DEFAULT '0',
  `u25` smallint(2) NOT NULL DEFAULT '0',
  `u26` smallint(2) NOT NULL DEFAULT '0',
  `u27` smallint(2) NOT NULL DEFAULT '0',
  `u28` smallint(2) NOT NULL DEFAULT '0',
  `u29` smallint(2) NOT NULL DEFAULT '0',
  `u30` smallint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `walkaturowa`
--

CREATE TABLE IF NOT EXISTS `walkaturowa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player1_id` int(11) DEFAULT '0',
  `player1_pos` int(11) DEFAULT '0',
  `player1_sa` int(11) DEFAULT '0',
  `mob1_id` int(11) DEFAULT '0',
  `mob1_pos` int(11) DEFAULT '0',
  `mob1_sa` int(11) DEFAULT '0',
  `mob2_id` int(11) DEFAULT '0',
  `mob2_pos` int(11) DEFAULT '0',
  `mob2_sa` int(11) DEFAULT '0',
  `tura` int(11) unsigned DEFAULT '1',
  `endturn` double(20,0) DEFAULT '0',
  `log` text COLLATE utf8_polish_ci,
  `mob3_id` int(11) DEFAULT '0',
  `mob3_pos` int(11) DEFAULT '0',
  `mob3_sa` int(11) DEFAULT '0',
  `mob4_id` int(11) DEFAULT '0',
  `mob4_pos` int(11) DEFAULT '0',
  `mob4_sa` int(11) DEFAULT '0',
  `mob5_id` int(11) DEFAULT '0',
  `mob5_pos` int(11) DEFAULT '0',
  `mob5_sa` int(11) DEFAULT '0',
  `mob6_id` int(11) DEFAULT '0',
  `mob6_pos` int(11) DEFAULT '0',
  `mob6_sa` int(11) DEFAULT '0',
  `mob7_id` int(11) DEFAULT '0',
  `mob7_pos` int(11) DEFAULT '0',
  `mob7_sa` int(11) DEFAULT '0',
  `mob8_id` int(11) DEFAULT '0',
  `mob8_pos` int(11) DEFAULT '0',
  `mob8_sa` int(11) DEFAULT '0',
  `mob9_id` int(11) DEFAULT '0',
  `mob9_pos` int(11) DEFAULT '0',
  `mob9_sa` int(11) DEFAULT '0',
  `mob10_id` int(11) DEFAULT '0',
  `mob10_pos` int(11) DEFAULT '0',
  `mob10_sa` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapro_grupa`
--

CREATE TABLE IF NOT EXISTS `zapro_grupa` (
  `grupa` int(11) NOT NULL DEFAULT '0',
  `postac_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapro_przyjaciel`
--

CREATE TABLE IF NOT EXISTS `zapro_przyjaciel` (
  `postac_id` int(11) NOT NULL DEFAULT '0',
  `postac2_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
--
-- Baza danych: `margatron`
--
CREATE DATABASE `margatron` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `margatron`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `haslo` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_bin DEFAULT 'costam@costam.cos',
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paypal`
--

CREATE TABLE IF NOT EXISTS `paypal` (
  `kod` varchar(10) COLLATE utf8_bin DEFAULT 'none',
  `ile` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
