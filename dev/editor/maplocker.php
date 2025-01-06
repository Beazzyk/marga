<?php
     require_once('polacz.php');
     session_start;
     if(!empty($_SESSION['mapa2'])){
                     if($_GET['edit'] == 'end') $_SESSION['mapa2'] = 0;
                     echo "<iframe border=0 src='lockedytor.php' style='width: 100%; height: 600px;'></iframe>";
                     echo "<form action='maplocker.php?edit=end' method='post'>
                          <input type='submit' value='Zakoncz Edycje'>
                          </form>";
     } else {
            if(!empty($_POST['mapa'])) $_SESSION['mapa2'] = $_POST['mapa'];
            $map = mysql_query("select * from mapa order by id asc");
            echo "<form action='maplocker.php' method='post'>Wybierz Mapê:<br>";
            echo "<select name=mapa><option value=0>STWORZONE MAPKI</option>";
            while($m = mysql_fetch_array($map)){
                       echo "<option value=".$m['id'].">".$m['nazwa']."</option>";
            }
            echo "</select><br><input type='submit' value='Edytuj'></form>";
     }
?>