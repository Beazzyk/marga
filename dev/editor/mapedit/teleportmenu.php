<div style='width: 100px; background: black; color: white; text-decoration: none; position: absolute; z-index: 1; left: 0px; top: 0px;'>
  <?php
      if($_GET['action'] == 'deltp'){
                   mysql_query("delete from mapa_przenies where (mapa = ".$_SESSION['mapa']." and x = ".$_GET['x']." and y = ".$_GET['y'].") OR (do_mapa = ".$_SESSION['mapa']." and do_x = ".$_GET['x']." and do_y = ".$_GET['y'].") limit 2");
                   if(mysql_affected_rows() != 0) echo "Usuniêto.";
      }
  ?>
  Teleport:<br>
  <a href='<?php echo "edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=deltp"; ?>'>Usuñ Teleport</a>
</div>