<?php

///////////////////////////////// NOWE DANE ////////////////////////////////////
$max_um = $poziom - 24;
if($max_um <= 0) $max_um = 0;
////////////////////////////////////////////////////////////////////////////////

$u = mysql_fetch_array(mysql_query("select * from umiejetnosci where postac_id = ".$postac['id']." limit 1"));
if(!empty($u)){
if($u['u1'] == 0) $skil[1] = array(poziom => 25, ilosc => 356);
elseif($u['u1'] == 1) $skil[1] = array(poziom => 30, ilosc => 523);
elseif($u['u1'] == 2) $skil[1] = array(poziom => 35, ilosc => 791);
elseif($u['u1'] == 3) $skil[1] = array(poziom => 40, ilosc => 1026);
elseif($u['u1'] == 4) $skil[1] = array(poziom => 45, ilosc => 1368);
elseif($u['u1'] == 5) $skil[1] = array(poziom => 50, ilosc => 1733);
elseif($u['u1'] == 6) $skil[1] = array(poziom => 55, ilosc => 2108);
elseif($u['u1'] == 7) $skil[1] = array(poziom => 60, ilosc => 2514);
elseif($u['u1'] == 8) $skil[1] = array(poziom => 65, ilosc => 2969);
elseif($u['u1'] == 9) $skil[1] = array(poziom => 70, ilosc => 3413);
elseif($u['u1'] == 10) $skil[1] = array(poziom => 75, ilosc => 4056);
elseif($u['u1'] == 11) $skil[1] = array(poziom => 80, ilosc => 4791);
elseif($u['u1'] == 12) $skil[1] = array(poziom => 85, ilosc => 5564);
elseif($u['u1'] == 13) $skil[1] = array(poziom => 90, ilosc => 6312);
elseif($u['u1'] == 14) $skil[1] = array(poziom => 95, ilosc => 7098);
elseif($u['u1'] == 15) $skil[1] = array(poziom => 100, ilosc => 7899);
elseif($u['u1'] == 16) $skil[1] = array(poziom => 105, ilosc => 8624);
elseif($u['u1'] == 17) $skil[1] = array(poziom => 110, ilosc => 9510);
elseif($u['u1'] == 18) $skil[1] = array(poziom => 115, ilosc => 10376);
elseif($u['u1'] == 19) $skil[1] = array(poziom => 120, ilosc => 11234);
////////////////////////////////////////////////////////////////////////////////
if($u['u2'] == 0) $skil[2] = array(poziom => 30, ilosc => 5, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 1) $skil[2] = array(poziom => 40, ilosc => 10, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 2) $skil[2] = array(poziom => 50, ilosc => 15, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 3) $skil[2] = array(poziom => 70, ilosc => 20, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 4) $skil[2] = array(poziom => 90, ilosc => 25, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 5) $skil[2] = array(poziom => 110, ilosc => 30, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 6) $skil[2] = array(poziom => 130, ilosc => 35, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 7) $skil[2] = array(poziom => 150, ilosc => 40, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 8) $skil[2] = array(poziom => 170, ilosc => 45, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
elseif($u['u2'] == 9) $skil[2] = array(poziom => 190, ilosc => 50, prof1 => 'Wojownik', prof2 => 'Tancerz Ostrzy', tekst => 'Wojownik, Tancerz Ostrzy');
////////////////////////////////////////////////////////////////////////////////
if($u['u3'] == 0) $skil[3] = array(poziom => 25, ilosc => 0.1, prof1 => 'Wojownik', prof2 => 'Paladyn', tekst => 'Wojownik, Paladyn');
elseif($u['u3'] == 1) $skil[3] = array(poziom => 35, ilosc => 0.2, prof1 => 'Wojownik', prof2 => 'Paladyn', tekst => 'Wojownik, Paladyn');
elseif($u['u3'] == 2) $skil[3] = array(poziom => 45, ilosc => 0.3, prof1 => 'Wojownik', prof2 => 'Paladyn', tekst => 'Wojownik, Paladyn');
elseif($u['u3'] == 3) $skil[3] = array(poziom => 55, ilosc => 0.4, prof1 => 'Wojownik', prof2 => 'Paladyn', tekst => 'Wojownik, Paladyn');
elseif($u['u3'] == 4) $skil[3] = array(poziom => 65, ilosc => 0.5, prof1 => 'Wojownik', prof2 => 'Paladyn', tekst => 'Wojownik, Paladyn');
////////////////////////////////////////////////////////////////////////////////
$skil[4] = array(ilosc => (($u['u4'] + 1) * 10));
////////////////////////////////////////////////////////////////////////////////
if($u['u5'] == 0) $skil[5] = array(poziom => 25, ilosc => 2);
elseif($u['u5'] == 1) $skil[5] = array(poziom => 35, ilosc => 4);
elseif($u['u5'] == 2) $skil[5] = array(poziom => 45, ilosc => 6);
elseif($u['u5'] >= 3) $skil[5] = array(poziom => 25+($u['u5']*10), ilosc => $u['u5']*2);
////////////////////////////////////////////////////////////////////////////////
if($u['u6'] == 0) $skil[6] = array(poziom => 25, ilosc => 10);
elseif($u['u6'] == 1) $skil[6] = array(poziom => 30, ilosc => 20);
elseif($u['u6'] == 2) $skil[6] = array(poziom => 35, ilosc => 30);
elseif($u['u6'] == 3) $skil[6] = array(poziom => 40, ilosc => 40);
elseif($u['u6'] == 4) $skil[6] = array(poziom => 45, ilosc => 50);
elseif($u['u6'] == 5) $skil[6] = array(poziom => 50, ilosc => 60);
elseif($u['u6'] >= 6) $skil[6] = array(poziom => (25+($u['u6']*5)), ilosc => $u['u6']*10);
////////////////////////////////////////////////////////////////////////////////
$skil[7] = array(ilosc => (($u['u7'] + 1) * 10));
////////////////////////////////////////////////////////////////////////////////
$skil[8] = array(poziom => (25 + ($u['u8'] * 5)), ilosc => (($u['u8'] + 1) * 3));
////////////////////////////////////////////////////////////////////////////////
$skil[9] = array(poziom => (25 + ($u['u9'] * 5)), ilosc => (($u['u9'] + 1) * 3));
////////////////////////////////////////////////////////////////////////////////
$skil[10] = array(poziom => (30 + ($u['u10'] * 5)), ilosc => (($u['u10'] + 1) * 4));
////////////////////////////////////////////////////////////////////////////////
if($u['u11'] == 0) $skil[11] = array(poziom => 25, ilosc => 156, energia => 25);
elseif($u['u11'] == 1) $skil[11] = array(poziom => 30, ilosc => 228, energia => 35);
elseif($u['u11'] == 2) $skil[11] = array(poziom => 35, ilosc => 314, energia => 50);
elseif($u['u11'] == 3) $skil[11] = array(poziom => 40, ilosc => 398, energia => 65);
elseif($u['u11'] == 4) $skil[11] = array(poziom => 45, ilosc => 482, energia => 80);
elseif($u['u11'] == 5) $skil[11] = array(poziom => 50, ilosc => 622, energia => 90);
elseif($u['u11'] == 6) $skil[11] = array(poziom => 60, ilosc => 783, energia => 105);
elseif($u['u11'] == 7) $skil[11] = array(poziom => 70, ilosc => 978, energia => 120);
elseif($u['u11'] == 8) $skil[11] = array(poziom => 80, ilosc => 1255, energia => 135);
elseif($u['u11'] == 9) $skil[11] = array(poziom => 90, ilosc => 1566, energia => 150);
elseif($u['u11'] == 10) $skil[11] = array(poziom => 100, ilosc => 2012, energia => 165);
////////////////////////////////////////////////////////////////////////////////
if($u['u12'] == 0) $skil[12] = array(poziom => 25, ilosc => 2.5, energia => 10);
elseif($u['u12'] == 1) $skil[12] = array(poziom => 30, ilosc => 5, energia => 12);
elseif($u['u12'] == 2) $skil[12] = array(poziom => 35, ilosc => 7.5, energia => 15);
elseif($u['u12'] == 3) $skil[12] = array(poziom => 40, ilosc => 10, energia => 17);
elseif($u['u12'] == 4) $skil[12] = array(poziom => 45, ilosc => 12.5, energia => 20);
////////////////////////////////////////////////////////////////////////////////
if($u['u13'] == 0) $skil[13] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u13'] == 1) $skil[13] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u13'] == 2) $skil[13] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u13'] == 3) $skil[13] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u13'] == 4) $skil[13] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u13'] == 5) $skil[13] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u13'] == 6) $skil[13] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u13'] == 7) $skil[13] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u13'] == 8) $skil[13] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u13'] == 9) $skil[13] = array(poziom => 80, ilosc => 1301, mana => 50);
elseif($u['u13'] == 10) $skil[13] = array(poziom => 90, ilosc => 1712, mana => 55);
////////////////////////////////////////////////////////////////////////////////
if($u['u14'] == 0) $skil[14] = array(poziom => 30, ilosc => 1, mana => 15);
elseif($u['u14'] == 1) $skil[14] = array(poziom => 50, ilosc => 2, mana => 35);
elseif($u['u14'] == 2) $skil[14] = array(poziom => 70, ilosc => 3, mana => 55);
////////////////////////////////////////////////////////////////////////////////
if($u['u15'] == 0) $skil[15] = array(ilosc => 10);
elseif($u['u15'] == 1) $skil[15] = array(ilosc => 20);
elseif($u['u15'] == 2) $skil[15] = array(ilosc => 30);
elseif($u['u15'] == 3) $skil[15] = array(ilosc => 40);
elseif($u['u15'] == 4) $skil[15] = array(ilosc => 50);
elseif($u['u15'] >= 5) $skil[15] = array(ilosc => $u['u15']*10);
////////////////////////////////////////////////////////////////////////////////
if($u['u16'] == 0) $skil[16] = array(ilosc => 5);
elseif($u['u16'] == 1) $skil[16] = array(ilosc => 10);
elseif($u['u16'] == 2) $skil[16] = array(ilosc => 15);
elseif($u['u16'] == 3) $skil[16] = array(ilosc => 20);
elseif($u['u16'] == 4) $skil[16] = array(ilosc => 25);
elseif($u['u16'] >= 5) $skil[16] = array(ilosc => $u['u16']*5);
////////////////////////////////////////////////////////////////////////////////
$skil[17] = array(poziom => (40 + ($u['u17'] * 10)), ilosc => (($u['u10'] + 1) * 50));
////////////////////////////////////////////////////////////////////////////////
if($u['u18'] == 0) $skil[18] = array(poziom => 25, ilosc => 1, energia => 20);
elseif($u['u18'] == 1) $skil[18] = array(poziom => 35, ilosc => 2, energia => 25);
elseif($u['u18'] == 2) $skil[18] = array(poziom => 45, ilosc => 3, energia => 30);
elseif($u['u18'] == 3) $skil[18] = array(poziom => 55, ilosc => 4, energia => 35);
elseif($u['u18'] == 4) $skil[18] = array(poziom => 65, ilosc => 5, energia => 40);
elseif($u['u18'] == 5) $skil[18] = array(poziom => 75, ilosc => 6, energia => 45);
////////////////////////////////////////////////////////////////////////////////
if($u['u19'] == 0) $skil[19] = array(poziom => 30, ilosc => 142, mana => 25);
elseif($u['u19'] == 1) $skil[19] = array(poziom => 40, ilosc => 301, mana => 40);
elseif($u['u19'] == 2) $skil[19] = array(poziom => 55, ilosc => 563, mana => 55);
elseif($u['u19'] == 3) $skil[19] = array(poziom => 70, ilosc => 892, mana => 75);
elseif($u['u19'] == 4) $skil[19] = array(poziom => 85, ilosc => 1239, mana => 100);
elseif($u['u19'] == 5) $skil[19] = array(poziom => 100, ilosc => 1809, mana => 125);
elseif($u['u19'] == 6) $skil[19] = array(poziom => 115, ilosc => 2601, mana => 150);
////////////////////////////////////////////////////////////////////////////////
$skil[20] = array(poziom => 30+($u['u20']*10), ilosc => 250*($u['u20']+1), energia => 10*($u['u20']+1));
////////////////////////////////////////////////////////////////////////////////
$skil[21] = array(poziom => 30+($u['u21']*10), ilosc => 500*($u['u21']+1), mana => 10*($u['u21']+1));
////////////////////////////////////////////////////////////////////////////////
$skil[22] = array(poziom => 25+($u['u22']*5), ilosc => 5*($u['u22']+1));
////////////////////////////////////////////////////////////////////////////////
$skil[23] = array(poziom => 25+($u['u23']*5), ilosc => 5*($u['u23']+1));
////////////////////////////////////////////////////////////////////////////////
$skil[24] = array(poziom => 25+($u['u24']*5), ilosc => 5*($u['u24']+1));
////////////////////////////////////////////////////////////////////////////////
$skil[25] = array(poziom => 30+($u['u25']*10), ilosc => 1+($u['u25']+1), energia => 50+($u['u25']*10));
////////////////////////////////////////////////////////////////////////////////
if($u['u26'] == 0) $skil[26] = array(poziom => 25, ilosc => 307, strzaly=>3, energia => 20);
elseif($u['u26'] == 1) $skil[26] = array(poziom => 35, ilosc => 512, strzaly=>5, energia => 30);
elseif($u['u26'] == 2) $skil[26] = array(poziom => 45, ilosc => 765, strzaly=>7, energia => 40);
elseif($u['u26'] == 3) $skil[26] = array(poziom => 55, ilosc => 1094, strzaly=>10, energia => 50);
elseif($u['u26'] == 4) $skil[26] = array(poziom => 65, ilosc => 1502, strzaly=>12, energia => 60);
elseif($u['u26'] == 5) $skil[26] = array(poziom => 80, ilosc => 2098, strzaly=>15, energia => 70);
elseif($u['u26'] == 6) $skil[26] = array(poziom => 95, ilosc => 2688, strzaly=>17, energia => 80);
elseif($u['u26'] == 7) $skil[26] = array(poziom => 110, ilosc => 3391, strzaly=>20, energia => 90);
elseif($u['u26'] == 8) $skil[26] = array(poziom => 125, ilosc => 4290, strzaly=>23, energia => 100);
elseif($u['u26'] == 9) $skil[26] = array(poziom => 140, ilosc => 5166, strzaly=>25, energia => 110);
////////////////////////////////////////////////////////////////////////////////
$skil[27] = array(poziom => 30+($u['u27']*10), ilosc => 1+($u['u27']+1), energia => 50+($u['u27']*10));
////////////////////////////////////////////////////////////////////////////////
if($u['u28'] == 0) $skil[28] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u28'] == 1) $skil[28] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u28'] == 2) $skil[28] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u28'] == 3) $skil[28] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u28'] == 4) $skil[28] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u28'] == 5) $skil[28] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u28'] == 6) $skil[28] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u28'] == 7) $skil[28] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u28'] == 8) $skil[28] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u28'] == 9) $skil[28] = array(poziom => 80, ilosc => 1301, mana => 50);
////////////////////////////////////////////////////////////////////////////////
if($u['u29'] == 0) $skil[29] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u29'] == 1) $skil[29] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u29'] == 2) $skil[29] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u29'] == 3) $skil[29] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u29'] == 4) $skil[29] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u29'] == 5) $skil[29] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u29'] == 6) $skil[29] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u29'] == 7) $skil[29] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u29'] == 8) $skil[29] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u29'] == 9) $skil[29] = array(poziom => 80, ilosc => 1301, mana => 50);
////////////////////////////////////////////////////////////////////////////////
if($u['u30'] == 0) $skil[30] = array(poziom => 25, ilosc => 74, energia => 5);
elseif($u['u30'] == 1) $skil[30] = array(poziom => 30, ilosc => 138, energia => 10);
elseif($u['u30'] == 2) $skil[30] = array(poziom => 35, ilosc => 213, energia => 15);
elseif($u['u30'] == 3) $skil[30] = array(poziom => 40, ilosc => 304, energia => 20);
elseif($u['u30'] == 4) $skil[30] = array(poziom => 45, ilosc => 392, energia => 25);
elseif($u['u30'] == 5) $skil[30] = array(poziom => 50, ilosc => 494, energia => 30);
elseif($u['u30'] == 6) $skil[30] = array(poziom => 55, ilosc => 602, energia => 35);
elseif($u['u30'] == 7) $skil[30] = array(poziom => 60, ilosc => 731, energia => 40);
elseif($u['u30'] == 8) $skil[30] = array(poziom => 70, ilosc => 1002, energia => 45);
elseif($u['u30'] == 9) $skil[30] = array(poziom => 80, ilosc => 1301, energia => 50);
////////////////////////////////////////////////////////////////////////////////
} else {
mysql_query("insert into umiejetnosci (postac_id) value ('".$postac['id']."')");
}
?>