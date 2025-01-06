<?php
     require_once('polacz.php');
     echo "Dodawanie Potwora do Grupy<br>";
     echo "<form action='groupedit.php?action=search' method='post'>
             Nazwa Potwora: <input name='potwor' value='".$_GET['potwor']."'> <input type='submit' value='Szukaj'>
     </form>";
     if($_GET['action'] == 'search'){
             if($_GET['id'] > 0){
                     $potwor = mysql_fetch_array(mysql_query("select * from mob where id = ".$_GET['id']." limit 1"));
                     mysql_query("update mob set grupa = ".$_POST['gid']." where id = ".$_GET['id']." limit 1");
                     if(mysql_affected_rows() == 0) echo "Blad";
                     else {
                            if($potwor['grupa'] == 0) echo "Mob zostal przydzielony do grupy";
                            else echo "Zmieniono Grupe.";
                     }
                     echo "<hr>";
             }
             $mob = mysql_query("select * from mob where nazwa = '".$_POST['potwor']."' order by id asc");
             echo "<hr>Wyniki Wyszukiwania: <br><table style='width: 125%;'>";
             echo "<tr><td>Mob</td><td>Mapa</td><td>X</td><td>Y</td><td>ID Grupy</td><td>Opcje</td></tr>";
             while($m = mysql_fetch_array($mob)){
                    $mapa = mysql_fetch_array(mysql_query("select * from mapa where id = ".$m['mapa']." limit 1"));
                    echo "<tr><td>".$m['nazwa']."</td><td>".$mapa['nazwa']."</td><td>".$m['x']."</td><td>".$m['y']."</td><td>".$m['grupa']."</td><td>
                    <form action='groupedit.php?action=search&potwor=".$_POST['potwor']."&id=".$m['id']."' method='post'>
                    <input name='gid'> <input type='submit' value='Dodaj / Twórz'>
                    </form>
                    </td></tr>";
             }
             echo "</table>";
     }
?>