<?php
      require_once('polacz.php');
      session_start;
      if(!empty($_POST['item']) && !empty($_POST['pid']) && !empty($_POST['szansa'])){
            mysql_query("insert into paczka_przedmiot (paczka_id, przedmiot_id, szansa) VALUES ('".$_POST['pid']."','".$_POST['item']."','".$_POST['szansa']."')");
      }
?>
<form action='packeditor.php' method='post'>
ID Paczki: <input name='pid'>
Szansa(%*10): <input name='szansa'>
<select name='item'>
<option value='0'>LISTA PRZEDMIOTÓW</option>
<?php
$przedmioty = mysql_query("select * from przedmiot_loot order by id asc");
while($p = mysql_fetch_array($przedmioty)){
     echo "<option value='".$p['id']."'>".$p['nazwa']."</option>";
}
?>
</select>
<input type='submit' value='Dodaj'>
</form>