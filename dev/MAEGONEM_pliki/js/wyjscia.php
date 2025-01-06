<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');

$ajax_txt = "";

while($mp = mysql_fetch_array($mapa_przenies)){
$tpx = (($mp['x'] - $postac['x']) * 32) + 240;
$tpy = (($mp['y'] - $postac['y']) * 32) + 240;

$mapka = mysql_fetch_array(mysql_query("select * from mapa where id = ".$mp['do_mapa']." limit 1"));

if($mp['klucz'] != '') $txt = "<br>(Wymaga Klucza)";
else $txt = "";

$ajax_txt .= "
<style>
#mp_".$mp['id']." {
	position:absolute;
	z-index:390;
	display:none;
	padding:3px;
}
</style>

<div onmouseover=pokaz_npc('mp_".$mp['id']."'); onmouseout=schowaj_npc('mp_".$mp['id']."'); style='background-image: url(game_data/obrazki/interface/exit.png); display: block;
width: 32px; height: 32px; position: absolute; left: ".$tpx."px; top: ".$tpy."px; z-index: 29;' id=wyjscie></div>

<div style='display: none; top: ".($tpy + 20)."px; left: ".($tpx + 20)."px;' class='ctip tip' id=mp_".$mp['id'].">
".$mapka['nazwa']."".$txt."</div>
";

}

$npcall = mysql_query("select * from mapitem where mapa = ".$postac['mapa']." and x > ".($postac['x'] - 8)." and x < ".($postac['x'] + 8)." and y > ".($postac['y'] - 8)." and y < ".($postac['y'] + 8)." ");
while($data = mysql_fetch_array($npcall)){
$tpx = (($data['x'] - $postac['x']) * 32) + 240;
$tpy = (($data['y'] - $postac['y']) * 32) + 240;

$dane = mysql_fetch_array(mysql_query("select * from przedmiot_postac where id = ".$data['przedmiot']." limit 1"));
$blokujdalej = 0;
$wymagania = "";
$txt_klasa = "";

if($dane['klasa'] == 'unique'){
    $txt_klasa = "<b class='unique'>* unikat *</b>";
    $txtbg = "#FF9933";
} elseif($dane['klasa'] == 'heroic'){
    $txt_klasa = "<b class='heroic'>* heroiczny *</b>";
    $txtbg = "#000066";
} elseif($dane['klasa'] == 'legendary'){
    $txt_klasa = "<b class='legendary'>* legendarny *</b>";
    $txtbg = "#993399";
} elseif($dane['klasa'] == 'artefact'){
    $txt_klasa = "<b class='artefact'>* artefakt *</b>";
    $txtbg = "#CC0000";
} elseif($dane['klasa'] == 'upgraded'){
    $txt_klasa .= "<b class='upgraded'>* ulepszony *</b>";
    $txtbg = "#00CC99";
} else {
$txt_klasa = "";
$txtbg = "transparent";
}
$ajax_txt .= "
<style>
#oTip_item_".$dane['id']." {
	position: absolute;
	z-index: 9999999;
	display: none;
	padding: 3px;
}
#oTip_item_".$dane['id']." B.att {
	color: #ec0;
	display: inline;
}
#oTip_item_".$dane['id']." B.att2 {
	color: red;
	display: inline;
}
#oTip_item_".$dane['id']." B.upgraded {
	color: #FD0;
}
#oTip_item_".$dane['id']." B.unique {
	color: #DAA520;
}
#oTip_item_".$dane['id']." B.heroic {
	color: #2090FE;
}
#oTip_item_".$dane['id']." B.legendary {
	color: #FA9A20;
}
#oTip_item_".$dane['id']." B.artefact {
	color: #f0032a;
}
#oTip_item_".$dane['id']." B.expires {
	display: block;
	color: red;
}
</style>

<div style='display: none; top: ".($tpy + 20)."px; left: ".($tpx+20)."px;' class='ctip tip_item' id=oTip_item_".$dane['id'].">
<b>".$dane['nazwa']." ".$txt_klasa."</b>Typ: ".$dane['typ']."<br>";
if($dane['obr_min'] > 0 && $dane['obr_max'] > 0) $ajax_txt .= "Atak: ".$dane['obr_min']."-".$dane['obr_max']."<br>";
if($dane['obr_mag'] > 0) $ajax_txt .= "Atak Magiczny: ~".$dane['obr_mag']."<br>";
if($dane['mnoznik_typ'] == 1) $mnoznik_txt = "Atak/Sila: *";
if($dane['mnoznik_typ'] == 2) $mnoznik_txt = "Atak/Zrecznosc: *";
if($dane['mnoznik_typ'] == 3) $mnoznik_txt = "Atak/Intelekt: *";
if($dane['mnoznik'] > 0) $ajax_txt .= "".$mnoznik_txt."".($dane['mnoznik'] / 100)."<br>";
if($dane['obr_poi'] > 0) $ajax_txt .= "Zadaje ".$dane['obr_poi']." dodatkowych obrazen od trucizny<br>";
if($dane['zycie_za_sile'] > 0) $ajax_txt .= "".($dane['zycie_za_sile'] / 10)." zycia za 1 pkt sily<br>";
if($dane['ac'] > 0) $ajax_txt .= "AC: ".$dane['ac']."<br>";
if($dane['acm'] > 0) $ajax_txt .= "ACM: ".$dane['acm']."<br>";
if($dane['sa'] > 0) $ajax_txt .= "SA +".$dane['sa']."%<br>";
if($dane['zycie'] > 0) $ajax_txt .= "Zycie +".$dane['zycie']."<br>";
if($dane['ck'] > 0) $ajax_txt .= "Cios Krytyczny +".$dane['ck']."%<br>";
if($dane['ckf'] > 0) $ajax_txt .= "Sila Krytyka Fizycznego +".$dane['ckf']."%<br>";
if($dane['ckm'] > 0) $ajax_txt .= "Sila Krytyka Magicznego +".$dane['ckm']."%<br>";
if($dane['acp'] > 0) $ajax_txt .= "Redukuje ".$dane['acp']." obrazen od trucizny<br>";
if($dane['absorbcja'] > 0) $ajax_txt .= "Absorbuje ".$dane['absorbcja']." obrazen fizycznych<br>";
if($dane['mabsorbcja'] > 0) $ajax_txt .= "Absorbuje ".$dane['mabsorbcja']." obrazen magicznych<br>";
if($dane['leczenie'] > 0) $ajax_txt .= "Leczenie ".$dane['leczenie']." obrazen podczas walki<br>";
if($dane['sila'] > 0 && $dane['typ'] != 'Zwoj') $ajax_txt .= "Sila +".$dane['sila']."<br>";
if($dane['sila'] > 0 && $dane['typ'] == 'Zwoj'){
 $lok = mysql_fetch_array(mysql_query("select * from mapa where id = ".$dane['sila']." limit 1"));
 $ajax_txt .= "Teleportuje Gracza<br>";
}
if($dane['zrecznosc'] > 0 && $dane['typ'] != 'Zwoj') $ajax_txt .= "Zrecznosc +".$dane['zrecznosc']."<br>";
if($dane['intelekt'] > 0 && $dane['typ'] != 'Zwoj') $ajax_txt .= "Intelekt +".$dane['intelekt']."<br>";
if($dane['wszystkie_cechy'] > 0) $ajax_txt .= "Wszystkie cechy +".$dane['wszystkie_cechy']."<br>";
if($dane['unik'] > 0) $ajax_txt .= "Unik +".$dane['unik']."<br>";
if($dane['blok'] > 0) $ajax_txt .= "Blok +".$dane['blok']."<br>";
if($dane['przebicie'] > 0) $ajax_txt .= "Przebicie Pancerza +".$dane['przebicie']."%<br>";
if($dane['glebokarana'] > 0) $ajax_txt .= "".$dane['glebokarana']."% szans na gleboka rane +".$dane['atak_gr']." obrazen<br>";
if($dane['ilosc'] > 0) $ajax_txt .= "Ilosc: ".$dane['ilosc']."<br>";
if($dane['mikstura_leczenie'] > 0) $ajax_txt .= "Leczy ".$dane['mikstura_leczenie']." Punktow Zycia<br>";
if($dane['kontra'] > 0) $ajax_txt .= "".$dane['kontra']." szans na kontre po krytyku<br>";
if($dane['obnizac'] > 0) $ajax_txt .= "Obniza ".$dane['obnizac']." AC podczas ataku<br>";
if($dane['obnizacm'] > 0) $ajax_txt .= "Obniza ".$dane['obnizacm']." ACM podczas ataku<br>";
if($dane['obnizsa'] > 0) $ajax_txt .= "Obniza ".($dane['obnizsa'] / 100)." SA podczas ataku<br>";
if($dane['pelne_leczenie'] > 0) $ajax_txt .= "Pelne Leczenie pozostalo ".$dane['pelne_leczenie']." punktow do uleczania<br>";
if($dane['energia'] > 0) $ajax_txt .= "Energia +".$dane['energia']."<br>";
if($dane['mana'] > 0) $ajax_txt .= "Mana +".$dane['mana']."<br>";
if($dane['opis'] != '' && $dane['typ'] != 'Stroje') $ajax_txt .= "<i>".$dane['opis']."</i><br>";
else $ajax_txt .= "<i>Zmienia Wyglad Gracza</i><br>";

if($dane['prof1'] == 1 && $postac['profesja'] == 'Wojownik' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Wojownik</b><br>";  $blokujdalej = 1; }
elseif($dane['prof1'] == 1 && $postac['profesja'] != 'Wojownik' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Wojownik</b><br>";
if($dane['prof2'] == 1 && $postac['profesja'] == 'Paladyn' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Paladyn</b><br>";  $blokujdalej = 1;  }
elseif($dane['prof2'] == 1 && $postac['profesja'] != 'Paladyn' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Paladyn</b><br>";
if($dane['prof3'] == 1 && $postac['profesja'] == 'Tancerz Ostrzy' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Tancerz Ostrzy</b><br>"; $blokujdalej = 1; }
elseif($dane['prof3'] == 1 && $postac['profesja'] != 'Tancerz Ostrzy' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Tancerz Ostrzy</b><br>";
if($dane['prof4'] == 1 && $postac['profesja'] == 'Lowca' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Lowca</b><br>";  $blokujdalej = 1; }
elseif($dane['prof4'] == 1 && $postac['profesja'] != 'Lowca' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Lowca</b><br>";
if($dane['prof5'] == 1 && $postac['profesja'] == 'Tropiciel' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Tropiciel</b><br>"; $blokujdalej = 1; }
elseif($dane['prof5'] == 1 && $postac['profesja'] != 'Tropiciel' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Tropiciel</b><br>";
if($dane['prof6'] == 1 && $postac['profesja'] == 'Mag' && $blokujdalej == 0){ $wymagania = "<b class=att>Wymagana Profesja: Mag</b><br>";  $blokujdalej = 1; }
elseif($dane['prof6'] == 1 && $postac['profesja'] != 'Mag' && $blokujdalej == 0) $wymagania .= "<b class=att2>Wymagana Profesja: Mag</b><br>";

$ajax_txt .= $wymagania;

if($dane['wym_poziom'] > 0){
if($postac['poziom'] >= $dane['wym_poziom']) $ajax_txt .= "<b class=att>Wymagany poziom: ".$dane['wym_poziom']."</b>";
else $ajax_txt .= "<b class=att2>Wymagany poziom: ".$dane['wym_poziom']."</b>";
}
$ajax_txt .= "<br>Wartoœæ: ".$dane['wartosc_sprzedazy']."</div>

<a href='#' onmouseover=pokaz_item('oTip_item_".$dane['id']."'); onclick=zaloz('".$dane['id']."'); onmouseout=schowaj_item('oTip_item_".$dane['id']."');><div>
<div style='top: ".$tpy."px; left: ".$tpx."px; background-color: ".$txtbg."; background-image: 
url(".$dane['obrazek'].");'
 id=UID_763bb8 class='cequip'></div></div></a>";

$wymagania = "";

$left_piksel += 33;
if($left_piksel > 198){
$left_piksel = 0;
$top_piksel += 33;
}

} 

$npcall = mysql_query("select * from npc where mapa = ".$postac['mapa']." and x > ".($postac['x'] - 8)." and x < ".($postac['x'] + 8)." and y > ".($postac['y'] - 8)." and y < ".($postac['y'] + 8)." ");
while($npc = mysql_fetch_array($npcall)){
$tpx = (($npc['x'] - $postac['x']) * 32) + 240;
$tpy = (($npc['y'] - $postac['y']) * 32) + 240;

$dodatkowykod = "";
if($npc['shop'] > 0) $dodatkowykod .= "onclick=sklep_pokaz(".$npc['shop'].");";
$ajax_txt .= "

<style>
#npc_".$npc['id']." {
	position:absolute;
	z-index:390;
	display:none;
	padding:3px;
}
#npc_".$npc['id']." B.att {
	color:#ec0;
	display:inline;
}
#npc_".$npc['id']." B.att2 {
	color:red;
	display:inline;
}
#npc_".$npc['id']." B.upgraded {
	color:#FD0;
}
#npc_".$npc['id']." B.unique {
	color:#DAA520;
}
#npc_".$npc['id']." B.heroic {
	color:#2090FE;
}
#npc_".$npc['id']." B.legendary {
	color:#FA9A20;
}
#npc_".$npc['id']." B.artefact {
	color:#f0032a;
}
#npc_".$npc['id']." B.expires {
	display:block;
	color:red;
}
</style>

<a href=# onmouseover=pokaz_npc('npc_".$npc['id']."'); onmouseout=schowaj_npc('npc_".$npc['id']."'); ".$dodatkowykod."><div style='background-image: url(".$npc['obrazek']."); display: block;
 position: absolute; width: ".$npc['szerokosc']."px; height: ".$npc['dlugosc']."px; left: ".$tpx."px; top: ".$tpy."px; z-index: 29;'></div></a>

<div style='display: none; top: ".($tpy + 15)."px; left: ".($tpx + 15)."px;' class='ctip tip_npc' id=npc_".$npc['id'].">
<b>".$npc['nazwa']."</b>
<span>Lvl: ".$npc['poziom']."</span>";
if($npc['typ'] == 0) $ajax_txt .= "";
if($npc['typ'] == 1) $ajax_txt .= "<i>elita</i>";
if($npc['typ'] == 2) $ajax_txt .= "<i>elita II</i>";
if($npc['typ'] == 3) $ajax_txt .= "<i>elita III</i>";
if($npc['typ'] == 4) $ajax_txt .= "<i>heros</i>";
$ajax_txt .= "</div>";

}

$npcall = mysql_query("select * from mob where mapa = ".$postac['mapa']." and x > ".($postac['x'] - 8)." and x < ".($postac['x'] + 8)." and y > ".($postac['y'] - 8)." and y < ".($postac['y'] + 8)." and zycie > 0 and respawn <= ".$czas_ogolny." ");
while($npc = mysql_fetch_array($npcall)){
$tpx = (($npc['x'] - $postac['x']) * 32) + 240;
$tpy = (($npc['y'] - $postac['y']) * 32) + 240;

if($npc['grupa'] == 0) $grupa = "";
elseif($npc['grupa'] > 0) $grupa = "(grp)";

$grupacz = mysql_fetch_array(mysql_query("select * from grupa where postac_id = ".$postac['id']." limit 1"));
$wg = mysql_num_rows(mysql_query("select * from postac where grupa = ".$grupa['grupa_id']." and mapa = ".$postac['mapa']." and zycie > 0"));
$wg2 = mysql_num_rows(mysql_query("select * from mob where grupa = ".$npc['grupa']." and grupa != 0 and mapa = ".$postac['mapa']." and zycie > 0"));
if(($npc['grupa'] == 0 || $wg2<=10) && empty($grupacz) && $postac['speedfight'] == 0) $grupatxt = "walczt";
else $grupatxt = "walcz";

$ajax_txt .= "

<style>
#mob_".$npc['id']." {
	position:absolute;
	z-index:390;
	display:none;
	padding:3px;
}
#mob_".$npc['id']." B.att {
	color:#ec0;
	display:inline;
}
#mob_".$npc['id']." B.att2 {
	color:red;
	display:inline;
}
#mob_".$npc['id']." B.upgraded {
	color:#FD0;
}
#mob_".$npc['id']." B.unique {
	color:#DAA520;
}
#mob_".$npc['id']." B.heroic {
	color:#2090FE;
}
#mob_".$npc['id']." B.legendary {
	color:#FA9A20;
}
#mob_".$npc['id']." B.artefact {
	color:#f0032a;
}
#mob_".$npc['id']." B.expires {
	display:block;
	color:red;
}
</style>

<a href=# onmouseover=pokaz_npc('mob_".$npc['id']."'); onmouseout=schowaj_npc('mob_".$npc['id']."'); onclick=".$grupatxt."('".$npc['id']."','".$npc['grupa']."');><div style='background-image: url(".$npc['obrazek']."); display: block;
 position: absolute; width: ".$npc['szerokosc']."px; height: ".$npc['dlugosc']."px; left: ".$tpx."px; top: ".$tpy."px; z-index: 29;'></div></a>

<div style='display: none; top: ".($tpy + 15)."px; left: ".($tpx + 15)."px;' class='ctip tip_npc' id=mob_".$npc['id'].">
<b>".$npc['nazwa']."</b>";
$roznica = $npc['poziom'] - $poziom;
if($roznica < -13) $ajax_txt .= "<span style='color: grey;'>Lvl: ".$npc['poziom']." ".$grupa."</span>";
if($roznica >= -13 && $roznica < 10) $ajax_txt .= "<span>Lvl: ".$npc['poziom']." ".$grupa."</span>";
if($roznica >= 10 && $roznica < 20) $ajax_txt .= "<span style='color: yellow;'>Lvl: ".$npc['poziom']." ".$grupa."</span>";
if($roznica >= 20) $ajax_txt .= "<span style='color: darkred;'>Lvl: ".$npc['poziom']." ".$grupa."</span>";
if($npc['typ'] == 0) $ajax_txt .= "";
if($npc['typ'] == 1) $ajax_txt .= "<i>elita</i>";
if($npc['typ'] == 2) $ajax_txt .= "<i>elita II</i>";
if($npc['typ'] == 3) $ajax_txt .= "<i>elita III</i>";
if($npc['typ'] == 4) $ajax_txt .= "<i>heros</i>";
$ajax_txt .= "</div>";

}

$npcall = mysql_query("select * from postac where mapa = ".$postac['mapa']." and x > ".($postac['x'] - 8)." and x < ".($postac['x'] + 8)." and y > ".($postac['y'] - 8)." and y < ".($postac['y'] + 8)." and zalogowany = 1 and id != ".$postac['id']." ");
while($npc = mysql_fetch_array($npcall)){
$tpx = (($npc['x'] - $postac['x']) * 32) + 240;
$tpy = (($npc['y'] - $postac['y']) * 32) + 240;

if($npc['ranga'] == 1) $npc['poziom'] = "".$npc['poziom']."<br>[Moderator Czatu]";
if($npc['ranga'] == 2) $npc['poziom'] = "".$npc['poziom']."<br>[MG]";
if($npc['ranga'] == 3) $npc['poziom'] = "[SMG]";
if($npc['ranga'] == 4) $npc['poziom'] = "[ADM]";

$ajax_txt .= "

<style>
#postac_".$npc['id']." {
	position:absolute;
	z-index:390;
	display:none;
	padding:3px;
}
#postac_".$npc['id']." B.att {
	color:#ec0;
	display:inline;
}
#postac_".$npc['id']." B.att2 {
	color:red;
	display:inline;
}
#postac_".$npc['id']." B.upgraded {
	color:#FD0;
}
#postac_".$npc['id']." B.unique {
	color:#DAA520;
}
#postac_".$npc['id']." B.heroic {
	color:#2090FE;
}
#postac_".$npc['id']." B.legendary {
	color:#FA9A20;
}
#postac_".$npc['id']." B.artefact {
	color:#f0032a;
}
#postac_".$npc['id']." B.expires {
	display:block;
	color:red;
}
</style>

<a href=# onclick=pvp(".$npc['id'].",".$npc['grupa']."); onmouseover=pokaz_npc('postac_".$npc['id']."'); onmouseout=schowaj_npc('postac_".$npc['id']."');><div style='background-image: url(".$npc['obrazek']."); display: block;
 position: absolute; width: 32px; height: 48px; left: ".$tpx."px; top: ".$tpy."px; z-index: 29;'></div></a>

<div style='display: none; top: ".($tpy + 15)."px; left: ".($tpx + 15)."px;' class='ctip tip' id=postac_".$npc['id'].">
<b>".$npc['nazwa']."</b>";
if($npc['ranga'] < 3) $ajax_txt .= "<span>Lvl: ".$npc['poziom']."</span>";
else $ajax_txt .= "<span>".$npc['poziom']."</span>";
$ajax_txt .= "</div>";

}

echo $ajax_txt;
exit;
?>