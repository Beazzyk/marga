<link rel="stylesheet" type="text/css" href="game/MAEGONEM_pliki/game_data/game.css">
<script type='text/javascript' src='game/MAEGONEM_pliki/js/jquery.js'></script>
<script type='text/javascript' src='game/MAEGONEM_pliki/js/hud_1.js'></script>
<script type='text/javascript' src='game/MAEGONEM_pliki/js/klawiatura.js'></script>
<script type='text/javascript' src='game/MAEGONEM_pliki/js/lewy-panel.js'></script>
<div style='width: 100%; height: 100%; position: absolute; left: 0px; top: 100px;'>
<?php
require_once('MAEGONEM_pliki/php/mysql-connect.php');
if($_GET['id'] > 0){
$postac = mysql_fetch_array(mysql_query("select * from postac where id = '".$_GET['id']."' limit 1"));
if($_GET['a'] == 'wystaw'){
if($_GET['id2'] <= 0){
$ajax_txt = "";

$przedmioty = mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0 order by id asc");
$left_piksel = 0;
$top_piksel = 0;
$blokujdalej = 0;
$wymagania = "";
while($dane = mysql_fetch_array($przedmioty)){
$blokujdalej = 0;
$wymagania = "";
$txt_klasa = "";

if($dane['klasa'] == 'unique') $txt_klasa = "<b class='unique'>* unikat *</b>";
elseif($dane['klasa'] == 'heroic') $txt_klasa = "<b class='heroic'>* heroiczny *</b>";
elseif($dane['klasa'] == 'legendary') $txt_klasa = "<b class='legendary'>* legendarny *</b>";
elseif($dane['klasa'] == 'artefact') $txt_klasa = "<b class='artefact'>* artefakt *</b>";
elseif($dane['klasa'] == 'upgraded') $txt_klasa .= "<b class='upgraded'>* ulepszony *</b>";
else $txt_klasa = "";
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

<div style='display: none; top: ".($top_piksel + 20)."px; left: 0px;' class='ctip tip_item' id=oTip_item_".$dane['id'].">
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
elseif($dane['opis'] == '') $ajax_txt .= "";
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

<a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=wystaw&id2=".$dane['id']."' onmouseover=pokaz_item('oTip_item_".$dane['id']."'); onclick=zaloz('".$dane['id']."'); onmouseout=schowaj_item('oTip_item_".$dane['id']."');><div>
<div style='top: ".$top_piksel."px; left: ".$left_piksel."px; background-color: transparent; background-image: 
url(game/MAEGONEM_pliki/".$dane['obrazek'].");'
 id=UID_763bb8 class='cequip'></div></div></a>";

$wymagania = "";

$left_piksel += 33;
if($left_piksel > 198){
$left_piksel = 0;
$top_piksel += 33;
}

} 
$ajax_txt .= "<hr><a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."' style='position: absolute; top: 80%;'>Powrót</a>";
$ajax_txt .= "</div>";

echo $ajax_txt;
} else {
if($_POST['cena'] > 0){
             mysql_query("update przedmiot_postac set postac = 0 where id = ".$_GET['id2']." and postac = ".$postac['id']." limit 1");
             if(mysql_affected_rows() != 0){
                echo "Wystawiles Przedmiot na aukcje.";
                mysql_query("insert into aukcje (item_id,cena,sprzedawca) VALUES ('".$_GET['id2']."','".$_POST['cena']."','".$postac['id']."')");
             }
}
        $dane = mysql_fetch_array(mysql_query("select * from przedmiot_postac where id = ".$_GET['id2']." and postac = ".$postac['id']." limit 1"));
             $blokujdalej = 0;
$wymagania = "";
$txt_klasa = "";

if($dane['klasa'] == 'unique') $txt_klasa = "<b class='unique'>* unikat *</b>";
elseif($dane['klasa'] == 'heroic') $txt_klasa = "<b class='heroic'>* heroiczny *</b>";
elseif($dane['klasa'] == 'legendary') $txt_klasa = "<b class='legendary'>* legendarny *</b>";
elseif($dane['klasa'] == 'artefact') $txt_klasa = "<b class='artefact'>* artefakt *</b>";
elseif($dane['klasa'] == 'upgraded') $txt_klasa .= "<b class='upgraded'>* ulepszony *</b>";
else $txt_klasa = "";
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

<div style='display: none; top: ".($top_piksel + 20)."px; left: 0px;' class='ctip tip_item' id=oTip_item_".$dane['id'].">
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
elseif($dane['opis'] == '') $ajax_txt .= "";
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

<a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=wystaw&id2=".$dane['id']."' onmouseover=pokaz_item('oTip_item_".$dane['id']."'); onclick=zaloz('".$dane['id']."'); onmouseout=schowaj_item('oTip_item_".$dane['id']."');><div>
<div style='top: ".$top_piksel."px; left: ".$left_piksel."px; background-color: transparent; background-image: 
url(game/MAEGONEM_pliki/".$dane['obrazek'].");'
 id=UID_763bb8 class='cequip'></div></div></a>";
 
 $ajax_txt .= "<hr><a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=wystaw' style='position: absolute; top: 80%;'>Powrót</a>";
 echo $ajax_txt;
 echo "<div style='position: absolute; top: 64px;'>
         <form action='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=wystaw&id2=".$_GET['id2']."' method='post'>
              CENA (w Z³ocie): <input name='cena'><input type='submit' value='Wystaw'>
         </form>
       </div>";
}
} elseif($_GET['a'] == 'przegl') {
if($_GET['kup'] > 0){
              $dane = mysql_fetch_array(mysql_query("select * from aukcje where item_id = ".$_GET['kup']." limit 1")); 
              if($dane['cena'] < $postac['zloto']){
                    mysql_query("update przedmiot_postac set postac = ".$postac['id']." where id = ".$_GET['kup']." limit 1");
                    if(mysql_affected_rows() > 0){
                           mysql_query("delete from aukcje where item_id = ".$_GET['kup']." limit 1");
                           mysql_query("update postac set zloto = zloto + ".$dane['cena']." where id = ".$dane['sprzedawca']." limit 1");
                           mysql_query("update postac set zloto = zloto - ".$dane['cena']." where id = ".$postac['id']." limit 1");
                           if(mysql_affected_rows() > 0){
                                   echo "Kupiles przedmiot na aukcji.";
                           } else echo "Blad";
                    } else echo "Blad";
              }
}
$ajax_txt = "";
$auk = mysql_query("select * from aukcje order by item_id asc"); 

$left_piksel = 0;
$top_piksel = 0;
$blokujdalej = 0;
$wymagania = "";
while($a = mysql_fetch_array($auk)){
$dane = mysql_fetch_array(mysql_query("select * from przedmiot_postac where id = ".$a['item_id']." limit 1"));
$sprz = mysql_fetch_array(mysql_query("select * from postac where id = ".$a['sprzedawca']." limit 1"));
$blokujdalej = 0;
$wymagania = "";
$txt_klasa = "";

if($dane['klasa'] == 'unique') $txt_klasa = "<b class='unique'>* unikat *</b>";
elseif($dane['klasa'] == 'heroic') $txt_klasa = "<b class='heroic'>* heroiczny *</b>";
elseif($dane['klasa'] == 'legendary') $txt_klasa = "<b class='legendary'>* legendarny *</b>";
elseif($dane['klasa'] == 'artefact') $txt_klasa = "<b class='artefact'>* artefakt *</b>";
elseif($dane['klasa'] == 'upgraded') $txt_klasa .= "<b class='upgraded'>* ulepszony *</b>";
else $txt_klasa = "";
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

<div style='display: none; top: ".($top_piksel + 20)."px; left: 0px;' class='ctip tip_item' id=oTip_item_".$dane['id'].">
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
elseif($dane['opis'] == '') $ajax_txt .= "";
else $ajax_txt .= "<i>Zmienia Wyglad Gracza</i><br>";
$ajax_txt .= "<i>Sprzedaj¹cy: ".$sprz['nazwa']."</i><br>";

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
$ajax_txt .= "<br>Wartoœæ: ".$dane['wartosc_sprzedazy']."<br>Cena na Aukcji: ".$a['cena']." Zlota</div>

<a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=przegl&kup=".$dane['id']."' onmouseover=pokaz_item('oTip_item_".$dane['id']."'); onclick=zaloz('".$dane['id']."'); onmouseout=schowaj_item('oTip_item_".$dane['id']."');><div>
<div style='top: ".$top_piksel."px; left: ".$left_piksel."px; background-color: transparent; background-image: 
url(game/MAEGONEM_pliki/".$dane['obrazek'].");'
 id=UID_763bb8 class='cequip'></div></div></a>";

$wymagania = "";

$left_piksel += 33;
if($left_piksel > 640){
$left_piksel = 0;
$top_piksel += 33;
}

} 
$ajax_txt .= "<hr><a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."' style='position: absolute; top: 80%;'>Powrót</a>";
$ajax_txt .= "</div>";

echo $ajax_txt;
} elseif($_GET['a'] == 'wyloguj') {
        $_SESSION['player'] = 0;
        echo "Wylogowano.
        <a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."'>Odswie¿</a>";
} else {
       echo "
              <a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=wystaw'>Wystaw Przedmiot na Aukcje</a><br>
              <a href='index.php?do=auction&baza=classicmargo&id=".$_GET['id']."&a=przegl'>Przegladaj Aukcje</a><br>
       ";
}
}
?>
</div>