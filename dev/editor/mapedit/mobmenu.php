<div style='width: 100px; background: black; color: white; text-decoration: none; position: absolute; z-index: 1; left: 0px; top: 0px;'>
  <?php
  $mob = mysql_fetch_array(mysql_query("select * from mob where mapa = ".$_SESSION['mapa']." and x = ".$_GET['x']." and y = ".$_GET['y']." limit 1"));
  echo "".$mob['nazwa']."
  <a href='edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=delmob'>Usuñ Moba</a>";
  if($_GET['action'] == 'delmob'){
      mysql_query("delete from mob where x = ".$_GET['x']." and y = ".$_GET['y']." and mapa = ".$_SESSION['mapa']." limit 1");
      if(mysql_affected_rows() != 0) echo "Usuniêto Moba";
  }
  ?>
</div>