<body style='background: black; color: white;'>
<?php
      require_once('polacz.php');
      session_start;
      $mapa = mysql_fetch_array(mysql_query("select * from mapa where id = ".$_SESSION['mapa']." limit 1"));
      echo "<img style='top: 100px; position: absolute;' src='../MAEGONEM_pliki/".$mapa['obrazek']."'></img>";
      if($_GET['x'] >= 0){
         if($_GET['y'] >= 0){
             $czymob = mysql_fetch_array(mysql_query("select * from mob where mapa = ".$_SESSION['mapa']." and x = ".$_GET['x']." and y = ".$_GET['y']." limit 1"));
             $czyteleport = mysql_fetch_array(mysql_query("select * from mapa_przenies where (mapa = ".$_SESSION['mapa']." and x = ".$_GET['x']." and y = ".$_GET['y'].") OR (do_mapa = ".$_SESSION['mapa']." and do_x = ".$_GET['x']." and do_y = ".$_GET['y'].") limit 1"));
             if($_GET['action'] == 'mobadd' || $_GET['mobadd'] > 0) require_once('mapedit/mobadd.php');
             elseif(!empty($czyteleport)) require_once('mapedit/teleportmenu.php');
             elseif(!empty($czymob)) require_once('mapedit/mobmenu.php');
             else require_once('mapedit/normalmenu.php');
         }
      }
      // Generowanie Klatek             
      for($j=0;$j<=$mapa['maks_y'];$j++){
        for($i=0;$i<=$mapa['maks_x'];$i++){
          echo "<a style='position: absolute; left:".($i*32)."; top: ".(100+($j*32))."; width: 32px; height: 32px;' href='edytor.php?x=".$i."&y=".$j."'></a>";
        }
      }
?>
</body>