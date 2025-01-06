<?php
class podst {
        function one($sql){
               $one = mysql_fetch_array(mysql_query($sql));
               return $one;
        }
        function zapisz($tabela, $par){
               mysql_query("update '".$tabela."' set '".$par."' ");
        }
}
$podstawy = new podst;

if($postac['zalogowany'] == 0){ $postac = ""; $_SESSION['postac'] = 0; }
if(empty($postac)) header('Location: ../../index.php');

if($postac['grupa'] == 0){
   $wgrupie = mysql_fetch_array(mysql_query("select * from grupa where postac_id = ".$postac['id']." "));
   if(!empty($wgrupie)) mysql_query("update postac set grupa = ".$wgrupie['grupa_id']." where id = ".$postac['id']." limit 1");
} else {
   $grupa = mysql_fetch_array(mysql_query("select * from grupa where postac_id = ".$postac['id']." "));
}

$poz_x = ((-$postac['x']) * 32) + 240;
$poz_y = ((-$postac['y']) * 32) + 240;

$ust = array(exp => 1, drop => 1, multidrop => 1, playerpower => 1, mobpower => 1, respawn => 1, di => 13);

$system = mysql_query("select * from system");
while($sys = mysql_fetch_array($system)){
      if($sys['funkcja'] == 'czysc_czat' && $sys['czas'] <= $czas_ogolny){
                mysql_query("update system set czas = ".($czas_ogolny + 900)." where funkcja = 'czysc_czat' limit 1");
                mysql_query("delete from chat");
      }
      if($sys['funkcja'] == 'wyczerpanie' && $sys['czas'] <= $czas_ogolny){
                mysql_query("update system set czas = ".($czas_ogolny + 86400)." where funkcja = 'wyczerpanie' limit 1");
                mysql_query("update postac set wyczerpanie = 180 where zalogowany = 0 or zalogowany = 1");
      }
}

$zalozone = mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1");

$heroatak_mag = 0;
$herock = 0;
$heroacp = 0;
$heroabsorbcja = 0;
$heromabsorbcja = 0;
$heroleczenier = 0;
$herounik = 0;
$heroblok = 0;
$heroprzebicie = 0;
$heroatak_poi = 0;
$heroglebokarana = 0;
$heroatak_gr = 0;
$herokontra = 0;
$heroobnizac = 0;
$heroobnizacm = 0;
$heroobnizsa = 0;
$herosilazycie = 0;
$heromana = 0;
$heroenergy = 100;
$herobhit = 0;
$herobck = 0;

while($ze = mysql_fetch_array($zalozone)){
$postac['zycie_max'] += $ze['zycie'];
$postac['sa'] += $ze['sa'];
$postac['ac'] += $ze['ac'];
$postac['acm'] += $ze['acm'];
$postac['sila'] += $ze['sila'];
$postac['zrecznosc'] += $ze['zrecznosc'];
$postac['intelekt'] += $ze['intelekt'];
$postac['sila'] += $ze['wszystkie_cechy'];
$postac['zrecznosc'] += $ze['wszystkie_cechy'];
$postac['intelekt'] += $ze['wszystkie_cechy'];
$herock += $ze['ck'];
$postac['ckf'] += $ze['ckf'];
$postac['ckm'] += $ze['ckm'];
$heroacp += $ze['acp'];
$heroabsorbcja += $ze['absorbcja'];
$heromabsorbcja += $ze['mabsorbcja'];
$heroleczenier += $ze['leczenie'];
$herounik += $ze['unik'];
$heroblok += $ze['blok'];
$heroprzebicie += $ze['przebicie'];
$heroatak_mag += $ze['obr_mag'];
$heroatak_poi += $ze['obr_poi'];
$heroglebokarana += $ze['glebokarana'];
$heroatak_gr += $ze['atak_gr'];
$herokontra += $ze['kontra'];
$heroobnizac += $ze['obnizac'];
$heroobnizacm += $ze['obnizacm'];
$heroobnizsa += ($ze['obnizsa'] / 100);
$herosilazycie += ($ze['zycie_za_sile'] / 10);
$heromana += $ze['mana'];
$heroenergy += $ze['energia'];
if($ze['opis'] == '10% Bardzo Mocny Cios Krytyczny') $herobck += 10;
}
//--------------------------------TYLKO DZIA£A NA BRONIACH-------------------------------------------//
if($postac['poziom'] <= 20) $mnoznik = 500;
else $mnoznik = 100;
$zalozone = mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1");
while($ze = mysql_fetch_array($zalozone)){
if($ze['mnoznik_typ'] == 1){
$postac['obrazenia_min'] += $ze['obr_min'] + ($postac['sila'] * (($ze['mnoznik'] - 1) / $mnoznik));
$postac['obrazenia_max'] += $ze['obr_max'] + ($postac['sila'] * (($ze['mnoznik'] - 1) / $mnoznik));
if($postac['profesja'] == 'Paladyn' && $heroatak_mag > 0) $heroatak_mag += ($postac['intelekt'] * (($ze['mnoznik'] - 1) / $mnoznik));
} elseif($ze['mnoznik_typ'] == 2){
$postac['obrazenia_min'] += $ze['obr_min'] + ($postac['zrecznosc'] * (($ze['mnoznik'] - 1) / $mnoznik));
$postac['obrazenia_max'] += $ze['obr_max'] + ($postac['zrecznosc'] * (($ze['mnoznik'] - 1) / $mnoznik));
if($postac['profesja'] == 'Tropiciel' && $heroatak_mag > 0) $heroatak_mag += ($postac['intelekt'] * (($ze['mnoznik'] - 1) / $mnoznik));
} elseif($ze['mnoznik_typ'] == 3){
$postac['obrazenia_min'] += $ze['obr_min'] + ($postac['intelekt'] * (($ze['mnoznik'] - 1) / $mnoznik));
$postac['obrazenia_max'] += $ze['obr_max'] + ($postac['intelekt'] * (($ze['mnoznik'] - 1) / $mnoznik));
$heroatak_mag += ($postac['intelekt'] * (($ze['mnoznik'] - 1) / $mnoznik));
}
}
//----------------------------------------------------------------------------------------------------//
$postac['zycie_max'] = $postac['zycie_max'] + ($postac['sila'] * 5);
if($postac['sila'] <= 100) $postac['obrazenia_min'] = $postac['obrazenia_min'] + $postac['sila']; 
else $postac['obrazenia_min'] = $postac['obrazenia_min'] + 100;
if($postac['sila'] <= 100) $postac['obrazenia_max'] = $postac['obrazenia_max'] + $postac['sila'];
else $postac['obrazenia_max'] = $postac['obrazenia_max'] + 100;
$postac['obrazenia_min'] = (int)$postac['obrazenia_min'];
$postac['obrazenia_max'] = (int)$postac['obrazenia_max'];
$heroatak_mag = (int)$heroatak_mag;

$poziom = $postac['poziom'];     // Aktualny poziom GRACZA //

require_once('um.php');

$herounik2 = $herounik;
$herounik = (int)(($herounik * 20) / $poziom);
$heroblok2 = $heroblok; // Tylko do Tarcz //
$heroblok = (int)(($heroblok * 20) / $poziom); // Tylko do Tarcz //

$licznik1 = (int)($postac['sila'] * $herosilazycie);
$postac['zycie_max'] += $licznik1;
$postac['zycie_max'] = (int)($postac['zycie_max'] * $ust[playerpower]);

// Jeœli zycie jest wiêksze od maksymalnego to zycie równe jest maksymalnemu ¿yciu postaci //
if($postac['zycie'] > $postac['zycie_max']){
$postac['zycie'] = $postac['zycie_max'];
mysql_query("update postac set zycie = ".$postac['zycie_max']." where id = ".$postac['id']." limit 1");
}
//----------------------------------£ADOWANIE DANYCH--------------------------------------------------//
$hp_hud = ($postac['zycie'] / $postac['zycie_max']) * 107;
$exp1 = ($poziom - 1) * ($poziom - 1) * ($poziom - 1) * ($poziom - 1);
if($exp1 > 0) $exp1 += 10;
$exp2 = ($poziom * $poziom * $poziom * $poziom) + 10;
$exp3 = $exp2 - $exp1;
$exp4 = $exp2 - $postac['exp'];
// Poziom w GÓRE!!!! //
if($exp4 <= 0){
$ppp = $poziom++ / 10;
if($ppp == (int)($poziom++ / 10)) mysql_query("update postac set sl = sl + 1 where id = ".$postac['id']." limit 1");
if($postac['profesja'] == 'Wojownik'){
mysql_query("update postac set poziom = poziom + 1, sila = sila + 4, zrecznosc = zrecznosc + 1 where id = ".$postac['id']." limit 1");
} elseif($postac['profesja'] == 'Paladyn'){
mysql_query("update postac set poziom = poziom + 1, sila = sila + 2, zrecznosc = zrecznosc + 1, intelekt = intelekt + 2 where id = ".$postac['id']." limit 1");
} elseif($postac['profesja'] == 'Tancerz Ostrzy'){
mysql_query("update postac set poziom = poziom + 1, sila = sila + 3, zrecznosc = zrecznosc + 2 where id = ".$postac['id']." limit 1");
} elseif($postac['profesja'] == 'Lowca'){
mysql_query("update postac set poziom = poziom + 1, sila = sila + 1, zrecznosc = zrecznosc + 4 where id = ".$postac['id']." limit 1");
} elseif($postac['profesja'] == 'Tropiciel'){
mysql_query("update postac set poziom = poziom + 1, sila = sila + 1, zrecznosc = zrecznosc + 2, intelekt = intelekt + 2 where id = ".$postac['id']." limit 1");
} elseif($postac['profesja'] == 'Mag'){
mysql_query("update postac set poziom = poziom + 1, zrecznosc = zrecznosc + 1, intelekt = intelekt + 4 where id = ".$postac['id']." limit 1");
}
}
// ----------------------------------- //
$exp_hud = ($exp4 / $exp3) * 107;
$exp_hud = 107 - $exp_hud;
if($hp_hud > 107) $hp_hud = 107;
if($exp_hud > 107) $exp_hud = 107;
if($postac['exp'] <= 999) $txt_exp1 = $postac['exp'];
if($postac['exp'] > 999) $txt_exp1 = "".($postac['exp'] / 1000)."k";
if($postac['exp'] > 999999) $txt_exp1 = "".($postac['exp'] / 1000000)."m";
if($postac['exp'] > 999999999) $txt_exp1 = "".($postac['exp'] / 1000000000)."g";
if($exp2 <= 999) $txt_exp2 = $exp2;
if($exp2 > 999) $txt_exp2 = "".($exp2 / 1000)."k";
if($exp2 > 999999) $txt_exp2 = "".($exp2 / 1000000)."m";
if($exp2 > 999999999) $txt_exp2 = "".($exp2 / 1000000000)."g";
if($postac['zloto'] <= 999) $txt_gold = $postac['zloto'];
if($postac['zloto'] > 999) $txt_gold = "".($postac['zloto'] / 1000)."k";
if($postac['zloto'] > 999999) $txt_gold = "".($postac['zloto'] / 1000000)."m";
if($postac['zloto'] > 999999999) $txt_gold = "".($postac['zloto'] / 1000000000)."g";
$atak_fiz = (int)(($postac['obrazenia_min'] + $postac['obrazenia_max']) / 2);
$atak_fiz2 = (int)(($postac['obrazenia_max'] - $postac['obrazenia_min']) / 2);
$herosa = ($postac['sa'] + $postac['zrecznosc']) / 100;
$heroac = $postac['ac'];
$heroacm = $postac['acm'];
$heroph = $postac['ph'];
$herosl = $postac['sl'];
if(time() > $postac['tw'] && $postac['wyczerpanie'] > 0){
                      $postac['wyczerpanie']--;
                      mysql_query("update postac set tw = ".(time() + 60).", wyczerpanie = ".$postac['wyczerpanie']." where id = ".$postac['id']." limit 1");
}
$herowyczerpanie = $postac['wyczerpanie'];
$herockf = $postac['ckf'] / 100;
$herockm = $postac['ckm'] / 100;
//----------------------------------------------------------------------------------------------------//
$eq1 = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and typ = 'Rozdzka' and zalozony = 1"));
$eq2 = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and typ = 'Laska' and zalozony = 1"));
$eq3 = $eq2 + $eq1;
if($eq3 > 0){
$postac['obrazenia_min'] = 0;
$postac['obrazenia_max'] = 0;
$atak_fiz = 0;
$atak_fiz2 = 0;
}
//----------------------------------------------------------------------------------------------------//
$i_mapa_przenies = mysql_num_rows(mysql_query("select * from mapa_przenies where mapa = ".$postac['mapa']." "));
$mapa_przenies = mysql_query("select * from mapa_przenies where mapa = ".$postac['mapa']." order by id asc");

$atak_fiz = (int)($atak_fiz * $ust[playerpower]);
$atak_fiz2 = (int)($atak_fiz2 * $ust[playerpower]);
$herosa = $herosa * $ust[playerpower];
$heroac = (int)($heroac * $ust[playerpower]);
$heroacm = (int)($heroacm * $ust[playerpower]);
$heroph = (int)($heroph * $ust[playerpower]);
$herosl = (int)($herosl * $ust[playerpower]);
$herockf = ($herockf * $ust[playerpower]);
$herockm = ($herockm * $ust[playerpower]);
$heroatak_mag = (int)($heroatak_mag * $ust[playerpower]);
$herock = (int)($herock * $ust[playerpower]);
$heroacp = (int)($heroacp * $ust[playerpower]);
$heroabsorbcja = (int)($heroabsorbcja * $ust[playerpower]);
$heromabsorbcja = (int)($heromabsorbcja * $ust[playerpower]);
$heroleczenier = (int)($heroleczenier * $ust[playerpower]);
$herounik = (int)($herounik * $ust[playerpower]);
$heroblok = (int)($heroblok * $ust[playerpower]);
$heroprzebicie = (int)($heroprzebicie * $ust[playerpower]);
$heroatak_poi = (int)($heroatak_poi * $ust[playerpower]);
$heroglebokarana = (int)($heroglebokarana * $ust[playerpower]);
$heroatak_gr = (int)($heroatak_gr * $ust[playerpower]);
$herokontra = (int)($herokontra * $ust[playerpower]);
$heroobnizac = (int)($heroobnizac * $ust[playerpower]);
$heroobnizacm = (int)($heroobnizacm * $ust[playerpower]);
$heroobnizsa = (int)($heroobnizsa * $ust[playerpower]);
$herosilazycie = (int)($herosilazycie * $ust[playerpower]);
$heromana = (int)($heromana * $ust[playerpower]);
$heroenergy = (int)($heroenergy * $ust[playerpower]);
?>