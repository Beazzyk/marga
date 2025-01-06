<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');

$ajax_txt = "";

if($_POST['panel'] == 'tresc'){
$ajax_txt .= "<div id='chatTxt' tabindex='-1'>";
$tekst = mysql_query("select * from chat where mapa_id = ".$postac['mapa']." or postac_id = ".$postac['id']." order by id desc limit 25");
while($chat = mysql_fetch_array($tekst)){
$ajax_txt .= "<span style='color: rgb(255, 255, 119);'>".$chat['kto']."</span> ".$chat['tresc']."<br>";
}
$ajax_txt .= "</div>";

}
if($_POST['panel'] == 'wyslij' && $_POST['tresc'] != ''){
if($postac['zablokowany_chat'] < $czas_ogolny){
   $tekst = $_POST['tresc'];
   if (preg_match("/logout/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/logout ')) !== false) $tekst2 = substr($tekst, $poz+8, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Logout)';
                 $_POST['tresc'] = "Wylogowano Gracza ".$tekst2.".";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zalogowany = 0 where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (Logout)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

  if (preg_match("/heal/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/heal ')) !== false) $tekst2 = substr($tekst, $poz+6, 1000);
	if(empty($tekst2)){
               $postac['nazwa'] = 'System (Heal)';
               $_POST['tresc'] = "Wyleczyles Siebie.";
               $postac['mapa'] = 0;
               mysql_query("update postac set zycie = 99999999, respawn = 0 where id = ".$postac['id']." limit 1");         
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Heal)';
                 $_POST['tresc'] = "Wyleczono Gracza ".$tekst2.".";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zycie = 99999999, respawn = 0 where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (Heal)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

  if (preg_match("/wyrzuc/", $tekst)) {
    if (($poz = strpos($tekst, '/wyrzuc ')) !== false) $tekst2 = substr($tekst, $poz+8, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $jazda = mysql_query("select * from przedmiot_postac where postac = ".$postac['id']." and zalozony = 0 order by id asc limit ".$tekst2." ");
         while($j = mysql_fetch_array($jazda)){
                 $wysz = mysql_fetch_array(mysql_query("select * from przedmiot_postac where id = ".$j['id']." limit 1"));
         }
         if(!empty($wysz)){
                 mysql_query("insert into mapitem (mapa,x,y,przedmiot) VALUES ('".$postac['mapa']."','".$postac['x']."','".$postac['y']."','".$wysz['id']."')");         
                 $postac['nazwa'] = 'System (Wyrzuc)';
                 $_POST['tresc'] = "Wyrzuciles przedmiot na mape.";
                 $postac['mapa'] = 0;
                 mysql_query("update przedmiot_postac set postac = 999999999 where id = ".$wysz['id']." limit 1");
         } else {
                 $postac['nazwa'] = 'System (Wyrzuc)';
                 $_POST['tresc'] = 'W tym slocie nie ma zadnego przedmiotu.';
                 $postac['mapa'] = 0;
         }
  }
}

  if ($tekst == '/wez'){
         $wysz = mysql_fetch_array(mysql_query("select * from mapitem where mapa = '".$postac['mapa']."' and x = ".$postac['x']." and y = ".$postac['y']." limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Wez)';
                 $_POST['tresc'] = "Wziales przedmiot z mapy.";
                 $postac['mapa'] = 0;
                 mysql_query("update przedmiot_postac set postac = ".$postac['id']." where id = ".$wysz['przedmiot']." limit 1");
                 mysql_query("delete from mapitem where przedmiot = '".$wysz['przedmiot']."' limit 1");
         } else {
                 $postac['nazwa'] = 'System (Wez)';
                 $_POST['tresc'] = 'Tutaj nie ma przedmiotu.';
                 $postac['mapa'] = 0;
         }
}

  if (preg_match("/wexp/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/wexp ')) !== false) $tekst2 = substr($tekst, $poz+6, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Expienie)';
                 $_POST['tresc'] = "Odnowiono Wyczerpanie Gracza ".$tekst2.".";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set wyczerpanie = 180, respawn = 0 where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (Expienie)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

   if (preg_match("/additem/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/additem ')) !== false) $tekst2 = substr($tekst, $poz+9, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where nazwa = '".$tekst2."' limit 1"));
         if(!empty($dane)){
                 $postac['nazwa'] = 'System (Add Item)';
                 $_POST['tresc'] = "Dodano ".$tekst2.".";
                 $postac['mapa'] = 0;
                 mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                 VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");                  
         } else {
                 $postac['nazwa'] = 'System (Add Item)';
                 $_POST['tresc'] = 'Brak takiego Przedmiotu.';
                 $postac['mapa'] = 0;
         }
  }
}
   if (preg_match("/additemid/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/additemid ')) !== false) $tekst2 = substr($tekst, $poz+11, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $dane = mysql_fetch_array(mysql_query("select * from przedmiot_loot where id = '".$tekst2."' limit 1"));
         if(!empty($dane)){
                 $postac['nazwa'] = 'System (Add Item)';
                 $_POST['tresc'] = "Dodano ".$dane['nazwa'].".";
                 $postac['mapa'] = 0;
                 mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                 VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");                  
         } else {
                 $postac['nazwa'] = 'System (Add Item)';
                 $_POST['tresc'] = 'Brak takiego Przedmiotu.';
                 $postac['mapa'] = 0;
         }
  }
}

   if (preg_match("/additemshop/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/additemshop ')) !== false) $tekst2 = substr($tekst, $poz+13, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $dane = mysql_fetch_array(mysql_query("select * from przedmiot_sklep where nazwa = '".$tekst2."' limit 1"));
         if(!empty($dane)){
                 $postac['nazwa'] = 'System (Add Item SHOP)';
                 $_POST['tresc'] = "Dodano ".$dane['nazwa'].".";
                 $postac['mapa'] = 0;
                 mysql_query("INSERT INTO `przedmiot_postac` (`postac`, `nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`, `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `wartosc_sprzedazy`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, obnizac, obnizacm, obnizsa, zycie_za_sile, pelne_leczenie, opis, mana, energia)
                 VALUES ('".$postac['id']."', '".$dane['nazwa']."', '".$dane['klasa']."', '".$dane['typ']."', '".$dane['obrazek']."', '".$dane['wym_poziom']."', '".$dane['prof1']."', '".$dane['prof2']."', '".$dane['prof3']."', '".$dane['prof4']."', '".$dane['prof5']."', '".$dane['prof6']."', '".$dane['wartosc_kupna']."', '".$dane['zycie']."', '".$dane['sa']."', '".$dane['ac']."', '".$dane['acm']."', '".$dane['obr_min']."', '".$dane['obr_max']."', '".$dane['mnoznik']."', '".$dane['mnoznik_typ']."', '".$dane['sila']."', '".$dane['zrecznosc']."', '".$dane['intelekt']."', '".$dane['wszystkie_cechy']."', '".$dane['ck']."', '".$dane['ckf']."', '".$dane['ckm']."', '".$dane['acp']."', '".$dane['absorbcja']."', '".$dane['mabsorbcja']."', '".$dane['leczenie']."', '".$dane['unik']."', '".$dane['blok']."', '".$dane['obr_mag']."', '".$dane['przebicie']."', '".$dane['obr_poi']."', '".$dane['glebokarana']."', '".$dane['atak_gr']."', '".$dane['ilosc']."', '".$dane['mikstura_leczenie']."', '".$dane['kontra']."', '".$dane['obnizac']."', '".$dane['obnizacm']."', '".$dane['obnizsa']."', '".$dane['zycie_za_sile']."', '".$dane['pelne_leczenie']."', '".$dane['opis']."', '".$dane['mana']."', '".$dane['energia']."')");                  
         } else {
                 $postac['nazwa'] = 'System (Add Item SHOP)';
                 $_POST['tresc'] = 'Brak takiego Przedmiotu.';
                 $postac['mapa'] = 0;
         }
  }
}

// System Priv
if (preg_match("/-P-/", $tekst)) {
    if (($poz = strpos($tekst, '-P-')) !== false) $tekst2 = substr($tekst, 0, $poz);
    if (($poz = strpos($tekst, '-P-')) !== false) $tekst3 = substr($tekst, $poz+3, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         $przyjaciel = mysql_num_rows(mysql_query("select * from przyjaciele where (postac = ".$postac['id']." and przyjaciel = ".$wysz['id'].") or (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].")"));
         if(!empty($wysz) && $wysz['zalogowany'] == 1 && ($wysz['lockpmessage'] == 0 || $przyjaciel >= 1)){
                 $postac['nazwa'] = "<div class=chpriv>[".$postac['nazwa']."]";
                 $_POST['tresc'] = "".$tekst3."</div>";
                 $postac['mapa'] = 0;
                 mysql_query("insert into chat (kto,tresc,postac_id) values ('<div class=chprivsend>[".$wysz['nazwa']."]','".$_POST['tresc']."</div>','".$postac['id']."')");
                 $postac['id'] = $wysz['id'];
        } elseif($wysz['zalogowany'] == 0) {
                 $postac['nazwa'] = 'System (PrivChat)';
                 $_POST['tresc'] = "".$wysz['nazwa']." jest wylogowany.";
                 $postac['mapa'] = 0;
        } elseif($wysz['lockpmessage'] == 1) {
                 $postac['nazwa'] = 'System (PrivChat)';
                 $_POST['tresc'] = "".$wysz['nazwa']." zablokowal wysylanie prywatnych wiadomosci.";
                 $postac['mapa'] = 0;
        } else {
                 $postac['nazwa'] = 'System (PrivChat)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
////////////////////////////////

// Dawanie Kasy Innemu Graczowi
if (preg_match("/-TG-/", $tekst)) {
    if (($poz = strpos($tekst, '-TG-')) !== false) $tekst2 = substr($tekst, 0, $poz);
    if (($poz = strpos($tekst, '-TG-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                  if($postac['zloto'] >= $tekst3){
                              $postac['nazwa'] = "[Transfer Gold]";
                              $_POST['tresc'] = "Dales ".$tekst2." ".$tekst3." Zlota";
                              $postac['mapa'] = 0;
                              mysql_query("update postac set zloto = zloto - ".$tekst3." where id = ".$postac['id']." limit 1");
                              mysql_query("update postac set zloto = zloto + ".$tekst3." where id = ".$wysz['id']." limit 1");
                  } else {
                              $postac['nazwa'] = "[Transfer Gold]";
                              $_POST['tresc'] = "Brakuje ci Zlota.";
                              $postac['mapa'] = 0;
                  }
         } else {
                 $postac['nazwa'] = 'System (TransferGold)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
////////////////////////////////

// Dawanie Przedmiotu
if (preg_match("/-TI-/", $tekst)) {
    if (($poz = strpos($tekst, '-TI-')) !== false) $tekst2 = substr($tekst, 0, $poz);
    if (($poz = strpos($tekst, '-TI-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         $przyjaciel = mysql_num_rows(mysql_query("select * from przyjaciele where (postac = ".$postac['id']." and przyjaciel = ".$wysz['id'].") or (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].")"));
         if(!empty($wysz) && ($przyjaciel >= 1 || $wysz['locksitem'] == 0)){
                  $item = mysql_fetch_array(mysql_query("select * from przedmiot_postac where nazwa = '".$tekst3."' and postac = ".$postac['id']." limit 1"));
                  if(!empty($item)){
                              $postac['nazwa'] = "[Transfer Item]";
                              $_POST['tresc'] = "Dales ".$tekst3." Graczowi ".$tekst2."";
                              $postac['mapa'] = 0;
                              mysql_query("update przedmiot_postac set postac = ".$wysz['id']." where id = ".$item['id']." limit 1");
                  } else {
                              $postac['nazwa'] = "[Transfer Item]";
                              $_POST['tresc'] = "Nieposiadasz takiego przedmiotu.";
                              $postac['mapa'] = 0;
                  }
         } elseif($wysz['locksitem'] == 1){
                 $postac['nazwa'] = 'Console (Transfer Item)';
                 $_POST['tresc'] = 'Gracz zablokowal wysylanie przedmiotow.';
                 $postac['mapa'] = 0;
         } else {
                 $postac['nazwa'] = 'Console (Transfer Item)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
////////////////////////////////

// ADMIN DAWANIE Z£OTA //
if (preg_match("/-AG-/", $tekst) && $postac['ranga'] == 4) {
  if (($poz = strpos($tekst, '-AG-')) !== false) $tekst2 = substr($tekst, 0, $poz);
  if (($poz = strpos($tekst, '-AG-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                        $postac['nazwa'] = "[Add Gold]";
                        $_POST['tresc'] = "Dales ".$tekst2." ".$tekst3." Zlota";
                        $postac['mapa'] = 0;
                        mysql_query("update postac set zloto = zloto + ".$tekst3." where id = ".$wysz['id']." limit 1");
         } else {
                 $postac['nazwa'] = 'System (Add Gold)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
/////////////////////////

// ADMIN ZMIANA RANGI //
if (preg_match("/-CR-/", $tekst) && $postac['ranga'] == 4) {
  if (($poz = strpos($tekst, '-CR-')) !== false) $tekst2 = substr($tekst, 0, $poz);
  if (($poz = strpos($tekst, '-CR-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || $tekst3 < 0){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                        $postac['nazwa'] = "[Change Range]";
                        $_POST['tresc'] = "Zmieniles Range Graczowi ".$tekst2.".";
                        $postac['mapa'] = 0;
                        mysql_query("update postac set ranga = '".$tekst3."' where id = ".$wysz['id']." limit 1");
         } else {
                 $postac['nazwa'] = 'System [Change Range]';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
/////////////////////////

// ADMIN DAWANIE DOŒW //
if (preg_match("/-AE-/", $tekst) && $postac['ranga'] >= 3) {
  if (($poz = strpos($tekst, '-AE-')) !== false) $tekst2 = substr($tekst, 0, $poz);
  if (($poz = strpos($tekst, '-AE-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                        $postac['nazwa'] = "[Add EXP]";
                        $_POST['tresc'] = "Dales ".$tekst2." ".$tekst3." Doswiadczenia";
                        $postac['mapa'] = 0;
                        mysql_query("update postac set exp = exp + ".$tekst3." where id = ".$wysz['id']." limit 1");
         } else {
                 $postac['nazwa'] = 'System (Add EXP)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
/////////////////////////

// ADMIN DAWANIE S£ //
if (preg_match("/-ASL-/", $tekst) && $postac['ranga'] == 4) {
  if (($poz = strpos($tekst, '-ASL-')) !== false) $tekst2 = substr($tekst, 0, $poz);
  if (($poz = strpos($tekst, '-ASL-')) !== false) $tekst3 = substr($tekst, $poz+5, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                        $postac['nazwa'] = "[Add SL]";
                        $_POST['tresc'] = "Dales ".$tekst2." ".$tekst3." Smoczych Lez";
                        $postac['mapa'] = 0;
                        mysql_query("update postac set sl = sl + ".$tekst3." where id = ".$wysz['id']." limit 1");
         } else {
                 $postac['nazwa'] = 'System (Add SL)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
/////////////////////////

// ADMIN TELEPORT //
if (preg_match("/-TP-/", $tekst) && $postac['ranga'] == 4) {
  if (($poz = strpos($tekst, '-TP-')) !== false) $tekst2 = substr($tekst, 0, $poz);
  if (($poz = strpos($tekst, '-TP-')) !== false) $tekst3 = substr($tekst, $poz+4, 9999);
	if(empty($tekst2) || empty($tekst3)){
               $postac['nazwa'] = 'Console';
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                        $wysz2 = mysql_fetch_array(mysql_query("select * from mapa where nazwa = '".$tekst3."' limit 1"));
                        if(!empty($wysz2)){
                                  $postac['nazwa'] = "[Teleport]";
                                  $_POST['tresc'] = "Przeniosles ".$tekst2." do ".$tekst3."";
                                  $postac['mapa'] = 0;
                                  mysql_query("update postac set mapa = ".$wysz2['id'].", x=10, y=10 where id = ".$wysz['id']." limit 1");
                        } else {
                                  $postac['nazwa'] = 'System (Teleport)';
                                  $_POST['tresc'] = 'Brak takiej Mapy.';
                                  $postac['mapa'] = 0;
                        }
         } else {
                 $postac['nazwa'] = 'System (Teleport)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}
/////////////////////////

if (preg_match("/blockchat/", $tekst) && $postac['ranga'] >= 1) {
    if (($poz = strpos($tekst, '/blockchat ')) !== false) $tekst2 = substr($tekst, $poz+11, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (BlockChat)';
                 $_POST['tresc'] = "Blokada Chatu dla ".$tekst2." przez 12H.";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zablokowany_chat = ".($czas_ogolny + 43200)." where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (BlockChat)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

// ZABIJANIE GRACZA
if (preg_match("/kill/", $tekst) && $postac['ranga'] >= 3) {
    if (($poz = strpos($tekst, '/kill ')) !== false) $tekst2 = substr($tekst, $poz+6, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Kill)';
                 $_POST['tresc'] = "Zabiles ".$tekst2."";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zycie = 1, respawn = ".($czas_ogolny + 3600)." where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (Kill)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

// ODNOWIENIE GRACZA
if (preg_match("/odnow/", $tekst) && $postac['ranga'] >= 3) {
    if (($poz = strpos($tekst, '/odnow ')) !== false) $tekst2 = substr($tekst, $poz+7, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (Odnow)';
                 $_POST['tresc'] = "Odnowiles ".$tekst2."";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zycie = 999999999, respawn = 0 where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (Odnow)';
                 $_POST['tresc'] = 'Brak takiej Postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/respawnmob/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/respawnmob ')) !== false) $tekst2 = substr($tekst, $poz+12, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (RespawnMob)';
                 $_POST['tresc'] = "Zrespiono Moba.";
                 $postac['mapa'] = 0;
                 mysql_query("update mob set respawn = 0 where nazwa = '".$wysz['nazwa']."' ");         
         } else {
                 $postac['nazwa'] = 'System (RespawnMob)';
                 $_POST['tresc'] = 'Brak Moba o takim ID.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/addmob/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/addmob ')) !== false) $tekst2 = substr($tekst, $poz+8, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $istnieje = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$tekst2."' limit 1"));
         if(!empty($istnieje)){ 
                 $postac['nazwa'] = 'System (AddMob)';
                 $_POST['tresc'] = "Dodano Moba.";
                 $postac['mapa'] = 0;
                 mysql_query("INSERT INTO mob (`obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`) 
                 VALUES ('".$istnieje['obrazek']."', '".$postac['mapa']."', '".$postac['x']."', '".$postac['y']."', '".$istnieje['nazwa']."', '".$istnieje['poziom']."', '".$istnieje['typ']."', '".$istnieje['szerokosc']."', '".$istnieje['dlugosc']."', '".$istnieje['zycie_max']."', '".$istnieje['zycie_max']."', '".$istnieje['sa']."', '".$istnieje['ac']."', '".$istnieje['acm']."', '".$istnieje['acp']."', '".$istnieje['ck']."', '".$istnieje['ckf']."', '".$istnieje['ckm']."', '".$istnieje['przebicie']."', '".$istnieje['obr_min']."', '".$istnieje['obr_max']."', '".$istnieje['profesja']."', '".$istnieje['obr_mag']."', '".$istnieje['obr_poi']."', '".$istnieje['sila']."', '".$istnieje['zrecznosc']."', '".$istnieje['intelekt']."', '".$istnieje['absorbcja']."', '".$istnieje['mabsorbcja']."', '".$istnieje['unik']."', '".$istnieje['blok']."', '".$istnieje['exp']."', '".$istnieje['respawn_time']."', '0', '0', '".$istnieje['obnizac']."', '".$istnieje['obnizacm']."', '".$istnieje['obnizsa']."'
                 , '".$istnieje['paczka']."', '".$istnieje['paczka2']."')");         
         } else {
                 $postac['nazwa'] = 'System (AddMob)';
                 $_POST['tresc'] = 'Brak Moba o takim ID.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/unlockchat/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/unlockchat ')) !== false) $tekst2 = substr($tekst, $poz+12, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (UnlockChat)';
                 $_POST['tresc'] = "Odblokowales Chat postaci ".$tekst2."";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zablokowany_chat = 0 where id = ".$wysz['id']." limit 1");         
         } else {
                 $postac['nazwa'] = 'System (UnlockChat)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/ban/", $tekst) && $postac['ranga'] == 4) {
    if (($poz = strpos($tekst, '/ban ')) !== false) $tekst2 = substr($tekst, $poz+5, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 if($wysz['ban'] == 0){
                 $postac['nazwa'] = 'System (Ban)';
                 $_POST['tresc'] = "Zbanowales Gracza ".$tekst2."";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set ban = ".(time() + (86400*30))." where id = ".$wysz['id']." limit 1");
                 } elseif($wysz['ban'] > 0){
                 $postac['nazwa'] = 'System (Ban)';
                 $_POST['tresc'] = "Odbanowales Gracza ".$tekst2."";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set ban = 0 where id = ".$wysz['id']." limit 1");
                 }         
         } else {
                 $postac['nazwa'] = 'System (Ban)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/lvl/", $tekst)) {
    if (($poz = strpos($tekst, '/lvl ')) !== false) $tekst2 = substr($tekst, $poz+5, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
                 $postac['nazwa'] = 'System (LvL)';
                 $_POST['tresc'] = "".$tekst2.", Lvl: ".$wysz['poziom']." ".$wysz['profesja']."";
                 $postac['mapa'] = 0;       
         } else {
                 $postac['nazwa'] = 'System (LvL)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/decreqlvl/", $tekst)) {
    if (($poz = strpos($tekst, '/decreqlvl ')) !== false) $tekst2 = substr($tekst, $poz+11, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from przedmiot_postac where nazwa = '".$tekst2."' and postac = ".$postac['id']." limit 1"));
         if(!empty($wysz) && $postac['sl'] >= 10 || $postac['ranga'] >= 3){
                 if($wysz['klasa'] == 'upgraded') $req = 1;
                 elseif($wysz['klasa'] == 'unique') $req = 3;
                 elseif($wysz['klasa'] == 'heroic') $req = 2;
                 elseif($wysz['klasa'] == 'legendary') $req = 1;
                 else $req = 4;
                 $postac['nazwa'] = 'System (Decrease Required Level)';
                 $_POST['tresc'] = "Obnizyles wymagania ".$tekst2." o ".$req."lvl.";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set sl = sl - 10 where id = ".$postac['id']." and ranga < 3 limit 1");     
                 mysql_query("update przedmiot_postac set wym_poziom = wym_poziom - ".$req.", klasa = 'upgraded' where id = ".$wysz['id']." limit 1");
         } elseif($postac['sl'] < 10) {
                 $postac['nazwa'] = 'System (Decrease Required Level)';
                 $_POST['tresc'] = 'Brakuje ci Smoczych £ez.';
                 $postac['mapa'] = 0;
         } else {
                 $postac['nazwa'] = 'System (Decrease Required Level)';
                 $_POST['tresc'] = 'Brak takiego przedmiotu w twoim ekwipunku.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/upgradeitem/", $tekst)) {
    if (($poz = strpos($tekst, '/upgradeitem ')) !== false) $tekst2 = substr($tekst, $poz+13, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from przedmiot_postac where nazwa = '".$tekst2."' and postac = ".$postac['id']." limit 1"));
         if(!empty($wysz) && $postac['sl'] >= 10 || $postac['ranga'] >= 3){
                 if($wysz['klasa'] == 'upgraded') $req = 1.03;
                 elseif($wysz['klasa'] == 'unique') $req = 1.1;
                 elseif($wysz['klasa'] == 'heroic') $req = 1.07;
                 elseif($wysz['klasa'] == 'legendary') $req = 1.03;
                 else $req = 1.15;
                 $postac['nazwa'] = 'System (Upgrade Item)';
                 $_POST['tresc'] = "Polepszy³es ".$tekst2." o ".(($req - 1) * 100)."%.";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set sl = sl - 10 where id = ".$postac['id']." and ranga < 3 limit 1");     
                 mysql_query("update przedmiot_postac set klasa = 'upgraded', zycie = zycie * ".$req.", sa = sa * ".$req.", ac = ac * ".$req.", acm = acm * ".$req.", obr_min = obr_min * ".$req.", obr_max = obr_max * ".$req.", opis = 'Ostatnio Ulepszono o ".(($req - 1) * 100)."%.', sila = sila * ".$req.", zrecznosc = zrecznosc * ".$req.", intelekt = intelekt * ".$req.", wszystkie_cechy = wszystkie_cechy * ".$req.", ck = ck * ".$req.", ckf = ckf * ".$req.", ckm = ckm * ".$req.", acp = acp * ".$req.", absorbcja = absorbcja * ".$req.", mabsorbcja = mabsorbcja * ".$req.", leczenie = leczenie * ".$req.", unik = unik * ".$req.", blok = blok * ".$req.", obr_mag = obr_mag * ".$req.", przebicie = przebicie * ".$req.", obr_poi = obr_poi * ".$req.", glebokarana = glebokarana * ".$req.", atak_gr = atak_gr * ".$req.", mikstura_leczenie = mikstura_leczenie * ".$req.", kontra = kontra * ".$req.", obnizac = obnizac * ".$req.", obnizacm = obnizacm * ".$req.", obnizsa = obnizsa * ".$req.", zycie_za_sile = zycie_za_sile * ".$req.", pelne_leczenie = pelne_leczenie * ".$req.", mana = mana * ".$req.", energia = energia * ".$req." where id = ".$wysz['id']." limit 1");
         } elseif($postac['sl'] < 10) {
                 $postac['nazwa'] = 'System (Upgrade Item)';
                 $_POST['tresc'] = 'Brakuje ci Smoczych £ez.';
                 $postac['mapa'] = 0;
         } else {
                 $postac['nazwa'] = 'System (Upgrade Item)';
                 $_POST['tresc'] = 'Brak takiego przedmiotu w twoim ekwipunku.';
                 $postac['mapa'] = 0;
         }
  }
}

if (preg_match("/sellsl/", $tekst)) {
    if (($poz = strpos($tekst, '/sellsl ')) !== false) $tekst2 = substr($tekst, $poz+8, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta";
               $postac['mapa'] = 0; 
  } else {
           if($postac['sl'] >= $tekst2){
                 $postac['nazwa'] = 'System (Sell Smocze Lzy)';
                 $_POST['tresc'] = "Sprzedales ".$tekst2." SL i zarobiles ".($tekst2*50000).".";
                 $postac['mapa'] = 0;
                 mysql_query("update postac set zloto = zloto + ".($tekst2*50000).", sl = sl - ".$tekst2." where id = ".$postac['id']." limit 1");
           } else {
                 $postac['nazwa'] = 'System (Sell Smocze Lzy)';
                 $_POST['tresc'] = "Nie posiadasz tyle S£.";
                 $postac['mapa'] = 0;
           }
  }
}

   if($_POST['tresc'] == '/autologout' && $postac['ranga'] == 4){
     $postac['nazwa'] = 'System (AutoLogout)';
     $postac['mapa'] = 0;
   mysql_query("update postac set zalogowany = 0 where id != ".$postac['id']." ");
   if(mysql_affected_rows() == 0) $_POST['tresc'] = 'Niewylogowano ¿adnego gracza';
   else $_POST['tresc'] = 'Wylogowanie przebieglo pomyslnie'; 
   }
   if($_POST['tresc'] == '/pvpstatus'){
     $postac['nazwa'] = 'System (PvP)';
     $postac['mapa'] = 0;
     if($postac['pvp'] == 0) $_POST['tresc'] = "PvP Wylaczone";
     elseif($postac['pvp'] == 1) $_POST['tresc'] = "PvP Aktywne";
   }
   if($_POST['tresc'] == '/pml'){
     $postac['nazwa'] = 'System (Private Message Lock)';
     $postac['mapa'] = 0;
     if($postac['lockpmessage'] == 0){ 
                $_POST['tresc'] = "Zablokowano wysylanie prywatnych wiadomosci.";
                mysql_query("update postac set lockpmessage = 1 where id = ".$postac['id']." limit 1");
     }
     elseif($postac['lockpmessage'] == 1){ 
                $_POST['tresc'] = "Odblokowano wysylanie prywatnych wiadomosci.";
                mysql_query("update postac set lockpmessage = 0 where id = ".$postac['id']." limit 1");
     }
    }
    if($_POST['tresc'] == '/pmig'){
     $postac['nazwa'] = 'System (Private Invite Group Lock)';
     $postac['mapa'] = 0;
     if($postac['lockigroup'] == 0){ 
                $_POST['tresc'] = "Zablokowano wysylanie zaproszen do grup.";
                mysql_query("update postac set lockigroup = 1 where id = ".$postac['id']." limit 1");
     }
     elseif($postac['lockigroup'] == 1){ 
                $_POST['tresc'] = "Odblokowano wysylanie zaproszen do grup.";
                mysql_query("update postac set lockigroup = 0 where id = ".$postac['id']." limit 1");
     }
    }
    if($_POST['tresc'] == '/pmif'){
     $postac['nazwa'] = 'System (Private Invite Friend Lock)';
     $postac['mapa'] = 0;
     if($postac['lockifriend'] == 0){ 
                $_POST['tresc'] = "Zablokowano wysylanie zaproszen do przyjaciol.";
                mysql_query("update postac set lockifriend = 1 where id = ".$postac['id']." limit 1");
     }
     elseif($postac['lockifriend'] == 1){ 
                $_POST['tresc'] = "Odblokowano wysylanie zaproszen do przyjaciol.";
                mysql_query("update postac set lockifriend = 0 where id = ".$postac['id']." limit 1");
     }
    }
    if($_POST['tresc'] == '/li'){
     $postac['nazwa'] = 'System (Lockitem)';
     $postac['mapa'] = 0;
     if($postac['locksitem'] == 0){ 
                $_POST['tresc'] = "Zablokowano przyjmowanie przedmiotów od innych graczy.";
                mysql_query("update postac set locksitem = 1 where id = ".$postac['id']." limit 1");
     }
     elseif($postac['locksitem'] == 1){ 
                $_POST['tresc'] = "Odblokowano przyjmowanie przedmiotów od innych graczy.";
                mysql_query("update postac set locksitem = 0 where id = ".$postac['id']." limit 1");
     }
    }
    if($_POST['tresc'] == '/settingsstatus'){
     $postac['nazwa'] = 'System (Ustawienia)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = "";
     if($postac['lockpmessage'] == 0) $_POST['tresc'] .= "<br />Blokowanie Privow: Wylaczone";
     else $_POST['tresc'] .= "<br />Blokowanie Privow: Wlaczone";
     if($postac['lockifriend'] == 0) $_POST['tresc'] .= "<br />Blokowanie Zaproszen do Przyjaciol: Wylaczone";
     else $_POST['tresc'] .= "<br />Blokowanie Zaproszen do Przyjaciol: Wlaczone";
     if($postac['lockigroup'] == 0) $_POST['tresc'] .= "<br />Blokowanie Zaproszen do Grupy: Wylaczone";
     else $_POST['tresc'] .= "<br />Blokowanie Zaproszen do Grupy: Wlaczone";
     if($postac['locksitem'] == 0) $_POST['tresc'] .= "<br />Blokowanie Przedmiotów od Graczy: Wylaczone";
     else $_POST['tresc'] .= "<br />Blokowanie Przedmiotów od Graczy: Wlaczone";
    }
   if($_POST['tresc'] == '/pvpon'){
     $postac['nazwa'] = 'System (PvP)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = "Aktywowano tryb PvP";
     mysql_query("update postac set pvp = 1 where id = ".$postac['id']." limit 1");
   }
   if($_POST['tresc'] == '/speedfighton'){
     $postac['nazwa'] = 'System (Szybka Walka)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = "Aktywowano tryb Szybkiej Walki";
     mysql_query("update postac set speedfight = 1 where id = ".$postac['id']." limit 1");
   }
   if($_POST['tresc'] == '/speedfightoff'){
     $postac['nazwa'] = 'System (Szybka Walka)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = "Aktywowano tryb Walki Turowej";
     mysql_query("update postac set speedfight = 0 where id = ".$postac['id']." limit 1");
   }
   if($_POST['tresc'] == '/pvpoff'){
     $postac['nazwa'] = 'System (PvP)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = "Wylaczono tryb PvP";
     mysql_query("update postac set pvp = 0 where id = ".$postac['id']." limit 1");
   }
  if($_POST['tresc'] == '/chatclr' && $postac['ranga'] == 4){
     $postac['nazwa'] = 'System (ChatCLR)';
     $postac['mapa'] = 0;
     mysql_query("delete from chat");
     if(mysql_affected_rows() == 0) $_POST['tresc'] = 'Brak tresci do wyczyszczenia';
     else $_POST['tresc'] = 'Wyczyszczono Chat'; 
   }
   if($_POST['tresc'] == '/creategroup'){
   $cjwg = mysql_num_rows(mysql_query("select * from grupa where postac_id = ".$postac['id']." "));
   if($cjwg <= 0){
     $postac['nazwa'] = 'System (CreateGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Utworzyles Grupe';
     mysql_query("insert into grupa (grupa_id, postac_id) values ('".$postac['id']."','".$postac['id']."')");
   } else {
     $postac['nazwa'] = 'System (CreateGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Nalezysz juz do Grupy';
   } 
   }
   if($_POST['tresc'] == '/removegroup'){
   $cjwg = mysql_num_rows(mysql_query("select * from grupa where grupa_id = ".$postac['id']." "));
   if($cjwg > 0){
     $postac['nazwa'] = 'System (RemoveGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Zniszczyles Grupe';
     mysql_query("delete from grupa where grupa_id = ".$postac['id']." ");
     mysql_query("update postac set grupa = 0 where grupa = ".$postac['id']." ");
   } else {
     $postac['nazwa'] = 'System (RemoveGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Nie jestes Przywodca Grupy, aby móc j¹ usun¹æ<br>lub nie istnieje taka grupa';
   } 
   }
   if($_POST['tresc'] == '/declinegroup'){
   $cjwg = mysql_num_rows(mysql_query("select * from grupa where grupa_id = ".$postac['id']." "));
   if($cjwg > 0){
     $postac['nazwa'] = 'System (RemoveGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Zniszczyles Grupe';
     mysql_query("delete from grupa where grupa_id = ".$postac['id']." ");
   } else {
     $postac['nazwa'] = 'System (RemoveGroup)';
     $postac['mapa'] = 0;
     $_POST['tresc'] = 'Nie jestes Przywodca Grupy, aby móc j¹ usun¹æ<br>lub nie istnieje taka grupa';
   } 
   }
   if($_POST['tresc'] == '/igl'){
   $zaproszenia = mysql_query("select * from zapro_grupa where postac_id = ".$postac['id']." order by grupa asc");
   $postac['nazwa'] = 'System (InviteGroup)';
   $postac['mapa'] = 0;
   $_POST['tresc'] = 'Oto Lista Zaproszen:';
   while($zap = mysql_fetch_array($zaproszenia)){
   $postac2 = mysql_fetch_array(mysql_query("select * from postac where id = ".$zap['grupa']." limit 1"));
   $_POST['tresc'] .= "<br>Grupa Gracza: ".$postac2['nazwa']."";  
   }        
   }
   if($_POST['tresc'] == '/ifl'){
   $zaproszenia = mysql_query("select * from zapro_przyjaciel where postac2_id = ".$postac['id']." order by postac_id asc");
   $postac['nazwa'] = 'System (InviteFriends)';
   $postac['mapa'] = 0;
   $_POST['tresc'] = 'Oto Lista Zaproszen do Znajomych:';
   while($zap = mysql_fetch_array($zaproszenia)){
   $postac2 = mysql_fetch_array(mysql_query("select * from postac where id = ".$zap['postac_id']." limit 1"));
   $_POST['tresc'] .= "<br>Gracz: ".$postac2['nazwa']."";  
   }        
   }
   if($_POST['tresc'] == '/groupsquad'){
   $grupa = mysql_fetch_array(mysql_query("select * from grupa where postac_id = ".$postac['id']." limit 1"));
   $zaproszenia = mysql_query("select * from grupa where grupa_id = ".$grupa['grupa_id']." order by grupa_id asc");
   $postac['nazwa'] = 'System (GroupSquad)';
   $postac['mapa'] = 0;
   $_POST['tresc'] = 'Sklad tej Grupy:';
   while($zap = mysql_fetch_array($zaproszenia)){
   $postac2 = mysql_fetch_array(mysql_query("select * from postac where id = ".$zap['postac_id']." limit 1"));
   $_POST['tresc'] .= "<br>Nazwa: ".$postac2['nazwa']." (".$postac2['poziom'].")";  
   }        
   }
   if (preg_match("/aig/", $tekst)) {
    if (($poz = strpos($tekst, '/aig ')) !== false) $tekst2 = substr($tekst, $poz+5, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         $przyjaciel = mysql_num_rows(mysql_query("select * from przyjaciele where (postac = ".$postac['id']." and przyjaciel = ".$wysz['id'].") or (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].")"));
         if(!empty($wysz) && ($przyjaciel >= 1 || $wysz['lockigroup'] == 0)){
         $postac['nazwa'] = 'System (AddInviteGroup)';
         $postac['mapa'] = 0;
         $wlasciciel = mysql_num_rows(mysql_query("select * from grupa where grupa_id = ".$postac['id']." "));
         if($wlasciciel > 0){
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_grupa where grupa = ".$postac['id']." and postac_id = ".$wysz['id']." "));
         if($mazapro < 1){        
                 $_POST['tresc'] = "Wyslano Zaproszenie do ".$tekst2.".";
                 mysql_query("insert into zapro_grupa (grupa, postac_id) values ('".$postac['id']."','".$wysz['id']."')");
         } else $_POST['tresc'] = 'Wyslales juz zaproszenie do Grupy'; 
         } else $_POST['tresc'] = 'Nie jestes wlascicielem Grupy';         
         } elseif($wysz['lockigroup'] == 1){
                 $postac['nazwa'] = 'System (AddInviteGroup)';
                 $_POST['tresc'] = 'Gracz zablokowal przyjmowanie do grupy.';
                 $postac['mapa'] = 0;
         } else {
                 $postac['nazwa'] = 'System (AddInviteGroup)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  
}

if (preg_match("/aif/", $tekst)) {
    if (($poz = strpos($tekst, '/aif ')) !== false) $tekst2 = substr($tekst, $poz+5, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz) && $wysz['lockifriend'] == 0){
         $postac['nazwa'] = 'System (AddInviteFriend)';
         $postac['mapa'] = 0;
         $wlasciciel = mysql_fetch_array(mysql_query("select * from przyjaciel where (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].") or (przyjaciel = ".$wysz['id']." and postac = ".$postac['id'].") "));
         if(empty($wlasciciel) && $postac['id'] != $wysz['id']){
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_przyjaciel where (postac_id = ".$postac['id']." and postac2_id = ".$wysz['id'].") or (postac2_id = ".$postac['id']." and postac_id = ".$wysz['id'].") "));
         if($mazapro < 1){        
                 $_POST['tresc'] = "Wyslano Zaproszenie do ".$tekst2.".";
                 mysql_query("insert into zapro_przyjaciel (postac_id, postac2_id) values ('".$postac['id']."','".$wysz['id']."')");
         } else $_POST['tresc'] = 'Wyslales juz zaproszenie do Grupy'; 
         } elseif($postac['id'] == $wysz['id']) $_POST['tresc'] = 'You Are Idiot!!!'; 
         else $_POST['tresc'] = 'Jestescie juz przyjaciolmi.';         
         } elseif($wysz['lockifriend'] == 1){
                 $postac['nazwa'] = 'System (AddInviteFriend)';
                 $_POST['tresc'] = "".$wysz['nazwa']." zablokowal przyjmowanie zaproszen.";
                 $postac['mapa'] = 0;
         } else {
                 $postac['nazwa'] = 'System (AddInviteFriend)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  
}

if (preg_match("/groupinvite/", $tekst)) {
    if (($poz = strpos($tekst, '/groupinvite ')) !== false) $tekst2 = substr($tekst, $poz+13, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
         $postac['nazwa'] = 'System (GroupInvite)';
         $postac['mapa'] = 0;
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_grupa where grupa = ".$wysz['id']." and postac_id = ".$postac['id']." "));
         if($mazapro >= 1){        
                 $_POST['tresc'] = "Przyjales zaproszenie do grupy Gracza ".$tekst2.".";
                 mysql_query("insert into grupa (grupa_id, postac_id) values ('".$wysz['id']."','".$postac['id']."')");
                 mysql_query("delete from zapro_grupa where grupa = ".$wysz['id']." and postac_id = ".$postac['id']." limit 1");
         } else $_POST['tresc'] = 'Blad';         
         } else {
                 $postac['nazwa'] = 'System (GroupInvite)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  }
  if (preg_match("/groupdecline/", $tekst)){
    if (($poz = strpos($tekst, '/groupdecline ')) !== false) $tekst2 = substr($tekst, $poz+14, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
         $postac['nazwa'] = 'System (GroupDecline)';
         $postac['mapa'] = 0;
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_grupa where grupa = ".$wysz['id']." and postac_id = ".$postac['id']." "));
            if($mazapro >= 1){        
                  $_POST['tresc'] = "Odrzuciles zaproszenie do grupy Gracza ".$tekst2.".";
                  mysql_query("delete from zapro_grupa where grupa = ".$wysz['id']." and postac_id = ".$postac['id']." limit 1");
            } else $_POST['tresc'] = 'Blad';         
         } else {
                 $postac['nazwa'] = 'System (GroupDecline)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  
}
if (preg_match("/friendinvite/", $tekst)) {
    if (($poz = strpos($tekst, '/friendinvite ')) !== false) $tekst2 = substr($tekst, $poz+14, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
         $postac['nazwa'] = 'System (Friend Invite)';
         $postac['mapa'] = 0;
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_przyjaciel where postac_id = ".$wysz['id']." and postac2_id = ".$postac['id']." "));
         if($mazapro >= 1){        
                 $_POST['tresc'] = "Twoim Przyjacielem zostal ".$tekst2.".";
                 mysql_query("insert into przyjaciele (postac, przyjaciel) values ('".$wysz['id']."','".$postac['id']."')");
                 mysql_query("delete from zapro_przyjaciel where postac_id = ".$wysz['id']." and postac2_id = ".$postac['id']." limit 1");
         } else $_POST['tresc'] = 'Blad';         
         } else {
                 $postac['nazwa'] = 'System (Friend Invite)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  }
if (preg_match("/friendremove/", $tekst)) {
    if (($poz = strpos($tekst, '/friendremove ')) !== false) $tekst2 = substr($tekst, $poz+14, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
         $postac['nazwa'] = 'System (Friend Remove)';
         $postac['mapa'] = 0;
         $przyjaciel = mysql_fetch_array(mysql_query("select * from przyjaciele where (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].") or (przyjaciel = ".$wysz['id']." and postac = ".$postac['id'].") limit 1"));
         if(!empty($przyjaciel)){        
                 $_POST['tresc'] = "Usunales ".$tekst2." z listy przyjaciol.";
                 mysql_query("delete from przyjaciele where (postac = ".$wysz['id']." and przyjaciel = ".$postac['id'].") or (przyjaciel = ".$wysz['id']." and postac = ".$postac['id'].") ");
         } else $_POST['tresc'] = 'Blad';         
         } else {
                 $postac['nazwa'] = 'System (Friend Remove)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  }
  if (preg_match("/frienddecline/", $tekst)){
    if (($poz = strpos($tekst, '/frienddecline ')) !== false) $tekst2 = substr($tekst, $poz+15, 1000);
	if(empty($tekst2)){
               $_POST['tresc'] = "Wartosc jest pusta"; 
  } else {
         $wysz = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$tekst2."' limit 1"));
         if(!empty($wysz)){
         $postac['nazwa'] = 'System (GroupDecline)';
         $postac['mapa'] = 0;
         $mazapro = mysql_num_rows(mysql_query("select * from zapro_przyjaciel where postac_id = ".$wysz['id']." and postac2_id = ".$postac['id']." "));
            if($mazapro >= 1){        
                  $_POST['tresc'] = "Odrzuciles zaproszenie do przyjaciol od ".$tekst2.".";
                  mysql_query("delete from zapro_przyjaciel where postac_id = ".$wysz['id']." and postac2_id = ".$postac['id']." limit 1");
            } else $_POST['tresc'] = 'Blad';         
         } else {
                 $postac['nazwa'] = 'System (GroupDecline)';
                 $_POST['tresc'] = 'Brak takiej postaci.';
                 $postac['mapa'] = 0;
         }
  }
  
}
   if($postac['mapa'] == 0) mysql_query("insert into chat (kto,tresc,postac_id) values ('".$postac['nazwa']."','".$_POST['tresc']."','".$postac['id']."')");
   else mysql_query("insert into chat (kto,tresc,mapa_id) values ('[".$postac['nazwa']."]','".$_POST['tresc']."','".$postac['mapa']."')");
} else mysql_query("insert into chat (kto,tresc,postac_id) values ('[SYSTEM]','Nie mozesz pisac ze wzgledu na blokade','".$postac['id']."')");
}

echo $ajax_txt;
exit;
?>