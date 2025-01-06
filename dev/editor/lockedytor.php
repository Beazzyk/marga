<body style='background: black; color: white;'>
<?php
      require_once('polacz.php');
      session_start;
      $mapa = mysql_fetch_array(mysql_query("select * from mapa where id = ".$_SESSION['mapa2']." limit 1"));
      echo "<img src='../MAEGONEM_pliki/".$mapa['obrazek']."'></img>";
      if($_GET['block'] == 'set'){
        if($_GET['x'] >= 0){
          if($_GET['y'] >= 0){
             $blokada = mysql_fetch_array(mysql_query("select * from blokadaprzejscia where mapa = ".$_SESSION['mapa2']." and x = ".$_GET['x']." and y = ".$_GET['y']." limit 1"));
             if(!empty($blokada)){
                  mysql_query("delete from blokadaprzejscia where mapa = ".$_SESSION['mapa2']." and x = ".$_GET['x']." and y = ".$_GET['y']." limit 1");
             } else {
                  mysql_query("insert into blokadaprzejscia (mapa, x, y) VALUES ('".$_SESSION['mapa2']."','".$_GET['x']."','".$_GET['y']."')");
             }
          }
        }
      }
      // Generowanie Klatek             
      for($j=0;$j<=$mapa['maks_y'];$j++){
        for($i=0;$i<=$mapa['maks_x'];$i++){
        $blokada = mysql_fetch_array(mysql_query("select * from blokadaprzejscia where mapa = ".$_SESSION['mapa2']." and x = ".$i." and y = ".$j." limit 1"));
        if(!empty($blokada)) echo "<a title='Blokada' style='background: black; position: absolute; left:".($i*32)."; top: ".($j*32)."; width: 32px; height: 32px;' href='lockedytor.php?x=".$i."&y=".$j."&block=set'></a>";
        else echo "<a title='Brak Blokady' style='position: absolute; left:".($i*32)."; top: ".($j*32)."; width: 32px; height: 32px;' href='lockedytor.php?x=".$i."&y=".$j."&block=set'></a>";
         }
      }
?>
</body>