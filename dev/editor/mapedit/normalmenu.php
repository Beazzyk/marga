<div style='width: 100px; background: black; color: white; text-decoration: none; position: absolute; z-index: 1; left: 0px; top: 0px;'>
  <?php
      if($_GET['action'] == 'addtp'){
            if($_GET['a'] == 'got'){
                        mysql_query("insert into mapa_przenies (mapa,x,y,do_mapa,do_x,do_y) VALUES ('".$_SESSION['mapa']."','".$_GET['x']."','".$_GET['y']."','".$_POST['mapa1']."','".$_POST['X']."','".$_POST['Y']."')");
                        mysql_query("insert into mapa_przenies (do_mapa,do_x,do_y,mapa,x,y) VALUES ('".$_SESSION['mapa']."','".$_GET['x']."','".$_GET['y']."','".$_POST['mapa1']."','".$_POST['X']."','".$_POST['Y']."')");
            }
            $map = mysql_query("select * from mapa order by id asc");
            echo "<form action='edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=addtp&a=got' method='post'>Wybierz Mapê:<br>";
            echo "<select name=mapa1><option value=0>LISTA MAP</option>";
            while($m = mysql_fetch_array($map)){
                       echo "<option value=".$m['id'].">".$m['nazwa']."</option>";
            }
            echo "</select><br>
            &radic; X <input name='X'><br>
            Y <input name='Y'><br>
            <input type='submit' value='Edytuj'></form>";
      } else {
  ?>
  Menu:<br>
  <a href='<?php echo "edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=mobadd"; ?>'>Dodaj Moba</a>
  <?php
  $ost = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$_SESSION['ostatnioszukany']."' limit 1"));
        if(!empty($ost)){
  ?>
  <a href='<?php echo "edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&mobadd=".$ost['id'].""; ?>'>Powtórz Moba</a>
  <?php } ?>
  <a href='<?php echo "edytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=addtp"; ?>'>Dodaj Teleport</a>
  <?php
      }
  ?>
</div>