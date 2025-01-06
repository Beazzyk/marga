<div style='width: 225px; background: black; color: white; text-decoration: none; position: absolute; z-index: 1; left: 0px; top: 0px;'>
  Wyszukaj Moba:<br>
  <form action='<?php echo "edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=mobadd"; ?>' method='post'>
        <input name='mob'><br>
        <input type='submit' value='Szukaj'>
  </form>
<?php
     if(!empty($_GET['mobadd'])){
             $istnieje = mysql_fetch_array(mysql_query("select * from mob where id = ".$_GET['mobadd']." limit 1"));
             mysql_query("INSERT INTO mob (`obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`) 
             VALUES ('".$istnieje['obrazek']."', '".$_SESSION['mapa']."', '".$_GET['x']."', '".$_GET['y']."', '".$istnieje['nazwa']."', '".$istnieje['poziom']."', '".$istnieje['typ']."', '".$istnieje['szerokosc']."', '".$istnieje['dlugosc']."', '".$istnieje['zycie_max']."', '".$istnieje['zycie_max']."', '".$istnieje['sa']."', '".$istnieje['ac']."', '".$istnieje['acm']."', '".$istnieje['acp']."', '".$istnieje['ck']."', '".$istnieje['ckf']."', '".$istnieje['ckm']."', '".$istnieje['przebicie']."', '".$istnieje['obr_min']."', '".$istnieje['obr_max']."', '".$istnieje['profesja']."', '".$istnieje['obr_mag']."', '".$istnieje['obr_poi']."', '".$istnieje['sila']."', '".$istnieje['zrecznosc']."', '".$istnieje['intelekt']."', '".$istnieje['absorbcja']."', '".$istnieje['mabsorbcja']."', '".$istnieje['unik']."', '".$istnieje['blok']."', '".$istnieje['exp']."', '".$istnieje['respawn_time']."', '0', '0', '".$istnieje['obnizac']."', '".$istnieje['obnizacm']."', '".$istnieje['obnizsa']."'
             , '".$istnieje['paczka']."', '".$istnieje['paczka2']."')");
             header('Location: edytor.php');
     } elseif(!empty($_POST['mob'])){
             $istnieje = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$_POST['mob']."' limit 1"));
             if(empty($istnieje)) echo "Brak Danych.";
             else {
                   echo "<img src='../MAEGONEM_pliki/".$istnieje['obrazek']."'></img>
                   ".$istnieje['nazwa']." ".$istnieje['poziom']." 
                   <a href='edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&mobadd=".$istnieje['id']."'>WSTAW</a> ";
                   $_SESSION['ostatnioszukany'] = $_POST['mob'];
             }
     }
  ?>
</div>