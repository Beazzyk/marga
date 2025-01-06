<?php
      require_once('../php/mysql-connect.php');
      require_once('../php/load-data.php');
      require_once('umiejetnosc-walka.php');

      // £adowanie Logu
      if($_POST['act'] == 'wpiszsesje'){
                $_SESSION['active_hit'] = $_POST['id'];
      }
      if($_POST['act'] == 'loadskill'){
              $tax = "";
              if($u['u11'] > 0) $tax .= "<option value=11>Agresywny Atak</option>";
              if($u['u12'] > 0) $tax .= "<option value=12>Celne Uderzenie</option>";
              if($u['u13'] > 0) $tax .= "<option value=13>Kula Ognia</option>";
              if($u['u14'] > 0) $tax .= "<option value=14>Magiczne Przyspieszenie</option>";
              if($u['u15'] > 0) $tax .= "<option value=15>Energicznosc</option>";
              if($u['u16'] > 0) $tax .= "<option value=16>Mentalnosc</option>";
              if($u['u18'] > 0) $tax .= "<option value=18>Blyskawiczny Atak</option>";
              if($u['u19'] > 0) $tax .= "<option value=19>Deszcz Ognia</option>";
              if($u['u20'] > 0) $tax .= "<option value=20>Bandazowanie Ran</option>";
              if($u['u21'] > 0) $tax .= "<option value=21>Leczenie Ran</option>";
              if($u['u25'] > 0) $tax .= "<option value=25>Zamaszysty Cios</option>";
              if($u['u26'] > 0) $tax .= "<option value=26>Deszcz Strzal</option>";
              if($u['u27'] > 0) $tax .= "<option value=27>Rzut Ostrzami</option>";
              if($u['u28'] > 0) $tax .= "<option value=28>Plonaca Strzala</option>";
              if($u['u29'] > 0) $tax .= "<option value=29>Plonace Uderzenie</option>";
              if($u['u30'] > 0) $tax .= "<option value=30>Wzmocniona Zatruta Strzala</option>";
              echo $tax;
      }
      if($_POST['act'] == 'squad'){
      if($_SESSION['lockload'] == 0){
          if(empty($_SESSION['mana'])) $_SESSION['mana'] = $heromana;
          if(empty($_SESSION['energy'])) $_SESSION['energy'] = $heroenergy;
      }
          $_SESSION['lockload'] = 1;
          $heroenergy = $_SESSION['energy'];
          $heromana = $_SESSION['mana'];
          echo "<tbody><tr><td id=mana>".$heromana."</td><td id=energy>".$heroenergy."</td></tr></tbody>";
      }
      if($_POST['act'] == 'laduj'){
      $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));
      if(!empty($log)) echo $log['log'];
      }
      if($_POST['act'] == 'laduje'){
      $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));
      $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." and respawn <= ".time()." limit 1"));
      $mob2 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob2_id']." and respawn <= ".time()." limit 1"));
      $mob3 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob3_id']." and respawn <= ".time()." limit 1"));
      $mob4 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob4_id']." and respawn <= ".time()." limit 1"));
      $mob5 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob5_id']." and respawn <= ".time()." limit 1"));
      $mob6 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob6_id']." and respawn <= ".time()." limit 1"));
      $mob7 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob7_id']." and respawn <= ".time()." limit 1"));
      $mob8 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob8_id']." and respawn <= ".time()." limit 1"));
      $mob9 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob9_id']." and respawn <= ".time()." limit 1"));
      $mob10 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob10_id']." and respawn <= ".time()." limit 1"));
      if($_SESSION['active_hit'] == $mob['id']) $activestyle[1] = "border: 1px solid red; ";
      else $activestyle[1] = "";
      if($_SESSION['active_hit'] == $mob2['id']) $activestyle[2] = "border: 1px solid red; ";
      else $activestyle[2] = "";
      if($_SESSION['active_hit'] == $mob3['id']) $activestyle[3] = "border: 1px solid red; ";
      else $activestyle[3] = "";
      if($_SESSION['active_hit'] == $mob4['id']) $activestyle[4] = "border: 1px solid red; ";
      else $activestyle[4] = "";
      if($_SESSION['active_hit'] == $mob5['id']) $activestyle[5] = "border: 1px solid red; ";
      else $activestyle[5] = "";
      if($_SESSION['active_hit'] == $mob6['id']) $activestyle[6] = "border: 1px solid red; ";
      else $activestyle[6] = "";
      if($_SESSION['active_hit'] == $mob7['id']) $activestyle[7] = "border: 1px solid red; ";
      else $activestyle[7] = "";
      if($_SESSION['active_hit'] == $mob8['id']) $activestyle[8] = "border: 1px solid red; ";
      else $activestyle[8] = "";
      if($_SESSION['active_hit'] == $mob9['id']) $activestyle[9] = "border: 1px solid red; ";
      else $activestyle[9] = "";
      if($_SESSION['active_hit'] == $mob10['id']) $activestyle[10] = "border: 1px solid red; ";
      else $activestyle[10] = "";
      if(!empty($mob2)) $txt = "<img src='".$mob2['obrazek']."' onclick='sesjawalka(".$mob2['id'].");' style='cursor: pointer; ".$activestyle[2]."visibility: visible; display: block; left: 208px; top: 121px; z-index: 375;' id=mob2 class=cItem>";
      else $txt = "";
      if(!empty($mob3)) $txt2 = "<img src='".$mob3['obrazek']."' onclick='sesjawalka(".$mob3['id'].");' style='cursor: pointer; ".$activestyle[3]."visibility: visible; display: block; left: 272px; top: 121px; z-index: 375;' id=mob3 class=cItem>";
      else $txt2 = "";
      if(!empty($mob4)) $txt3 = "<img src='".$mob4['obrazek']."' onclick='sesjawalka(".$mob4['id'].");' style='cursor: pointer; ".$activestyle[4]."visibility: visible; display: block; left: 176px; top: 121px; z-index: 375;' id=mob4 class=cItem>";
      else $txt3 = "";
      if(!empty($mob5)) $txt4 = "<img src='".$mob5['obrazek']."' onclick='sesjawalka(".$mob5['id'].");' style='cursor: pointer; ".$activestyle[5]."visibility: visible; display: block; left: 304px; top: 121px; z-index: 375;' id=mob5 class=cItem>";
      else $txt4 = "";
      if(!empty($mob6)) $txt5 = "<img src='".$mob6['obrazek']."' onclick='sesjawalka(".$mob6['id'].");' style='cursor: pointer; ".$activestyle[6]."visibility: visible; display: block; left: 336px; top: 121px; z-index: 375;' id=mob6 class=cItem>";
      else $txt5 = "";
      if(!empty($mob7)) $txt6 = "<img src='".$mob7['obrazek']."' onclick='sesjawalka(".$mob7['id'].");' style='cursor: pointer; ".$activestyle[7]."visibility: visible; display: block; left: 368px; top: 121px; z-index: 375;' id=mob7 class=cItem>";
      else $txt6 = "";
      if(!empty($mob8)) $txt7 = "<img src='".$mob8['obrazek']."' onclick='sesjawalka(".$mob8['id'].");' style='cursor: pointer; ".$activestyle[8]."visibility: visible; display: block; left: 144px; top: 121px; z-index: 375;' id=mob8 class=cItem>";
      else $txt7 = "";
      if(!empty($mob9)) $txt8 = "<img src='".$mob9['obrazek']."' onclick='sesjawalka(".$mob9['id'].");' style='cursor: pointer; ".$activestyle[9]."visibility: visible; display: block; left: 112px; top: 121px; z-index: 375;' id=mob9 class=cItem>";
      else $txt8 = "";
      if(!empty($mob10)) $txt9 = "<img src='".$mob10['obrazek']."' onclick='sesjawalka(".$mob10['id'].");' style='cursor: pointer; ".$activestyle[10]."visibility: visible; display: block; left: 80px; top: 121px; z-index: 375;' id=mob10 class=cItem>";
      else $txt9 = "";
      echo "<div><div style='border: medium none; visibility: visible; display: block; left: 240px; top: 154px; background-position: 0px 48px; z-index: 378; background-image: url(&quot;".$postac['obrazek']."&quot;);' id=UID_dab7c0 class=cItem></div></div><div><img src='".$mob['obrazek']."' style='border: 1px solid red; visibility: hidden; display: none; left: 239px; top: 161px; z-index: 376'; class=cItem></div><div><img src='".$mob['obrazek']."' onclick='sesjawalka(".$mob['id'].");' style='cursor: pointer; ".$activestyle[1]."visibility: visible; display: block; left: 240px; top: 121px; z-index: 374;' id=mob class=cItem>".$txt."".$txt2."".$txt3."".$txt4."".$txt5."".$txt6."".$txt7."".$txt8."".$txt9."</div>";
      }
      if($_POST['act'] == 'zamknij'){
             $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));  
             $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." and respawn <= ".time()." limit 1"));
             $mob2 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob2_id']." and respawn <= ".time()." limit 1"));
             $mob3 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob3_id']." and respawn <= ".time()." limit 1"));
             $mob4 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob4_id']." and respawn <= ".time()." limit 1"));
             $mob5 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob5_id']." and respawn <= ".time()." limit 1"));
             $mob6 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob6_id']." and respawn <= ".time()." limit 1"));
             $mob7 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob7_id']." and respawn <= ".time()." limit 1"));
             $mob8 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob8_id']." and respawn <= ".time()." limit 1"));
             $mob9 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob9_id']." and respawn <= ".time()." limit 1"));
             $mob10 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob10_id']." and respawn <= ".time()." limit 1"));
             if($postac['zycie'] <= 1) mysql_query("delete from walkaturowa where id = ".$log['id']." or player1_id = ".$postac['id']);
             elseif(!empty($mob) || !empty($mob2) || !empty($mob3) || !empty($mob4) || !empty($mob5) || !empty($mob6) || !empty($mob7) || !empty($mob8) || !empty($mob9) || !empty($mob10)) echo "Nie mo¿na zakoñczyæ walki";
             elseif($log['tura'] >= 300) mysql_query("delete from walkaturowa where id = ".$log['id']." or player1_id = ".$postac['id']);
             else mysql_query("delete from walkaturowa where id = ".$log['id']." or player1_id = ".$postac['id']);
             if($postac['zycie'] <= 1) $ended = 1;
             elseif($log['tura'] >= 300) $ended = 1;
             else $ended = 1;
             if($ended == 1){
             $_SESSION['mana'] = "";
             $_SESSION['energy'] = "";
             $_SESSION['lockload'] = 0;
             $_SESSION['active_hit'] = 0;
             }
      }
      if($_POST['act'] == 'czas'){
             $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));  
             $timer = $log['endturn'] - time();
             if($timer > 0) echo "Do koñca tury pozostalo ".$timer."s";
             else echo "koniec tury";
      }
      if($_POST['act'] == 'attack' || $_POST['act'] == 'useskill'){
            $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));  
            if($log['mob1_sa'] <= $log['player1_sa']){
            if($_POST['skill'] != 15 && $_POST['skill'] != 16 && $_POST['skill'] != 19 && $_POST['skill'] != 20 && $_POST['skill'] != 21 && $_POST['skill'] != 25 && $_POST['skill'] != 26 && $_POST['skill'] != 27){
            if($log['mob1_pos'] == $log['player1_pos'] || ($postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tropiciel' || $postac['profesja'] == 'Mag')){
             $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$_SESSION['active_hit']." and respawn <= ".time()." limit 1"));
             $mob2 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob2_id']." and respawn <= ".time()." limit 1"));
             $roznica_poziomow1 = $poziom - $mob['poziom'];
             $roznica_poziomow1 = (int)($roznica_poziomow1 / 3);
             $herock += $roznica_poziomow1;
$roznica_poziomow21 = $poziom - $mob['poziom'];
$herockf += ($roznica_poziomow21 / 100);
$herockm += ($roznica_poziomow21 / 100);
             mysql_query("update walkaturowa set endturn = ".(time() + 20).", mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
             $heroprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             $mob['ac'] -= $heroobnizac;
             $mob['acm'] -= $heroobnizacm;
             if($mob['ac'] < 1) $mob['ac'] = 0;
             if($mob['acm'] < 1) $mob['acm'] = 0;
             if($mob['acm'] < 1) $mob['acp'] = 0;
             $atak = rand($postac['obrazenia_min'], $postac['obrazenia_max']); 
             $szansa = rand(1,100);
             if($herobck >= $szansa){
                $atak = ((int)($atak * ($herockf*2)));
                $heroatak_mag = ((int)($heroatak_mag * ($herockm*2)));
                $ckkom = 2;
             } else {
                  $szansa = rand(1,100);
                  if($herock >= $szansa){
                      $atak = ((int)($atak * $herockf));
                      $heroatak_mag = ((int)($heroatak_mag * $herockm));
                      $ckkom = 1;
                  }
             }
             if($heroatak_mag > 0) $magtekst = " + <span class=magicdmg>".$heroatak_mag."</span>";
             $log['log'] .= "<p class=battr1>".$postac['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
            if($_POST['act'] == 'useskill' && $_POST['skill'] > 0){
             if($u['u12'] > 0 && $_SESSION['energy'] >= $skil[12][energia] && $_POST['skill'] == 12){
              $heroprzebicie += $skil[12][ilosc];
              $_SESSION['energy'] -= $skil[12][energia];
              $log['log'] .= "+ Celne Uderzenie<br>";
              }
              if($u['u11'] > 0 && $_SESSION['energy'] >= $skil[11][energia] && $_POST['skill'] == 11){
     $atak += $skil[11][ilosc];
     $_SESSION['energy'] -= $skil[11][energia];
     $log['log'] .= "+ Agresywny Atak<br>";
  }
  if($u['u13'] > 0 && $_SESSION['mana'] >= $skil[13][mana] && $_POST['skill'] == 13){
     $heroatak_mag += $skil[13][ilosc];
     $_SESSION['mana'] -= $skil[13][mana];
     $log['log'] .= "+ Kula Ognia<br>";
  }
  if($u['u14'] > 0 && $_SESSION['mana'] >= $skil[14][mana] && $_POST['skill'] == 14){
     $_SESSION['mana'] -= $skil[14][mana];
     $log['log'] .= "+".($skil[14][ilosc]*100)."% SA [Magiczne Przyspieszenie]<br>";
     mysql_query("update walkaturowa set player1_sa = player1_sa + ".$skil[14][ilosc]." where id = ".$log['id']." limit 1");
  }
  if($u['u18'] > 0 && $_SESSION['energy'] >= $skil[18][energia] && $_POST['skill'] == 18){
     $_SESSION['energy'] -= $skil[18][energia];
     $log['log'] .= "+".($skil[18][ilosc]*100)."% SA [Blyskawiczny Atak]<br>";
     mysql_query("update walkaturowa set player1_sa = player1_sa + ".$skil[18][ilosc]." where id = ".$log['id']." limit 1");
  }
  if($u['u28'] > 0 && $_SESSION['mana'] >= $skil[28][mana] && $_POST['skill'] == 28 && $heroatak_mag > 0){
     $_SESSION['mana'] -= $skil[28][mana];
     $heroatak_mag += $skil[28][ilosc];
     $log['log'] .= "+ Plonaca Strzala<br>";
  }
  if($u['u29'] > 0 && $_SESSION['mana'] >= $skil[29][mana] && $_POST['skill'] == 29 && $heroatak_mag > 0){
     $_SESSION['energy'] -= $skil[29][mana];
     $heroatak_mag += $skil[29][ilosc];
     $log['log'] .= "+ Plonace Uderzenie<br>";
  }
  if($u['u30'] > 0 && $_SESSION['energy'] >= $skil[30][energia] && $_POST['skill'] == 30 && $heroatak_poi > 0){
     $_SESSION['energy'] -= $skil[30][energia];
     $heroatak_poi += $skil[30][ilosc];
     $log['log'] .= "+ Wzmocniona Zatruta Strzala<br>";
  }
            }
             if($ckkom == 1){
                $log['log'] .= "+ Cios Krytyczny<br>";
             } elseif($ckkom == 2) {
                $log['log'] .= "+ Bardzo Mocny Cios Krytyczny<br>";
             }
             $szansa = rand(1,100);
             if($herobhit >= $szansa){
             $log['log'] .= "+ Trzeci Cios<br>";
             $atak = (int)($atak * 1.5);     
             }
             $szansa = rand(1,100);
             if($heroogluszenie >= $szansa){
             $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
             }
             if($heroglebokarana >= $szansa){
                 $log['log'] .= "+ Gleboka Rana<br>";
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $mob['ac'] = 0;
                 $mob['acm'] = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($mob['unik'] >= $szansa){
                 $atak = 0;
                 $heroatak_mag = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($mob['blok'] >= $szansa){
                 $atak = 0;
                 $heroatak_mag = 0;
                 $log['log'] .= "- Blok<br>";
             }
             if($heroobnizac > 0) $log['log'] .= "+ Obnizenie AC o ".$heroobnizac."<br>";
             if($heroobnizacm > 0) $log['log'] .= "+ Obnizenie ACM o ".$heroobnizacm."<br>";
             if($heroobnizsa > 0){ $log['log'] .= "+ Obnizenie SA o ".$heroobnizsa."<br>";
             mysql_query("update walkaturowa set mob1_sa = mob1_sa - ".$heroobnizsa." where id = ".$log['id']." limit 1"); }
             $atak -= $mob['ac'];
             $heroatak_mag -= $mob['acm'];
             $heroatak_poi -= $mob['acp'];
             if($atak < 1) $atak = 0;
             if($heroatak_mag < 1) $heroatak_mag = 0;
             if($heroatak_poi < 1) $heroatak_poi = 0;
             $mob['zycie'] -= $atak;
             $mob['zycie'] -= $heroatak_mag;
             if($mob['zycie'] < 1) $mob['zycie'] = 0;
             $mobprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             if($heroatak_mag > 0) $magtekst = " + <span class=magicdmg>".$heroatak_mag."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$mob['nazwa']."(".$mobprocent."%)</p>";
             $mob['zycie'] -= $heroatak_poi;
             if($heroatak_poi > 0) $log['log'] .= " <p class=battr1>Przeciwnik otrzymal ".$heroatak_poi." obrazen od trucizny</p>";
             $szansa = rand(1,100);
             if($heroglebokarana >= $szansa){
                 $mob['zycie'] -= $heroatak_gr;
                 $log['log'] .= "<p class=battr1>".$mob['nazwa']." otrzymal ".$heroatak_gr." obrazen od glebokiej rany </p>";
             }
             mysql_query("update mob set zycie = ".$mob['zycie']." where id = ".$mob['id']." limit 1");
             $strzala = mysql_fetch_array(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1 and typ = 'Strzaly' limit 1"));
             if(!empty($strzala)){
              if($strzala['ilosc'] > 0){
                mysql_query("update przedmiot_postac set ilosc = ilosc - 1 where id = ".$strzala['id']." and ilosc > 0 limit 1");
                $strzala['ilosc'] -= 1;
              if($strzala['ilosc'] <= 0) mysql_query("delete from przedmiot_postac where id = ".$strzala['id']." limit 1");
              }
            }
             if($mob['zycie'] < 1){
             $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
             mysql_query("update mob set zajety_walka = 0, zycie = 0, respawn = ".($czas_ogolny + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
             $roznica = 1 - (($poziom - $mob['poziom']) / 30);
             if($roznica <= 0) $roznica = 0;
             $mob['exp'] *= $roznica;
             $mob['exp'] *= $ust[exp];
             $mob['exp'] = (int)$mob['exp'];
             mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
             $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
             $szansa = rand(1,1000);
             $roznicalvl = $poziom - $mob['poziom'];
             if(!empty($paczka)){
             if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                                                $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                                                $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."</p>";
                                                mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                                                VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                                        } elseif($roznicalvl > $ust[di]) $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />lecz z powodu duzej przewagi poziomow<br />przedmiot zostal zniszczony.</p>";
                                        else $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />Masz pelny Plecak, Przedmiot zniszczony</p>";
                                  }
                      }
             if($mob['exp'] > 0 && $postac['wyczerpanie'] > 0) $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p><p class=battr101>Zdobyto lacznie ".$mob['exp']." punktow doswiadczenia</p>";
             else $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p>";
             }
             if($log['tura'] >= 300) $log['log'] .= "<p class=battr101>Walka Nierostrzygnieta</p>";
             mysql_query("update walkaturowa set tura = tura + 1 where id = ".$log['id']." limit 1");
             $tekst = $log['log'];
             mysql_query("update walkaturowa set log = '".$tekst."' where id = ".$log['id']." limit 1");
             echo $tekst;
             $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." and respawn <= ".time()." limit 1"));
             $mob2 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob2_id']." and respawn <= ".time()." limit 1"));  
             $mob3 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob3_id']." and respawn <= ".time()." limit 1"));  
             $mob4 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob4_id']." and respawn <= ".time()." limit 1"));  
             $mob5 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob5_id']." and respawn <= ".time()." limit 1"));  
             $mob6 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob6_id']." and respawn <= ".time()." limit 1"));  
             $mob7 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob7_id']." and respawn <= ".time()." limit 1"));  
             $mob8 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob8_id']." and respawn <= ".time()." limit 1"));  
             $mob9 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob9_id']." and respawn <= ".time()." limit 1"));  
             $mob10 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob10_id']." and respawn <= ".time()." limit 1"));  
             if(empty($mob) && empty($mob2) && empty($mob3) &&  empty($mob4) &&  empty($mob5) &&  empty($mob6) &&  empty($mob7) &&  empty($mob8) &&  empty($mob9) &&  empty($mob10)){
                mysql_query("update postac set zajety_walka = 0 where id = ".$postac['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob2['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob3['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob4['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob5['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob6['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob7['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob8['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob9['id']." limit 1");
                mysql_query("update mob set zajety_walka = 0 where id = ".$mob10['id']." limit 1");
             }
             } else echo true;
          } elseif($_POST['skill'] == 15){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Odzyskano ".$skil[15][ilosc]." Energii</p>";
                $_SESSION['energy'] += $skil[15][ilosc];
                mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
                echo $log['log'];
          } elseif($_POST['skill'] == 16){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Odzyskano ".$skil[16][ilosc]." Many</p>";
                $_SESSION['mana'] += $skil[16][ilosc];
                mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
                echo $log['log'];
          } elseif($_POST['skill'] == 20 && $_SESSION['mana'] >= $skil[20][energia]){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uleczono ".$skil[20][ilosc]." Punktow Zycia</p>";
                $_SESSION['energy'] -= $skil[20][energia];
                mysql_query("update postac set zycie = zycie + ".$skil[20][ilosc]." where id = ".$postac['id']." limit 1");
                mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
                echo $log['log'];
          } elseif($_POST['skill'] == 21 && $_SESSION['mana'] >= $skil[21][mana]){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uleczono ".$skil[21][ilosc]." Punktow Zycia</p>";
                $_SESSION['mana'] -= $skil[21][mana];
                mysql_query("update postac set zycie = zycie + ".$skil[21][ilosc]." where id = ".$postac['id']." limit 1");
                mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
                echo $log['log'];
          } elseif($_POST['skill'] == 19 && $_SESSION['mana'] >= $skil[19][mana]){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uzywasz Deszcz Ognia";
                $_SESSION['mana'] -= $skil[19][mana];
                mysql_query("update mob set zycie = zycie - ".$skil[19][ilosc]." where id = ".$mob['id']." or (grupa = ".$mob['grupa']." and grupa > 0) limit 10");
                $m = mysql_query("select * from mob where (respawn <= ".time()." and grupa > 0 and grupa = ".$mob['grupa'].") or id = ".$mob['id']." order by id asc");
          while($mob = mysql_fetch_array($m)){
          $mob['zycie'] -= $skil[19][ilosc];
          $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
          $mobprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             $log['log'] .= "<br>".$skil[19][ilosc]." obrazen otrzymal ".$mob['nazwa']."(".$mobprocent."%)";
          if(!empty($mob)) mysql_query("update postac set zajety_walka = 0 where id = ".$postac['id']." limit 1");  
             if($mob['zycie'] < 1){
             mysql_query("update mob set zajety_walka = 0, zycie = 0, respawn = ".(time() + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
             $roznica = 1 - (($poziom - $mob['poziom']) / 30);
             if($roznica <= 0) $roznica = 0;
             $mob['exp'] *= $roznica;
             $mob['exp'] *= $ust[exp];
             $mob['exp'] = (int)$mob['exp'];
             mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
             $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
             $szansa = rand(1,1000);
             $roznicalvl = $poziom - $mob['poziom'];
             if(!empty($paczka)){
             if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                                                $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                                                $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."</p>";
                                                mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                                                VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                                        } elseif($roznicalvl > $ust[di]) $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />lecz z powodu duzej przewagi poziomow<br />przedmiot zostal zniszczony.</p>";
                                        else $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />Masz pelny Plecak, Przedmiot zniszczony</p>";
                                  }
                      }
             if($mob['exp'] > 0 && $postac['wyczerpanie'] > 0) $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p><p class=battr101>Zdobyto lacznie ".$mob['exp']." punktow doswiadczenia</p>";
             else $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p>";
             }
          }
          $log['log'] .= "</p>";
          mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
          echo $log['log'];
          } elseif($_POST['skill'] == 25 && $_SESSION['energy'] >= $skil[25][energia]){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uzywasz Zamaszysty Cios";
                $_SESSION['energy'] -= $skil[25][energia];
                $atak = rand($postac['obrazenia_min'], $postac['obrazenia_max']);
                $m = mysql_query("select * from mob where (respawn <= ".time()." and grupa > 0 and grupa = ".$mob['grupa'].") or id = ".$mob['id']." order by id asc limit ".$skil[25][ilosc]);
          while($mob = mysql_fetch_array($m)){
                       $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
          $mob['zycie'] -= $atak;
          mysql_query("update mob set zycie = zycie - ".$atak." where id = ".$mob['id']." limit 1");
          $mobprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             $log['log'] .= "<br>".$atak." obrazen otrzymal ".$mob['nazwa']."(".$mobprocent."%)";
          if(!empty($mob)) mysql_query("update postac set zajety_walka = 0 where id = ".$postac['id']." limit 1");  
             if($mob['zycie'] < 1){
             mysql_query("update mob set zajety_walka = 0, zycie = 0, respawn = ".(time() + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
             $roznica = 1 - (($poziom - $mob['poziom']) / 30);
             if($roznica <= 0) $roznica = 0;
             $mob['exp'] *= $roznica;
             $mob['exp'] *= $ust[exp];
             $mob['exp'] = (int)$mob['exp'];
             mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
             $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
             $szansa = rand(1,1000);
             $roznicalvl = $poziom - $mob['poziom'];
             if(!empty($paczka)){
             if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                                                $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                                                $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."</p>";
                                                mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                                                VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                                        } elseif($roznicalvl > $ust[di]) $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />lecz z powodu duzej przewagi poziomow<br />przedmiot zostal zniszczony.</p>";
                                        else $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />Masz pelny Plecak, Przedmiot zniszczony</p>";
                                  }
                      }
             if($mob['exp'] > 0 && $postac['wyczerpanie'] > 0) $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p><p class=battr101>Zdobyto lacznie ".$mob['exp']." punktow doswiadczenia</p>";
             else $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p>";
             }
          }
          $log['log'] .= "</p>";
          mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
          echo $log['log'];
          } elseif($_POST['skill'] == 27 && $_SESSION['energy'] >= $skil[27][energia]){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uzywasz Rzut Ostrzami";
                $_SESSION['energy'] -= $skil[27][energia];
                $atak = rand($postac['obrazenia_min'], $postac['obrazenia_max']);
                $m = mysql_query("select * from mob where (respawn <= ".time()." and grupa > 0 and grupa = ".$mob['grupa'].") or id = ".$mob['id']." order by id asc limit ".$skil[27][ilosc]);
          while($mob = mysql_fetch_array($m)){
                       $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
          $mob['zycie'] -= $atak;
          mysql_query("update mob set zycie = zycie - ".$atak." where id = ".$mob['id']." limit 1");
          $mobprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             $log['log'] .= "<br>".$atak." obrazen otrzymal ".$mob['nazwa']."(".$mobprocent."%)";
          if(!empty($mob)) mysql_query("update postac set zajety_walka = 0 where id = ".$postac['id']." limit 1");  
             if($mob['zycie'] < 1){
             mysql_query("update mob set zajety_walka = 0, zycie = 0, respawn = ".(time() + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
             $roznica = 1 - (($poziom - $mob['poziom']) / 30);
             if($roznica <= 0) $roznica = 0;
             $mob['exp'] *= $roznica;
             $mob['exp'] *= $ust[exp];
             $mob['exp'] = (int)$mob['exp'];
             mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
             $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
             $szansa = rand(1,1000);
             $roznicalvl = $poziom - $mob['poziom'];
             if(!empty($paczka)){
             if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                                                $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                                                $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."</p>";
                                                mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                                                VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                                        } elseif($roznicalvl > $ust[di]) $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />lecz z powodu duzej przewagi poziomow<br />przedmiot zostal zniszczony.</p>";
                                        else $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />Masz pelny Plecak, Przedmiot zniszczony</p>";
                                  }
                      }
             if($mob['exp'] > 0 && $postac['wyczerpanie'] > 0) $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p><p class=battr101>Zdobyto lacznie ".$mob['exp']." punktow doswiadczenia</p>";
             else $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p>";
             }
          }
          $log['log'] .= "</p>";
          mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
          echo $log['log'];
          } elseif($_POST['skill'] == 26 && $_SESSION['energy'] >= $skil[26][energia]){
            $strzala = mysql_fetch_array(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 1 and typ = 'Strzaly' limit 1"));
             if(!empty($strzala)){
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." limit 1"));
                $log['log'] .= "<p class=battr1>Uzywasz Deszcz Strzal";
                $_SESSION['energy'] -= $skil[26][energia];
                mysql_query("update mob set zycie = zycie - ".$skil[26][ilosc]." where id = ".$mob['id']." or (grupa = ".$mob['grupa']." and grupa > 0) limit 10");
                $m = mysql_query("select * from mob where (respawn <= ".time()." and grupa > 0 and grupa = ".$mob['grupa'].") or id = ".$mob['id']." order by id asc");
          while($mob = mysql_fetch_array($m)){
                       $mob['respawn_time'] = (int)($mob['respawn_time'] / $ust[respawn]);
          $mob['zycie'] -= $skil[26][ilosc];
          $mobprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             $log['log'] .= "<br>".$skil[26][ilosc]." obrazen otrzymal ".$mob['nazwa']."(".$mobprocent."%)";
          if(!empty($mob)) mysql_query("update postac set zajety_walka = 0 where id = ".$postac['id']." limit 1");  
              if($strzala['ilosc'] > 0){
                mysql_query("update przedmiot_postac set ilosc = ilosc - ".$skil[26][strzaly]." where id = ".$strzala['id']." and ilosc > 0 limit 1");
                $strzala['ilosc'] -= $skil[26][strzaly];
              if($strzala['ilosc'] <= 0) mysql_query("delete from przedmiot_postac where id = ".$strzala['id']." limit 1");
             if($mob['zycie'] < 1){
             mysql_query("update mob set zajety_walka = 0, zycie = 0, respawn = ".(time() + $mob['respawn_time'])." where id = ".$mob['id']." limit 1");
             $roznica = 1 - (($poziom - $mob['poziom']) / 30);
             if($roznica <= 0) $roznica = 0;
             $mob['exp'] *= $roznica;
             $mob['exp'] *= $ust[exp];
             $mob['exp'] = (int)$mob['exp'];
             mysql_query("update postac set exp = exp + ".$mob['exp']." where id = ".$postac['id']." limit 1");
             $paczka = mysql_fetch_array(mysql_query("select * from paczka_przedmiot where paczka_id = ".$mob['paczka']." or paczka_id = ".$mob['paczka2']." order by rand() limit 1"));
             $szansa = rand(1,1000);
           $roznicalvl = $poziom - $mob['poziom'];
             if(!empty($paczka)){
             if(($paczka['szansa'] * $ust[drop]) >= $szansa){
                  $przedmiotow = mysql_num_rows(mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0"));
                  if($przedmiotow < 42 && $roznicalvl <= $ust[di]){                        
                                                $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = ".$paczka['przedmiot_id']." limit 1"));
                                                $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."</p>";
                                                mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                                                VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");
                                        } elseif($roznicalvl > $ust[di]) $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />lecz z powodu duzej przewagi poziomow<br />przedmiot zostal zniszczony.</p>";
                                        else $log['log'] .= "<p class=battr50>Zdobyles ".$dane['nazwa']."<br />Masz pelny Plecak, Przedmiot zniszczony</p>";
                                  }
                      }
             if($mob['exp'] > 0 && $postac['wyczerpanie'] > 0) $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p><p class=battr101>Zdobyto lacznie ".$mob['exp']." punktow doswiadczenia</p>";
             else $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$postac['nazwa']."</p>";
             }
          }
          $log['log'] .= "</p>";
          mysql_query("update walkaturowa set log = '".$log['log']."', mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
          echo $log['log'];
          }
          }
             }
        }
      }
      if($_POST['act'] == 'mob'){
         $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));  
         if($log['mob1_sa'] > $log['player1_sa'] || $log['mob2_sa'] > $log['player1_sa']){
         $od_dwa = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and typ = 'BronDystansowa' limit 1"));
                $od_jed = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and (typ = 'Rozdzka' or typ = 'Laska') limit 1"));
                if(!empty($od_dwa)) $tura[od_p] = 2;
                elseif(!empty($od_jed)) $tura[od_p] = 1;
                else $tura[od_p] = 0;
                 $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." and respawn <= ".time()." limit 1"));
                  $mob2 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob2_id']." and respawn <= ".time()." limit 1"));
                   $mob3 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob3_id']." and respawn <= ".time()." limit 1"));
                  $mob4 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob4_id']." and respawn <= ".time()." limit 1"));
                  $mob5 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob5_id']." and respawn <= ".time()." limit 1"));
                  $mob6 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob6_id']." and respawn <= ".time()." limit 1"));
                  $mob7 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob7_id']." and respawn <= ".time()." limit 1"));
                  $mob8 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob8_id']." and respawn <= ".time()." limit 1"));
                  $mob9 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob9_id']." and respawn <= ".time()." limit 1"));
                  $mob10 = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob10_id']." and respawn <= ".time()." limit 1"));
                  if($tura[od_p] != 0 && $log['mob1_pos'] != $tura[od_p] && ($mob['profesja'] == 1 || $mob['profesja'] == 2 || $mob['profesja'] == 3)){
                       $log['log'] .= "<p class=battr2>Przeciwnik zrobil krok do przodu</p>";
                       mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa.", mob1_pos = mob1_pos + 1, log = '".$log['log']."' where id = ".$log['id']." limit 1");
                       echo $log['log'];
                } else {
          if(!empty($mob)){
             $roznica_poziomow2 = $mob['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob['poziom'] - $poziom;
              $mob['ckf'] += $roznica_poziomow22;
              $mob['ckm'] += $roznica_poziomow22;         
           if($mob['profesja'] == 1 && $mob['typ'] >= 2) $mobogl = 1;
           $heroprocent = (int)(($mob['zycie'] / $mob['zycie_max']) * 100);
             $heroac -= $mob['obnizac'];
             $heroacm -= $mob['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob['obr_min'], $mob['obr_max']) + $mob['sila'];
             $szansa = rand(1,100);
             if($mob['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob['ckf'] / 100)));
                $mob['obr_mag'] = ((int)($mob['obr_mag'] * ($mob['ckm'] / 100)));
             }
             if($mob['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mobogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob['obnizac']."<br>";
             if($mob['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob['obnizacm']."<br>";
             if($mob['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob['obr_mag'] -= $heroacm;
             $mob['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob['obr_mag'] < 1) $mob['obr_mag'] = 0;
             if($mob['obr_poi'] < 1) $mob['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob['obr_poi'];
             if($mob['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
            if(!empty($mob2)){
             $roznica_poziomow2 = $mob2['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob2['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob2['poziom'] - $poziom;
              $mob2['ckf'] += $roznica_poziomow22;
              $mob2['ckm'] += $roznica_poziomow22;         
           mysql_query("update walkaturowa set endturn = ".(time() + 20)." where id = ".$log['id']." limit 1");  
           if($mob2['profesja'] == 1 && $mob2['typ'] >= 2) $mob2ogl = 1;
           $heroprocent = (int)(($mob2['zycie'] / $mob2['zycie_max']) * 100);
             $heroac -= $mob2['obnizac'];
             $heroacm -= $mob2['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob2['obr_min'], $mob2['obr_max']) + $mob2['sila'];
             $szansa = rand(1,100);
             if($mob2['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob2['ckf'] / 100)));
                $mob2['obr_mag'] = ((int)($mob2['obr_mag'] * ($mob2['ckm'] / 100)));
             }
             if($mob2['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob2['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob2['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob2['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob2['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob2ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob2['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob2['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob2['obnizac']."<br>";
             if($mob2['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob2['obnizacm']."<br>";
             if($mob2['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob2['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob2['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob2['obr_mag'] -= $heroacm;
             $mob2['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob2['obr_mag'] < 1) $mob2['obr_mag'] = 0;
             if($mob2['obr_poi'] < 1) $mob2['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob2['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob2['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob2['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob2['obr_poi'];
             if($mob2['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob2['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob2['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
            }
            if(!empty($mob3)){
             $roznica_poziomow2 = $mob3['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob3['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob3['poziom'] - $poziom;
              $mob3['ckf'] += $roznica_poziomow22;
              $mob3['ckm'] += $roznica_poziomow22;         
           if($mob3['profesja'] == 1 && $mob3['typ'] >= 2) $mob3ogl = 1;
           $heroprocent = (int)(($mob3['zycie'] / $mob3['zycie_max']) * 100);
             $heroac -= $mob3['obnizac'];
             $heroacm -= $mob3['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob3['obr_min'], $mob3['obr_max']) + $mob3['sila'];
             $szansa = rand(1,100);
             if($mob3['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob3['ckf'] / 100)));
                $mob3['obr_mag'] = ((int)($mob3['obr_mag'] * ($mob3['ckm'] / 100)));
             }
             if($mob3['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob3['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob3['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob3['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob3['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob3ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob3['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob3['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob3['obnizac']."<br>";
             if($mob3['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob3['obnizacm']."<br>";
             if($mob3['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob3['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob3['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob3['obr_mag'] -= $heroacm;
             $mob3['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob3['obr_mag'] < 1) $mob3['obr_mag'] = 0;
             if($mob3['obr_poi'] < 1) $mob3['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob3['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob3['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob3['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob3['obr_poi'];
             if($mob3['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob3['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob3['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob4)){
             $roznica_poziomow2 = $mob4['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob4['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob4['poziom'] - $poziom;
              $mob4['ckf'] += $roznica_poziomow22;
              $mob4['ckm'] += $roznica_poziomow22;         
           if($mob4['profesja'] == 1 && $mob4['typ'] >= 2) $mob4ogl = 1;
           $heroprocent = (int)(($mob4['zycie'] / $mob4['zycie_max']) * 100);
             $heroac -= $mob4['obnizac'];
             $heroacm -= $mob4['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob4['obr_min'], $mob4['obr_max']) + $mob4['sila'];
             $szansa = rand(1,100);
             if($mob4['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob4['ckf'] / 100)));
                $mob4['obr_mag'] = ((int)($mob4['obr_mag'] * ($mob4['ckm'] / 100)));
             }
             if($mob4['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob4['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob4['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob4['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob4['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob4ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob4['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob4['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob4['obnizac']."<br>";
             if($mob4['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob4['obnizacm']."<br>";
             if($mob4['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob4['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob4['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob4['obr_mag'] -= $heroacm;
             $mob4['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob4['obr_mag'] < 1) $mob4['obr_mag'] = 0;
             if($mob4['obr_poi'] < 1) $mob4['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob4['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob4['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob4['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob4['obr_poi'];
             if($mob4['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob4['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob4['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob5)){
             $roznica_poziomow2 = $mob5['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob5['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob5['poziom'] - $poziom;
              $mob5['ckf'] += $roznica_poziomow22;
              $mob5['ckm'] += $roznica_poziomow22;         
           if($mob5['profesja'] == 1 && $mob5['typ'] >= 2) $mob5ogl = 1;
           $heroprocent = (int)(($mob5['zycie'] / $mob5['zycie_max']) * 100);
             $heroac -= $mob5['obnizac'];
             $heroacm -= $mob5['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob5['obr_min'], $mob5['obr_max']) + $mob5['sila'];
             $szansa = rand(1,100);
             if($mob5['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob5['ckf'] / 100)));
                $mob5['obr_mag'] = ((int)($mob5['obr_mag'] * ($mob5['ckm'] / 100)));
             }
             if($mob5['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob5['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob5['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob5['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob5['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob5ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob5['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob5['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob5['obnizac']."<br>";
             if($mob5['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob5['obnizacm']."<br>";
             if($mob5['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob5['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob5['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob5['obr_mag'] -= $heroacm;
             $mob5['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob5['obr_mag'] < 1) $mob5['obr_mag'] = 0;
             if($mob5['obr_poi'] < 1) $mob5['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob5['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob5['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob5['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob5['obr_poi'];
             if($mob5['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob5['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob5['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob6)){
             $roznica_poziomow2 = $mob6['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob6['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob6['poziom'] - $poziom;
              $mob6['ckf'] += $roznica_poziomow22;
              $mob6['ckm'] += $roznica_poziomow22;         
           if($mob6['profesja'] == 1 && $mob6['typ'] >= 2) $mob6ogl = 1;
           $heroprocent = (int)(($mob6['zycie'] / $mob6['zycie_max']) * 100);
             $heroac -= $mob6['obnizac'];
             $heroacm -= $mob6['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob6['obr_min'], $mob6['obr_max']) + $mob6['sila'];
             $szansa = rand(1,100);
             if($mob6['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob6['ckf'] / 100)));
                $mob6['obr_mag'] = ((int)($mob6['obr_mag'] * ($mob6['ckm'] / 100)));
             }
             if($mob6['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob6['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob6['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob6['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob6['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob6ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob6['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob6['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob6['obnizac']."<br>";
             if($mob6['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob6['obnizacm']."<br>";
             if($mob6['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob6['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob6['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob6['obr_mag'] -= $heroacm;
             $mob6['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob6['obr_mag'] < 1) $mob6['obr_mag'] = 0;
             if($mob6['obr_poi'] < 1) $mob6['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob6['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob6['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob6['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob6['obr_poi'];
             if($mob6['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob6['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob6['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob7)){
             $roznica_poziomow2 = $mob7['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob7['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob7['poziom'] - $poziom;
              $mob7['ckf'] += $roznica_poziomow22;
              $mob7['ckm'] += $roznica_poziomow22;         
           if($mob7['profesja'] == 1 && $mob7['typ'] >= 2) $mob7ogl = 1;
           $heroprocent = (int)(($mob7['zycie'] / $mob7['zycie_max']) * 100);
             $heroac -= $mob7['obnizac'];
             $heroacm -= $mob7['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob7['obr_min'], $mob7['obr_max']) + $mob7['sila'];
             $szansa = rand(1,100);
             if($mob7['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob7['ckf'] / 100)));
                $mob7['obr_mag'] = ((int)($mob7['obr_mag'] * ($mob7['ckm'] / 100)));
             }
             if($mob7['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob7['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob7['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob7['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob7['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob7ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob7['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob7['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob7['obnizac']."<br>";
             if($mob7['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob7['obnizacm']."<br>";
             if($mob7['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob7['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob7['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob7['obr_mag'] -= $heroacm;
             $mob7['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob7['obr_mag'] < 1) $mob7['obr_mag'] = 0;
             if($mob7['obr_poi'] < 1) $mob7['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob7['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob7['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob7['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob7['obr_poi'];
             if($mob7['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob7['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob7['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                  mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob8)){
             $roznica_poziomow2 = $mob8['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob8['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob8['poziom'] - $poziom;
              $mob8['ckf'] += $roznica_poziomow22;
              $mob8['ckm'] += $roznica_poziomow22;         
           if($mob8['profesja'] == 1 && $mob8['typ'] >= 2) $mob8ogl = 1;
           $heroprocent = (int)(($mob8['zycie'] / $mob8['zycie_max']) * 100);
             $heroac -= $mob8['obnizac'];
             $heroacm -= $mob8['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob8['obr_min'], $mob8['obr_max']) + $mob8['sila'];
             $szansa = rand(1,100);
             if($mob8['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob8['ckf'] / 100)));
                $mob8['obr_mag'] = ((int)($mob8['obr_mag'] * ($mob8['ckm'] / 100)));
             }
             if($mob8['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob8['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob8['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob8['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob8['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob8ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob8['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob8['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob8['obnizac']."<br>";
             if($mob8['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob8['obnizacm']."<br>";
             if($mob8['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob8['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob8['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob8['obr_mag'] -= $heroacm;
             $mob8['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob8['obr_mag'] < 1) $mob8['obr_mag'] = 0;
             if($mob8['obr_poi'] < 1) $mob8['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob8['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob8['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob8['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob8['obr_poi'];
             if($mob8['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob8['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob8['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob9)){
             $roznica_poziomow2 = $mob9['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob9['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob9['poziom'] - $poziom;
              $mob9['ckf'] += $roznica_poziomow22;
              $mob9['ckm'] += $roznica_poziomow22;         
           if($mob9['profesja'] == 1 && $mob9['typ'] >= 2) $mob9ogl = 1;
           $heroprocent = (int)(($mob9['zycie'] / $mob9['zycie_max']) * 100);
             $heroac -= $mob9['obnizac'];
             $heroacm -= $mob9['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob9['obr_min'], $mob9['obr_max']) + $mob9['sila'];
             $szansa = rand(1,100);
             if($mob9['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob9['ckf'] / 100)));
                $mob9['obr_mag'] = ((int)($mob9['obr_mag'] * ($mob9['ckm'] / 100)));
             }
             if($mob9['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob9['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob9['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob9['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob9['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob9ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob9['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob9['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob9['obnizac']."<br>";
             if($mob9['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob9['obnizacm']."<br>";
             if($mob9['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob9['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob9['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob9['obr_mag'] -= $heroacm;
             $mob9['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob9['obr_mag'] < 1) $mob9['obr_mag'] = 0;
             if($mob9['obr_poi'] < 1) $mob9['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob9['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob9['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob9['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob9['obr_poi'];
             if($mob9['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob9['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob9['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
             if(!empty($mob10)){
             $roznica_poziomow2 = $mob10['poziom'] - $poziom;
             $roznica_poziomow2 = (int)($roznica_poziomow2 / 3);
             $mob10['ck'] += $roznica_poziomow2;
             $roznica_poziomow22 = $mob10['poziom'] - $poziom;
              $mob10['ckf'] += $roznica_poziomow22;
              $mob10['ckm'] += $roznica_poziomow22;         
           if($mob10['profesja'] == 1 && $mob10['typ'] >= 2) $mob10ogl = 1;
           $heroprocent = (int)(($mob10['zycie'] / $mob10['zycie_max']) * 100);
             $heroac -= $mob10['obnizac'];
             $heroacm -= $mob10['obnizacm'];
             if($heroac < 1) $heroac = 0;
             if($heroacm < 1) $heroacm = 0;
             $atak = rand($mob10['obr_min'], $mob10['obr_max']) + $mob10['sila'];
             $szansa = rand(1,100);
             if($mob10['ck'] >= $szansa){
                $atak = ((int)($atak * ($mob10['ckf'] / 100)));
                $mob10['obr_mag'] = ((int)($mob10['obr_mag'] * ($mob10['ckm'] / 100)));
             }
             if($mob10['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob10['obr_mag']."</span>";
             $log['log'] .= "<p class=battr2>".$mob10['nazwa']."(".$heroprocent."%) atakuje przeciwnika z sila ".$atak."".$magtekst."<br>";
             if($mob10['ck'] >= $szansa){
                $log['log'] .= "+ Cios Krytyczny<br>";
                $szansa = rand(1,100);
                if($herokontra >= $szansa){
                    $log['log'] .= "- Kontra<br>";
                    mysql_query("update walkaturowa set player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");
                }
             }
             $szansa = rand(1,100);
             if($heroprzebicie >= $szansa){
                 $heroac = 0;
                 $heroacm = 0;
                 $log['log'] .= "+ Przebicie<br>";
             }
             $szansa = rand(1,100);
             if($herounik >= $szansa){
                 $atak = 0;
                 $mob10['obr_mag'] = 0;
                 $log['log'] .= "- Unik<br>";
             }
             $szansa = rand(1,100);
             if($heroblok >= $szansa){
                 $atak = 0;
                 $mob['obr_mag'] = 0;
                 $log['log'] .= "- Blok<br>";
             }
              $szansa = rand(1,20);
            if($mob10ogl >= $szansa){
                  $log['log'] .= "+ Ogluszenie<br>";
                  mysql_query("update walkaturowa set mob1_sa = mob1_sa + ".($mob10['sa'] / 100)." where id = ".$log['id']." limit 1");
            }
             if($mob10['obnizac'] > 0) $log['log'] .= "+ Obnizenie AC o ".$mob10['obnizac']."<br>";
             if($mob10['obnizacm'] > 0) $log['log'] .= "+ Obnizenie ACM o ".$mob10['obnizacm']."<br>";
             if($mob10['obnizsa'] > 0){ $log['log'] .= "+ Obnizenie SA o ".($mob10['obnizsa'] / 100)."<br>";
             mysql_query("update walkaturowa set player1_sa = player1_sa - ".($mob10['obnizsa'] / 100)." where id = ".$log['id']." limit 1"); }
             $atak -= $heroac;
             $mob10['obr_mag'] -= $heroacm;
             $mob10['obr_poi'] -= $heroacp;
             if($atak < 1) $atak = 0;
             if($mob10['obr_mag'] < 1) $mob10['obr_mag'] = 0;
             if($mob10['obr_poi'] < 1) $mob10['obr_poi'] = 0;
             $postac['zycie'] -= $atak;
             $postac['zycie'] -= $mob10['obr_mag'];
             if($postac['zycie'] < 1) $postac['zycie'] = 0;
             $mobprocent = (int)(($postac['zycie'] / $postac['zycie_max']) * 100);
             if($mob10['obr_mag'] > 0) $magtekst = " + <span class=magicdmg>".$mob10['obr_mag']."</span>";
             $log['log'] .= "".$atak."".$magtekst." obrazen przyjal ".$postac['nazwa']."(".$mobprocent."%)</p>";
             if($heroleczenier > 0 && $postac['zycie'] > 0) $postac['zycie'] += $heroleczenier;
             if($heroleczenier > 0 && $postac['zycie'] > 0) $log['log'] .= " <p class=battr1>Uleczono ".$heroleczenier." punktów ¿ycia</p>";
             $postac['zycie'] -= $mob10['obr_poi'];
             if($mob10['obr_poi'] > 0) $log['log'] .= " <p class=battr2>Otrzymales ".$mob10['obr_poi']." obrazen od trucizny</p>";
             mysql_query("update postac set zycie = ".$postac['zycie']." where id = ".$postac['id']." limit 1");
             if($postac['zycie'] <= 0){
                   $log['log'] .= "<p class=battr101>Zwyciezy³(a) ".$mob10['nazwa']."</p>";
                   $zresppp = (time() + ($poziom * 10));
                   mysql_query("update mob set zycie = zycie_max, zajety_walka = 0 where id = ".$mob['id']." or id = ".$mob2['id']." or id = ".$mob3['id']." or id = ".$mob4['id']." or id = ".$mob5['id']." or id = ".$mob6['id']." or id = ".$mob7['id']." or id = ".$mob8['id']." or id = ".$mob9['id']." or id = ".$mob10['id']." limit 10");
                   mysql_query("update postac set zycie = 1, zajety_walka = 0, respawn = ".$zresppp.", mapa = ".$mapa['dead_map'].", x = ".$mapa['dead_x'].", y = ".$mapa['dead_y']." where id = ".$postac['id']." limit 1");
  
             }
             }
            $tekst = $log['log'];
             mysql_query("update walkaturowa set log = '".$tekst."' where id = ".$log['id']." limit 1");
             echo $tekst;
             if($log['tura'] >= 300) $log['log'] .= "<p class=battr101>Walka Nierostrzygnieta</p>";
             mysql_query("update walkaturowa set tura = tura + 1 where id = ".$log['id']." limit 1");
            mysql_query("update walkaturowa set endturn = ".(time() + 20).", player1_sa = player1_sa + ".$herosa." where id = ".$log['id']." limit 1");  
            }
         }
      }
      if($_POST['act'] == 'czywalczy'){
             if($postac['zajety_walka'] == 1) echo true;
      }
      if($_POST['act'] == 'move'){
                $log = mysql_fetch_array(mysql_query("select * from walkaturowa where player1_id = ".$postac['id']." limit 1"));        
                $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$log['mob1_id']." and respawn <= ".time()." limit 1"));
                $od_dwa = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and typ = 'BronDystansowa' limit 1"));
                $od_jed = mysql_fetch_array(mysql_query("select * from przedmiot_postac where zalozony = 1 and postac = ".$postac['id']." and (typ = 'Rozdzka' or typ = 'Laska') limit 1"));
                if(!empty($od_dwa)) $tura[od_p] = 2;
                elseif(!empty($od_jed)) $tura[od_p] = 1;
                else $tura[od_p] = 0;
                if($tura[od_p] == 0){
                              if($log['mob1_pos'] != $log['player1_pos']){
                                       $log['log'] .= "<p class=battr1>Zrobiles krok do przodu</p>";
                                       $log['player1_pos']++;
                                       mysql_query("update walkaturowa set log = '".$log['log']."', player1_pos = ".$log['player1_pos'].", mob1_sa = mob1_sa + ".(($mob['sa'] + $mob['zrecznosc']) / 100)." where id = ".$log['id']." limit 1");
                                       echo $log['log'];
                              } else {
                              
                              }
                }
      }
      exit;
?>