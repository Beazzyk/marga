<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');
require_once('umiejetnosc-walka.php');

$ajax_txt = "";

$potwor = mysql_fetch_array(mysql_query("select * from mob where id = ".$_POST['id']." and mapa = ".$postac['mapa']." and (x = ".($postac['x'] - 1)." or x = ".($postac['x'] + 1)." or x = ".$postac['x'].") and (y = ".($postac['y'] - 1)." or y = ".($postac['y'] + 1)." or y = ".$postac['y'].") and respawn <= ".$czas_ogolny." limit 1"));
$mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$_POST['id']." and respawn <= ".$czas_ogolny." limit 1"));
require_once('../php/mobpower.php');

$roznica_poziomow1 = $poziom - $mob['poziom'];
$roznica_poziomow1 = (int)($roznica_poziomow1 / 3);
$herock += $roznica_poziomow1;
$roznica_poziomow2 = $mob['poziom'] - $poziom;
$roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
$mob['ck'] += $roznica_poziomow2;
$roznica_poziomow21 = $poziom - $mob['poziom'];
$herockf += ($roznica_poziomow21 / 100);
$herockm += ($roznica_poziomow21 / 100);
$roznica_poziomow22 = $mob['poziom'] - $poziom;
$mob['ckf'] += ($roznica_poziomow22 / 100);
$mob['ckm'] += ($roznica_poziomow22 / 100);

if(!empty($potwor)){
// KOD G��WNY //   
      // I CZʌ� - �ADOWANIE DANYCH //
  $tura[zycie_p] = $postac['zycie'];
  $tura[walka] = 0;
  $tura[gr] = 0;
  $sa[postac] = $herosa;
  $sa[mob] = ($potwor['sa'] / 100);
  $tura[od_p] = 0;
  if($potwor['profesja'] == 6) $tura[od_m] = 1;
  elseif($potwor['profesja'] == 4 || $potwor['profesja'] == 5) $tura[od_m] = 2;
  else $tura[od_m] = 0;
  $od_dwa = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and typ = 'BronDystansowa' limit 1"));
  $od_jed = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and (typ = 'Rozdzka' or typ = 'Laska') limit 1"));
  if(!empty($od_dwa)) $tura[od_p] = 2;
  if(!empty($od_jed)) $tura[od_p] = 1;
  $tura[odleglosc] = $tura[od_p] + $tura[od_m];
      // P�TLA GDY GRACZ MA HP WI�KSZE OD ZERA I POTWOR�W JEST ZERO //
  while($postac['zycie'] > 0 && $tura[walka] < 125){  
      // III CZʌ� - ATAK GRACZA//
  if($postac['zycie'] > 0){
  if($tura[odleglosc] <= 0 || $tura[od_p] > 0){
  if($heroobnizac > 0) $mob['ac'] -= $heroobnizac;
  if($mob['ac'] <= 0) $mob['ac'] = 0;
  if($heroobnizacm > 0) $mob['acm'] -= $heroobnizacm;
  if($heroobnizsa > 0) $sa[mob] -= $heroobnizsa;
  if($mob['acm'] <= 0) $mob['acm'] = 0;
  $deff = $mob['ac'];
  $defm = $mob['acm'];
  $atak = rand($postac['obrazenia_min'],$postac['obrazenia_max']);
    if($herounik >= $szansa) $tura[unik] = 1;
  else $tura[unik] = 0;
  $szansa = rand(1,100);
  if($heroblok >= $szansa) $tura[blok] = 1;
  else $tura[blok] = 0;
  if($tura[unik] == 1) $atak = 0; 
  if($tura[blok] == 1) $atak = 0;
  $szansa = rand(1,100);
  if($heroogluszenie >= $szansa) $sa[postac] += $herosa;
  if($mob['absorbcja'] > 0){ 
  if($atak >= ($mob['absorbcja'] + $deff)){ $deff += $mob['absorbcja']; $mob['absorbcja'] = 0; }
  else { if(($mob['absorbcja'] - $atak) <= 0){ $absorbuj = $mob['absorbcja']; } else { $absorbuj = $atak; $mob['absorbcja'] -= $absorbuj; $deff += $absorbuj; }  }
  }
  $matak = $heroatak_mag;
  if($tura[unik] == 1) $matak = 0; 
  if($tura[blok] == 1) $matak = 0; 
  if($mob['mabsorbcja'] > 0){
  if($matak >= ($mob['mabsorbcja'] + $defm)){ $defm += $mob['mabsorbcja']; $mob['mabsorbcja'] = 0; }
  else { if(($mob['mabsorbcja'] - $matak) <= 0){ $mabsorbuj = $mob['mabsorbcja']; } else { $mabsorbuj = $matak; $mob['mabsorbcja'] -= $mabsorbuj; $defm += $mabsorbuj; }   }
  }
  $patak = $heroatak_poi - $mob['acp'];
  if($patak < 0) $patak = 0;
  $szansa = rand(1,100);
  if($herock >= $szansa){
  $atak = ((int)($atak * $herockf));
  $matak = ((int)($matak * $herockm));
  }
  $szansa = rand(1,100);
  if($heroprzebicie >= $szansa){
         $deff = 0;
         $defm = 0;
  }
  $atak -= $deff;
  $matak -= $defm;
  if($atak < 0) $atak = 0;
  if($matak < 0) $matak = 0;
  if($patak < 0) $patak = 0;
  $szansa = rand(1,100);
  $mob['zycie'] -= ($atak + $matak + $patak);
  if($heroglebokarana >= $szansa) $tura[gr] = 3;
  mysql_query("update mob set zycie = zycie - ".($atak + $matak + $patak)." where id = ".$mob['id']." limit 1");
  $strzala = mysql_fetch_array(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1 and typ = 'Strzaly' limit 1"));
  if(!empty($strzala)){
              if($strzala['ilosc'] > 0){
                mysql_query("update przedmiot_postac set ilosc = ilosc - 1 where id = ".$strzala['id']." and ilosc > 0 limit 1");
                $strzala['ilosc'] -= 1;
              if($strzala['ilosc'] <= 0) mysql_query("delete from przedmiot_postac where id = ".$strzala['id']." limit 1");
            }
  }
  if($tura[gr] > 0 && $heroatak_gr > 0){
       $tura[gr] -= 1;
       $mob['zycie'] -= $heroatak_gr;
       mysql_query("update mob set zycie = zycie - ".$heroatak_gr." where id = ".$mob['id']." limit 1");
  }
  if($mob['zycie'] <= 0){
               $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
    mysql_query("update mob set zycie = 0, respawn = ".($czas_ogolny + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
    $roznica = 1 - (($poziom - $mob['poziom']) / 30);
    if($roznica <= 0) $roznica = 0;
    $mob['exp'] *= $roznica;
    $mob['exp'] *= $ust[exp];
    $mob['exp'] = (int)$mob['exp'];
    mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
    $ajax_txt .= "Pokonales ".$mob['nazwa'].""; 
    if($mob['exp'] >= 1 && $postac['wyczerpanie'] > 0) $ajax_txt .= " i zdobyles ".$mob['exp']." EXP   ";
    else $ajax_txt .= ".";
    $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
    $szansa = rand(1,1000);
    $roznicalvl = $poziom - $mob['poziom'];
    if(!empty($paczka)){
    if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                        $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                        $ajax_txt .= "Zdobyles ".$dane['nazwa']."";
                        mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                        VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                  } elseif($roznicalvl > $ust[di]) $ajax_txt .= "Zbyt duza roznica poziomow, Przedmiot zniszczony"; 
                  else $ajax_txt .= "Masz pelny Plecak, Przedmiot zniszczony";
    }
  }
  break;                
  }
  } else $tura[odleglosc] -= 1;
    $sa[mob] += ($mob['sa'] / 100);
    if($celne_uderzenie == 1){ $celne_uderzenie = 0; $heroprzebicie -= $skil[12][ilosc]; }  
  }   
      // IV CZʌ� - ATAK WROG�W //
  while($sa[postac] < $sa[mob]){
  if($mob['zycie'] > 0){
  if($tura[odleglosc] <= 0 || $mob['profesja'] == 4 || $mob['profesja'] == 5 || $mob['profesja'] == 6){
  if($mob['obnizac'] > 0) $heroac -= $mob['obnizac'];
  if($heroac <= 0) $heroac = 0;
  if($mob['obnizacm'] > 0) $heroacm -= $mob['obnizacm'];
  if($mob['obnizsa'] > 0) $sa[postac] -= ($mob['obnizsa'] / 100);
  if($heroacm <= 0) $heroacm = 0;
  $deff = $heroac;
  $defm = $heroacm;
  $atak = rand($mob['obr_min'],$mob['obr_max']) + $mob['sila'];
  $szansa = rand(1,100);
  if($herounik >= $szansa) $tura[unik] = 1;
  else $tura[unik] = 0;
  $szansa = rand(1,100);
  if($heroblok >= $szansa) $tura[blok] = 1;
  else $tura[blok] = 0;
  if($tura[unik] == 1) $atak = 0; 
  if($tura[blok] == 1) $atak = 0;
  if($heroabsorbcja > 0){ 
  if($atak >= ($heroabsorbcja + $deff)){ $deff += $heroabsorbcja; $heroabsorbcja = 0; }
  else { if(($heroabsorbcja - $atak) <= 0){ $absorbuj = $heroabsorbcja; } else { $absorbuj = $atak; $heroabsorbcja -= $absorbuj; $deff += $absorbuj; }  }
  }
  $matak = $mob['obr_mag'];
  if($tura[unik] == 1) $matak = 0; 
  if($tura[blok] == 1) $matak = 0;
  if($heromabsorbcja > 0){ 
  if($matak >= ($heromabsorbcja + $defm)){ $defm += $heromabsorbcja; $heromabsorbcja = 0; }
  else { if(($heromabsorbcja - $matak) <= 0){ $mabsorbuj = $heromabsorbcja; } else { $mabsorbuj = $matak; $heromabsorbcja -= $mabsorbuj; $defm += $mabsorbuj; }   }
  }
  $patak = $mob['obr_poi'] - $heroacp;
  $szansa = rand(1,100);
  if($mob['ck'] >= $szansa){
  $atak = ((int)($atak * ($mob['ckf'] / 100)));
  $matak = ((int)($matak * ($mob['ckm'] / 100)));
  $szansa = rand(1,100);
  if($herokontra >= $szansa) $sa[postac] += $herosa;
  }
  if($agresywny_atak == 1){
     $deff -= $skil[11][ilosc2];
     if($deff <= 0) $deff = 0;
  }
  $szansa = rand(1,100);
  if($mob['przebicie'] >= $szansa){
         $deff = 0;
         $defm = 0;
  }
  $atak -= $deff;
  $matak -= $defm;
  if($atak < 0) $atak = 0;
  if($matak < 0) $matak = 0;
  if($patak <= 0) $patak = 0;
  $postac['zycie'] -= ($atak + $matak + $patak);
  mysql_query("update postac set zycie = zycie - ".($atak + $matak + $patak)." where id = ".$postac['id']." limit 1");
  if($heroleczenie >= 1 && $postac['zycie'] > 0){
          if($tura[zycie_p] >= ($postac['zycie'] + $heroleczenie)){ $postac['zycie'] = $tura[zycie_p]; mysql_query("update postac set zycie = ".$tura[zycie_p]." where id = ".$postac['id']." limit 1"); }
          else { $postac['zycie'] += $heroleczenie; mysql_query("update postac set zycie = zycie + ".$heroleczenie." where id = ".$postac['id']." limit 1"); }
  }
  } else $tura[odleglosc] -= 1;
    $sa[postac] += $herosa; 
  }
  $agresywny_atak = 0;
  }
  $tura[walka] += 1;
  }
  if($tura[walka] >= 125){ 
  $ajax_txt .= "Walka Nierostrzygnieta"; 
  mysql_query("update mob set zycie = zycie_max where id = ".$mob['id']." limit 1");
  }
  elseif($postac['zycie'] <= 0){
  $ajax_txt .= "Wygrali Przeciwnicy";
  $zresppp = (time() + ($poziom * 10));
  mysql_query("update mob set zycie = zycie_max where id = ".$mob['id']." limit 1");
  mysql_query("update postac set zycie = 1, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  }
// KONIEC KODU //
}

echo $ajax_txt;
exit;
?>