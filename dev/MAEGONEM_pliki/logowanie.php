<?php
require_once('php/mysql-connect.php');
$ust = array(exp => 1.2, drop => 1, multidrop => 1, playerpower => 1, mobpower => 1);

$baza_zar = mysql_num_rows(mysql_query("select * from postac"));
$baza_zal = mysql_num_rows(mysql_query("select * from postac where zalogowany = 1"));

$zal_pro = (int)(($baza_zal / $baza_zar) * 100);
$l = mysql_query("select * from postac order by id asc");
if(!empty($_POST['haslo'])){
if(!empty($_POST['postac'])){
$dane = mysql_fetch_array(mysql_query("select * from postac where id = '".$_POST['postac']."' and haslo = '".$_POST['haslo']."' limit 1"));
if(!empty($dane)){
if($dane['ban'] == 0){
$_SESSION['postac'] = $_POST['postac'];
mysql_query("update postac set zalogowany = 1 where id = ".$_POST['postac']." ");
header('Location: game.php');
} else {
echo "<span style='color: red; font-weight: bold;'>Postac jest zablokowana</span><hr>";
}
} else {
echo "<span style='color: red; font-weight: bold;'>Bledne Haslo</span><hr>";
}
}
}
?>

<center>
<div style='color: white;'>
<b>Zarejestrowanych : <?php echo $baza_zar; ?></b><br>
<?php 
if($zal_pro < 25) echo "<b style='color: #660000;'>On-line: ".$baza_zal."/".$baza_zar." (".$zal_pro."%)</b>";
elseif($zal_pro < 50 && $zal_pro >= 25) echo "<b style='color: #BB5500;'>On-line: ".$baza_zal."/".$baza_zar." (".$zal_pro."%)</b>";
elseif($zal_pro < 75 && $zal_pro >= 50) echo "<b style='color: #AAAA00;'>On-line: ".$baza_zal."/".$baza_zar." (".$zal_pro."%)</b>";
elseif($zal_pro < 100 && $zal_pro >= 75) echo "<b style='color: #00BB00;'>On-line: ".$baza_zal."/".$baza_zar." (".$zal_pro."%)</b>";
else echo "<b style='color: #006600;'>On-line: ".$baza_zal."/".$baza_zar." (".$zal_pro."%)</b>";
?>
</div>
<center>
<form action='profil.php' method='post'>
<select name="eq">
<?php
$l = mysql_query("select * from postac order by id asc");
while($m = mysql_fetch_array($l)){
echo "<option value='".$m['id']."'>".$m['nazwa']."</option>";
}
?>
</select><br>
<input type='submit' value='Zobacz EQ'><br>
</form>
<hr>
<div style='color: white;'>EXP : x<?php echo $ust[exp]; ?></div>
<div style='color: white;'>DROP : x<?php echo $ust[drop]; ?></div>
<div style='color: white;'>MULTIDROP : x<?php echo $ust[multidrop]; ?></div>
<div style='color: white;'>MOC GRACZY : x<?php echo $ust[playerpower]; ?></div>
<div style='color: white;'>MOC MOBA : x<?php echo $ust[mobpower]; ?></div>
</center>