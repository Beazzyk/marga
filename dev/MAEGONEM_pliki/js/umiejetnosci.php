<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');
require_once('../php/skills-data.php');
$ajax_txt = "";
$ajax_txt .= "
<p><b class=sname>Punkty umiejêtnoœci (".$postac['um']."/".$max_um.")</b><br><small>Za ka¿dy poziom pocz¹wszy od 25 otrzymujesz 1 punkt umiejêtnoœci.</small><br></p>";
if($postac['um'] < $max_um){
////////////////////////////////////////////////////////////////////////////////////////////////////
$ajax_txt .= "<h2 class=sbranch>Droga Sily</h2>";
$ajax_txt .= "<p><b class=sname>Mocniejszy Cios (".$u['u2']."/10)</b><br>
<small>Zwiêksza Bazowy Atak.</small><br>
Nowy Poziom: <b class=sstats>Atak +".$skil[2][ilosc]."%<br></b>";
if($u['u2'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[2][poziom]."<br>Wymagana Profesja: ".$skil[2][tekst]."</small>";
if($skil[2][poziom] <= $poziom && $u['u2'] < 10 && ($postac['profesja'] == $skil[2][prof1] || $postac['profesja'] == $skil[2][prof2])) $ajax_txt .= "<br><a href=# onclick=naucz(2)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Witalna Zbroja (".$u['u3']."/5)</b><br>
<small>Zwieksza Ilosc ¯ycia za odpowiedni¹ ilosc Sily.</small><br>
Nowy Poziom: <b class=sstats>+".$skil[3][ilosc]." zycia za 1 pkt Sily<br></b>";
if($u['u3'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[3][poziom]."<br>Wymagana Profesja: ".$skil[3][tekst]."</small>";
if($skil[3][poziom] <= $poziom && $u['u3'] < 5 && ($postac['profesja'] == $skil[3][prof1] || $postac['profesja'] == $skil[3][prof2])) $ajax_txt .= "<br><a href=# onclick=naucz(3)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Wzmocniony Cios Krytyczny (".$u['u5']."/10)</b><br>
<small>Zwieksza Szanse na Cios Krytyczny.</small><br>
Nowy Poziom: <b class=sstats>Cios Krytyczny: +".$skil[5][ilosc]."%<br></b>";
if($u['u5'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[5][poziom]."</small>";
if($skil[5][poziom] <= $poziom && $u['u5'] < 10) $ajax_txt .= "<br><a href=# onclick=naucz(5)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Silny Cios Krytyczny (".$u['u8']."/8)</b><br>
<small>Zwieksza Moc Fizycznego Ciosu Krytycznego.</small><br>
Nowy Poziom: <b class=sstats>Sila Krytyka Fizycznego: +".$skil[8][ilosc]."%<br></b>";
if($u['u8'] < 8) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[8][poziom]."</small>";
if($skil[8][poziom] <= $poziom && $u['u8'] < 8) $ajax_txt .= "<br><a href=# onclick=naucz(8)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Ogluszenie (".$u['u10']."/5)</b><br>
<small>Oglusza Przeciwnika.<br>Musi Byæ noszona broñ dwurêczna</small><br>
Nowy Poziom: <b class=sstats>Ogluszenie: +".$skil[10][ilosc]."%<br></b>";
if($u['u10'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[10][poziom]."<br>Wymagana Profesja: Wojownik</small>";
if($skil[10][poziom] <= $poziom && $u['u10'] < 5 && $postac['profesja'] == 'Wojownik') $ajax_txt .= "<br><a href=# onclick=naucz(10)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Agresywny Atak (".$u['u11']."/11)</b><br>
<small>Atak ze zwiekszona iloscia obrazen.</small><br>
Nowy Poziom: <b class=sstats>Atak: +".$skil[11][ilosc]."<br>
Koszt Energii: ".$skil[11][energia]."<br></b>";
if($u['u11'] < 11) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[11][poziom]."<br>Wymagana Profesja: Wojownik, Paladyn, Tancerz Ostrzy</small>";
if($skil[11][poziom] <= $poziom && $u['u11'] < 11 && ($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tancerz Ostrzy')) $ajax_txt .= "<br><a href=# onclick=naucz(11)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Blyskawiczny Atak (".$u['u18']."/6)</b><br>
<small>Podczas Ataku SA zostaje powiekszone.</small><br>
Nowy Poziom: <b class=sstats>SA: +".$skil[18][ilosc]."<br>
Koszt Energii: ".$skil[18][energia]."<br></b>";
if($u['u18'] < 6) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[18][poziom]."<br>Wymagana Profesja: Wojownik, Paladyn, Tancerz Ostrzy</small>";
if($skil[18][poziom] <= $poziom && $u['u18'] < 6 && ($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tancerz Ostrzy')) $ajax_txt .= "<br><a href=# onclick=naucz(18)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Lepsza Tarcza (".$u['u24']."/10)</b><br>
<small>Zwieksza punkty bloku.</small><br>
Nowy Poziom: <b class=sstats>Blok +".$skil[24][ilosc]."<br></b>";
if($u['u24'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[24][poziom]."<br>Wymagana Profesja: Paladyn<br />Wymagany Przedmiot: Tarcza</small>";
if($skil[24][poziom] <= $poziom && $u['u24'] < 10 && $postac['profesja'] == 'Paladyn') $ajax_txt .= "<br><a href=# onclick=naucz(24)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Zamaszysty Cios (".$u['u25']."/5)</b><br>
<small>Atakuje kilku przeciwnikow naraz.</small><br>
Nowy Poziom: <b class=sstats>Atak ".$skil[25][ilosc]." przeciwnikow naraz<br>
Koszt Energii: ".$skil[25][energia]."<br></b>";
if($u['u25'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[25][poziom]."<br>Wymagana Profesja: Wojownik</small>";
if($skil[25][poziom] <= $poziom && $u['u25'] < 5 && $postac['profesja'] == 'Wojownik') $ajax_txt .= "<br><a href=# onclick=naucz(25)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Rzut Ostrzami (".$u['u27']."/5)</b><br>
<small>Atakuje kilku przeciwnikow naraz.</small><br>
Nowy Poziom: <b class=sstats>Atak ".$skil[27][ilosc]." przeciwnikow naraz<br>
Koszt Energii: ".$skil[27][energia]."<br></b>";
if($u['u27'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[27][poziom]."<br>Wymagana Profesja: Tancerz Ostrzy</small>";
if($skil[27][poziom] <= $poziom && $u['u27'] < 5 && $postac['profesja'] == 'Tancerz Ostrzy') $ajax_txt .= "<br><a href=# onclick=naucz(27)>NAUCZ</a>";
$ajax_txt .= "</p>";
////////////////////////////////////////////////////////////////////////////////////////////////////
$ajax_txt .= "<h2 class=sbranch>Droga Sprytu</h2>";
$ajax_txt .= "<p><b class=sname>Energicznosc (".$u['u7']."/20)</b><br>
<small>Dodaje Energie.</small><br>
Nowy Poziom: <b class=sstats>Energia +".$skil[7][ilosc]."</b>";
if($u['u7'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(7)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Witalnosc (".$u['u1']."/20)</b><br>
<small>Zwiêksza Maksymaln¹ Ilosc Zdrowia.</small><br>
Nowy Poziom: <b class=sstats>Zycie +".$skil[1][ilosc]."<br></b>";
if($u['u1'] < 20) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[1][poziom]."</small>";
if($skil[1][poziom] <= $poziom && $u['u1'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(1)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Zwinnosc (".$u['u23']."/10)</b><br>
<small>Zwiêksza Punkty Uniku.</small><br>
Nowy Poziom: <b class=sstats>Unik +".$skil[23][ilosc]."<br></b>";
if($u['u23'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[23][poziom]."</small>";
if($skil[23][poziom] <= $poziom && $u['u23'] < 10) $ajax_txt .= "<br><a href=# onclick=naucz(23)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Szybkosc (".$u['u6']."/20)</b><br>
<small>Zwiêksza Podstawowa Ilosc SA.</small><br>
Nowy Poziom: <b class=sstats>SA +".$skil[6][ilosc]."%<br></b>";
if($u['u6'] < 20) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[6][poziom]."</small>";
if($skil[6][poziom] <= $poziom && $u['u6'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(6)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Deszcz Strzal (".$u['u26']."/10)</b><br>
<small>Atakuje we wszystkich przeciwnikow.</small><br>
Nowy Poziom: <b class=sstats>".$skil[26][ilosc]." obrazen we wszystkich<br>
Koszt Energii: ".$skil[26][energia]."<br>
Koszt Strzal: ".$skil[26][strzaly]."<br></b>";
if($u['u26'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[26][poziom]."<br>Wymagana Profesja: Lowca, Tropiciel</small>";
if($skil[26][poziom] <= $poziom && $u['u26'] < 10 && ($postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tropiciel')) $ajax_txt .= "<br><a href=# onclick=naucz(26)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Wzmocniona Zatruta Strzala (".$u['u30']."/10)</b><br>
<small>Zwieksza obrazenia od trucizny.</small><br>
Nowy Poziom: <b class=sstats>".$skil[30][ilosc]." dodatkowych obrazen od trucizny<br>
Koszt Energii: ".$skil[30][energia]."<br></b>";
if($u['u30'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[30][poziom]."<br>Wymagana Profesja: Lowca<br />Wymagany Atrybut: Obrazenia od Trucizny</small>";
if($skil[30][poziom] <= $poziom && $u['u30'] < 10 && $postac['profesja'] == 'Lowca') $ajax_txt .= "<br><a href=# onclick=naucz(30)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Plonaca Strzala (".$u['u28']."/10)</b><br>
<small>Zadaje dodatkowe obrazenia od magii.</small><br>
Nowy Poziom: <b class=sstats>".$skil[28][ilosc]." dodatkowych obrazen magicznych<br>
Koszt Many: ".$skil[28][mana]."<br></b>";
if($u['u28'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[28][poziom]."<br>Wymagana Profesja: Tropiciel<br />Wymagany Atrybut: Obrazenia od Magii</small>";
if($skil[28][poziom] <= $poziom && $u['u28'] < 10 && $postac['profesja'] == 'Tropiciel') $ajax_txt .= "<br><a href=# onclick=naucz(28)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Celne Uderzenie (".$u['u12']."/5)</b><br>
<small>Zwieksza Szanse na Przebicie.</small><br>
Nowy Poziom: <b class=sstats>Przebicie: +".$skil[12][ilosc]."%<br>
Koszt Energii: ".$skil[12][energia]."<br></b>";
if($u['u12'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[12][poziom]."<br>Wymagana Profesja: Lowca, Tropiciel</small>";
if($skil[12][poziom] <= $poziom && $u['u12'] < 5 && ($postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tropiciel')) $ajax_txt .= "<br><a href=# onclick=naucz(12)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Bandazowanie Ran (".$u['u20']."/10)</b><br>
<small>Dzieki temu mozesz sie uleczyc.</small><br>
Nowy Poziom: <b class=sstats>Ulecza ".$skil[20][ilosc]." punktow zycia<br>
Koszt Energii: ".$skil[20][energia]."<br></b>";
if($u['u20'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[20][poziom]."<br>Wymagana Profesja: Wojownik, Tancerz Ostrzy, Lowca</small>";
if($skil[20][poziom] <= $poziom && $u['u20'] < 10 && ($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Tancerz Ostrzy' || $postac['profesja'] == 'Lowca')) $ajax_txt .= "<br><a href=# onclick=naucz(20)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Energicznosc (".$u['u15']."/20)</b><br>
<small>Odnawia Energie.</small><br>
Nowy Poziom: <b class=sstats>Odnawia ".$skil[15][ilosc]." Energii podczas uzycia<br></b>";
if($u['u15'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(15)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Trzeci Cios (".$u['u22']."/5)</b><br>
<small>Cios zostaje ulepszony o 50%.</small><br>
Nowy Poziom: <b class=sstats>Trzeci Cios: +".$skil[22][ilosc]."%<br></b>";
if($u['u22'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[22][poziom]."<br>Wymagana Profesja: Tancerz Ostrzy</small>";
if($skil[22][poziom] <= $poziom && $u['u22'] < 5 && $postac['profesja'] == 'Tancerz Ostrzy') $ajax_txt .= "<br><a href=# onclick=naucz(22)>NAUCZ</a>";
$ajax_txt .= "</p>";
////////////////////////////////////////////////////////////////////////////////////////////////////
$ajax_txt .= "<h2 class=sbranch>Droga Magii</h2>";
$ajax_txt .= "<p><b class=sname>Magia (".$u['u4']."/20)</b><br>
<small>Dodaje Mane.</small><br>
Nowy Poziom: <b class=sstats>Mana +".$skil[4][ilosc]."</b>";
if($u['u4'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(4)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Magiczny Cios Krytyczny (".$u['u9']."/8)</b><br>
<small>Zwieksza Moc Magicznego Ciosu Krytycznego.</small><br>
Nowy Poziom: <b class=sstats>Sila Krytyka Magicznego: +".$skil[9][ilosc]."%<br></b>";
if($u['u9'] < 8) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[9][poziom]."</small>";
if($skil[9][poziom] <= $poziom && $u['u9'] < 8) $ajax_txt .= "<br><a href=# onclick=naucz(9)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Leczenie Ran (".$u['u21']."/10)</b><br>
<small>Dzieki temu mozesz sie uleczyc.</small><br>
Nowy Poziom: <b class=sstats>Ulecza ".$skil[21][ilosc]." punktow zycia<br>
Koszt Energii: ".$skil[21][mana]."<br></b>";
if($u['u21'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[21][poziom]."<br>Wymagana Profesja: Paladyn, Tropiciel, Mag</small>";
if($skil[21][poziom] <= $poziom && $u['u21'] < 10 && ($postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tropiciel' || $postac['profesja'] == 'Mag')) $ajax_txt .= "<br><a href=# onclick=naucz(21)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Kula Ognia (".$u['u13']."/11)</b><br>
<small>Zwieksza Atak Magiczny.</small><br>
Nowy Poziom: <b class=sstats>Atak Magiczny: +".$skil[13][ilosc]."<br>
Koszt Many: ".$skil[13][mana]."<br></b>";
if($u['u13'] < 11) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[13][poziom]."<br>Wymagana Profesja: Mag</small>";
if($skil[13][poziom] <= $poziom && $u['u13'] < 11 && $postac['profesja'] == 'Mag') $ajax_txt .= "<br><a href=# onclick=naucz(13)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Magiczne Przyspieszenie (".$u['u14']."/3)</b><br>
<small>SA zostaje powiekszone podczas walki.</small><br>
Nowy Poziom: <b class=sstats>SA: +".$skil[14][ilosc]."<br>
Koszt Many: ".$skil[14][mana]."<br></b>";
if($u['u14'] < 3) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[14][poziom]."<br>Wymagana Profesja: Paladyn, Tropiciel, Mag</small>";
if($skil[14][poziom] <= $poziom && $u['u14'] < 3 && ($postac['profesja'] == 'Mag' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tropiciel')) $ajax_txt .= "<br><a href=# onclick=naucz(14)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Mentalnosc (".$u['u16']."/20)</b><br>
<small>Odnawia Mane.</small><br>
Nowy Poziom: <b class=sstats>Odnawia ".$skil[16][ilosc]." Many podczas uzycia<br></b>";
if($u['u16'] < 20) $ajax_txt .= "<br><a href=# onclick=naucz(16)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Leczenie (".$u['u17']."/5)</b><br>
<small>Zwieksza Leczenie u gracza.</small><br>
Nowy Poziom: <b class=sstats>Leczenie +".($skil[17][ilosc] * ($u['u17']+1))."<br></b>";
if($u['u17'] < 5) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[17][poziom]."<br>Wymagana Profesja: Mag</small>";
if($skil[17][poziom] <= $poziom && $u['u17'] < 5 && $postac['profesja'] == 'Mag') $ajax_txt .= "<br><a href=# onclick=naucz(17)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Plonace Uderzenie (".$u['u29']."/10)</b><br>
<small>Zadaje dodatkowe obrazenia od magii.</small><br>
Nowy Poziom: <b class=sstats>".$skil[29][ilosc]." dodatkowych obrazen magicznych<br>
Koszt Many: ".$skil[29][mana]."<br></b>";
if($u['u29'] < 10) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[29][poziom]."<br>Wymagana Profesja: Paladyn</small>";
if($skil[29][poziom] <= $poziom && $u['u29'] < 10 && $postac['profesja'] == 'Paladyn') $ajax_txt .= "<br><a href=# onclick=naucz(29)>NAUCZ</a>";
$ajax_txt .= "</p>";
$ajax_txt .= "<p><b class=sname>Deszcz Ognia (".$u['u19']."/7)</b><br>
<small>Atakuje we wszystkich przeciwników.</small><br>
Nowy Poziom: <b class=sstats>Zadaje +".$skil[19][ilosc]." obrazen wszystkim przeciwnikom<br>
Koszt Many: ".$skil[19][mana]."<br></b>";
if($u['u19'] < 7) $ajax_txt .= "<small style='color: gray;'>Wymagany Poziom: ".$skil[19][poziom]."<br>Wymagana Profesja: Mag</small>";
if($skil[19][poziom] <= $poziom && $u['u19'] < 7 && $postac['profesja'] == 'Mag') $ajax_txt .= "<br><a href=# onclick=naucz(19)>NAUCZ</a>";
$ajax_txt .= "</p>";
////////////////////////////////////////////////////////////////////////////////////////////////////
} else $ajax_txt .= "<p><small>Brakuje ci punktów Umiejetnosci</small></p>";
echo $ajax_txt;
exit;
?>