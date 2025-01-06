<?php
      require_once('../polacz.php');
      $czytp = mysql_fetch_array(mysql_query("select * from mapa_przenies where mapa = ".$_SESSION['mapa']." and x = ".$_POST['x']." and y = ".$_POST['y']." limit 1"));
      $czymob = mysql_fetch_array(mysql_query("select * from mob where mapa = ".$_SESSION['mapa']." and x = ".$_POST['x']." and y = ".$_POST['y']." limit 1"));
      if(empty($czymob) && empty($czytp)){
      $istnieje = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$_POST['dodaj']."' limit 1"));
            if(!empty($istnieje)){ 
             mysql_query("INSERT INTO mob (`obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`) 
             VALUES ('".$istnieje['obrazek']."', '".$_SESSION['mapa']."', '".$_POST['x']."', '".$_POST['y']."', '".$istnieje['nazwa']."', '".$istnieje['poziom']."', '".$istnieje['typ']."', '".$istnieje['szerokosc']."', '".$istnieje['dlugosc']."', '".$istnieje['zycie_max']."', '".$istnieje['zycie_max']."', '".$istnieje['sa']."', '".$istnieje['ac']."', '".$istnieje['acm']."', '".$istnieje['acp']."', '".$istnieje['ck']."', '".$istnieje['ckf']."', '".$istnieje['ckm']."', '".$istnieje['przebicie']."', '".$istnieje['obr_min']."', '".$istnieje['obr_max']."', '".$istnieje['profesja']."', '".$istnieje['obr_mag']."', '".$istnieje['obr_poi']."', '".$istnieje['sila']."', '".$istnieje['zrecznosc']."', '".$istnieje['intelekt']."', '".$istnieje['absorbcja']."', '".$istnieje['mabsorbcja']."', '".$istnieje['unik']."', '".$istnieje['blok']."', '".$istnieje['exp']."', '".$istnieje['respawn_time']."', '0', '".$_POST['grupa']."', '".$istnieje['obnizac']."', '".$istnieje['obnizacm']."', '".$istnieje['obnizsa']."'
             , '".$istnieje['paczka']."', '".$istnieje['paczka2']."')");
      echo "Dodano Moba";
      }
      }
      exit;
?>