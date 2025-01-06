<?php
$u = mysql_fetch_array(mysql_query("select * from umiejetnosci where postac_id = ".$postac['id']." limit 1"));
if(!empty($u)){

if($u['u11'] == 1) $skil[11] = array(poziom => 25, ilosc => 156, energia => 25);
elseif($u['u11'] == 2) $skil[11] = array(poziom => 30, ilosc => 228, energia => 35);
elseif($u['u11'] == 3) $skil[11] = array(poziom => 35, ilosc => 314, energia => 50);
elseif($u['u11'] == 4) $skil[11] = array(poziom => 40, ilosc => 398, energia => 65);
elseif($u['u11'] == 5) $skil[11] = array(poziom => 45, ilosc => 482, energia => 80);
elseif($u['u11'] == 6) $skil[11] = array(poziom => 50, ilosc => 622, energia => 90);
elseif($u['u11'] == 7) $skil[11] = array(poziom => 60, ilosc => 783, energia => 105);
elseif($u['u11'] == 8) $skil[11] = array(poziom => 70, ilosc => 978, energia => 120);
elseif($u['u11'] == 9) $skil[11] = array(poziom => 80, ilosc => 1255, energia => 135);
elseif($u['u11'] == 10) $skil[11] = array(poziom => 90, ilosc => 1566, energia => 150);
elseif($u['u11'] == 11) $skil[11] = array(poziom => 100, ilosc => 2012, energia => 165);

$bd = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1 and typ = 'BronDystansowa'"));
if($bd >= 1){
if($u['u12'] == 1) $skil[12] = array(ilosc => 2.5, energia => 10);
elseif($u['u12'] == 2) $skil[12] = array(ilosc => 5, energia => 12);
elseif($u['u12'] == 3) $skil[12] = array(ilosc => 7.5, energia => 15);
elseif($u['u12'] == 4) $skil[12] = array(ilosc => 10, energia => 17);
elseif($u['u12'] == 5) $skil[12] = array(ilosc => 12.5, energia => 20);
} else $skil[12] = array(ilosc => 0, energia => 0);

if($u['u13'] == 1) $skil[13] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u13'] == 2) $skil[13] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u13'] == 3) $skil[13] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u13'] == 4) $skil[13] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u13'] == 5) $skil[13] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u13'] == 6) $skil[13] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u13'] == 7) $skil[13] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u13'] == 8) $skil[13] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u13'] == 9) $skil[13] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u13'] == 10) $skil[13] = array(poziom => 80, ilosc => 1301, mana => 50);
elseif($u['u13'] == 11) $skil[13] = array(poziom => 90, ilosc => 1712, mana => 55);
////////////////////////////////////////////////////////////////////////////////
if($u['u14'] == 1) $skil[14] = array(poziom => 30, ilosc => 1, mana => 15);
elseif($u['u14'] == 2) $skil[14] = array(poziom => 50, ilosc => 2, mana => 35);
elseif($u['u14'] == 3) $skil[14] = array(poziom => 70, ilosc => 3, mana => 55);
////////////////////////////////////////////////////////////////////////////////
if($u['u15'] == 1) $skil[15] = array(ilosc => 10);
elseif($u['u15'] == 2) $skil[15] = array(ilosc => 20);
elseif($u['u15'] == 3) $skil[15] = array(ilosc => 30);
elseif($u['u15'] == 4) $skil[15] = array(ilosc => 40);
elseif($u['u15'] == 5) $skil[15] = array(ilosc => 50);
elseif($u['u15'] >= 6) $skil[15] = array(ilosc => $u['u15']*10);
////////////////////////////////////////////////////////////////////////////////
if($u['u16'] == 1) $skil[16] = array(ilosc => 5);
elseif($u['u16'] == 2) $skil[16] = array(ilosc => 10);
elseif($u['u16'] == 3) $skil[16] = array(ilosc => 15);
elseif($u['u16'] == 4) $skil[16] = array(ilosc => 20);
elseif($u['u16'] == 5) $skil[16] = array(ilosc => 25);
elseif($u['u16'] >= 6) $skil[16] = array(ilosc => $u['u16']*5);
////////////////////////////////////////////////////////////////////////////////
if($u['u18'] == 1) $skil[18] = array(poziom => 25, ilosc => 1, energia => 20);
elseif($u['u18'] == 2) $skil[18] = array(poziom => 35, ilosc => 2, energia => 25);
elseif($u['u18'] == 3) $skil[18] = array(poziom => 45, ilosc => 3, energia => 30);
elseif($u['u18'] == 4) $skil[18] = array(poziom => 55, ilosc => 4, energia => 35);
elseif($u['u18'] == 5) $skil[18] = array(poziom => 65, ilosc => 5, energia => 40);
elseif($u['u18'] == 6) $skil[18] = array(poziom => 75, ilosc => 6, energia => 45);
////////////////////////////////////////////////////////////////////////////////
if($u['u19'] == 1) $skil[19] = array(poziom => 30, ilosc => 142, mana => 25);
elseif($u['u19'] == 2) $skil[19] = array(poziom => 40, ilosc => 301, mana => 40);
elseif($u['u19'] == 3) $skil[19] = array(poziom => 55, ilosc => 563, mana => 55);
elseif($u['u19'] == 4) $skil[19] = array(poziom => 70, ilosc => 892, mana => 75);
elseif($u['u19'] == 5) $skil[19] = array(poziom => 85, ilosc => 1239, mana => 100);
elseif($u['u19'] == 6) $skil[19] = array(poziom => 100, ilosc => 1809, mana => 125);
elseif($u['u19'] == 7) $skil[19] = array(poziom => 115, ilosc => 2601, mana => 150);
////////////////////////////////////////////////////////////////////////////////
$skil[20] = array(ilosc => 250*$u['u20'], energia => 10*$u['u20']);
////////////////////////////////////////////////////////////////////////////////
$skil[21] = array(ilosc => 500*$u['u21'], mana => 10*$u['u21']);
////////////////////////////////////////////////////////////////////////////////
$skil[25] = array(ilosc => ($u['u25']+1), energia => 50+($u['u25']*10));
////////////////////////////////////////////////////////////////////////////////
if($u['u26'] == 1) $skil[26] = array(poziom => 25, ilosc => 307, strzaly=>3, energia => 20);
elseif($u['u26'] == 2) $skil[26] = array(poziom => 35, ilosc => 512, strzaly=>5, energia => 30);
elseif($u['u26'] == 3) $skil[26] = array(poziom => 45, ilosc => 765, strzaly=>7, energia => 40);
elseif($u['u26'] == 4) $skil[26] = array(poziom => 55, ilosc => 1094, strzaly=>10, energia => 50);
elseif($u['u26'] == 5) $skil[26] = array(poziom => 65, ilosc => 1502, strzaly=>12, energia => 60);
elseif($u['u26'] == 6) $skil[26] = array(poziom => 80, ilosc => 2098, strzaly=>15, energia => 70);
elseif($u['u26'] == 7) $skil[26] = array(poziom => 95, ilosc => 2688, strzaly=>17, energia => 80);
elseif($u['u26'] == 8) $skil[26] = array(poziom => 110, ilosc => 3391, strzaly=>20, energia => 90);
elseif($u['u26'] == 9) $skil[26] = array(poziom => 125, ilosc => 4290, strzaly=>23, energia => 100);
elseif($u['u26'] == 10) $skil[26] = array(poziom => 140, ilosc => 5166, strzaly=>25, energia => 110);
////////////////////////////////////////////////////////////////////////////////
$skil[27] = array(ilosc => ($u['u27']+1), energia => 50+($u['u27']*10));
////////////////////////////////////////////////////////////////////////////////
if($u['u28'] == 1) $skil[28] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u28'] == 2) $skil[28] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u28'] == 3) $skil[28] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u28'] == 4) $skil[28] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u28'] == 5) $skil[28] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u28'] == 6) $skil[28] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u28'] == 7) $skil[28] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u28'] == 8) $skil[28] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u28'] == 9) $skil[28] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u28'] == 10) $skil[28] = array(poziom => 80, ilosc => 1301, mana => 50);
////////////////////////////////////////////////////////////////////////////////
if($u['u29'] == 1) $skil[29] = array(poziom => 25, ilosc => 74, mana => 5);
elseif($u['u29'] == 2) $skil[29] = array(poziom => 30, ilosc => 138, mana => 10);
elseif($u['u29'] == 3) $skil[29] = array(poziom => 35, ilosc => 213, mana => 15);
elseif($u['u29'] == 4) $skil[29] = array(poziom => 40, ilosc => 304, mana => 20);
elseif($u['u29'] == 5) $skil[29] = array(poziom => 45, ilosc => 392, mana => 25);
elseif($u['u29'] == 6) $skil[29] = array(poziom => 50, ilosc => 494, mana => 30);
elseif($u['u29'] == 7) $skil[29] = array(poziom => 55, ilosc => 602, mana => 35);
elseif($u['u29'] == 8) $skil[29] = array(poziom => 60, ilosc => 731, mana => 40);
elseif($u['u29'] == 9) $skil[29] = array(poziom => 70, ilosc => 1002, mana => 45);
elseif($u['u29'] == 10) $skil[29] = array(poziom => 80, ilosc => 1301, mana => 50);
////////////////////////////////////////////////////////////////////////////////
if($u['u30'] == 1) $skil[30] = array(poziom => 25, ilosc => 74, energia => 5);
elseif($u['u30'] == 2) $skil[30] = array(poziom => 30, ilosc => 138, energia => 10);
elseif($u['u30'] == 3) $skil[30] = array(poziom => 35, ilosc => 213, energia => 15);
elseif($u['u30'] == 4) $skil[30] = array(poziom => 40, ilosc => 304, energia => 20);
elseif($u['u30'] == 5) $skil[30] = array(poziom => 45, ilosc => 392, energia => 25);
elseif($u['u30'] == 6) $skil[30] = array(poziom => 50, ilosc => 494, energia => 30);
elseif($u['u30'] == 7) $skil[30] = array(poziom => 55, ilosc => 602, energia => 35);
elseif($u['u30'] == 8) $skil[30] = array(poziom => 60, ilosc => 731, energia => 40);
elseif($u['u30'] == 9) $skil[30] = array(poziom => 70, ilosc => 1002, energia => 45);
elseif($u['u30'] == 10) $skil[30] = array(poziom => 80, ilosc => 1301, energia => 50);
////////////////////////////////////////////////////////////////////////////////
}
?>