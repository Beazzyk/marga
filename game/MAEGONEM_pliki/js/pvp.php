<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');

$grupa = mysql_fetch_array(mysql_query("select * from grupa where postac_id = ".$postac['id']." limit 1"));
$atakowany = mysql_fetch_array(mysql_query("select * from postac where id = ".$_POST['id']." limit 1"));

if((($mapa['pvp'] == 1 || $mapa['pvp'] == 2) && $atakowany['pvp'] == 1) || $mapa['pvp'] == 3 && $atakowany['mapa'] == $postac['mapa'] && ($postac['x'] == $atakowany['x'] - 1 || $postac['x'] == $atakowany['x'] || $postac['x'] == $atakowany['x'] + 1) && ($postac['y'] == $atakowany['y'] - 1 || $postac['y'] == $atakowany['y'] || $postac['y'] == $atakowany['y'] + 1)){
if(!empty($grupa)){
if($_POST['id2'] <= 0) require_once('pvp-1n-grupa.php');
else require_once('pvp-xn-grupa.php');
} else {
if($_POST['id2'] <= 0) require_once('pvp-1n1.php');
else require_once('pvp-1nx.php');
}
} elseif($atakowany['mapa'] != $postac['mapa'] || ($postac['x'] != $atakowany['x'] - 1 && $postac['x'] != $atakowany['x'] && $postac['x'] != $atakowany['x'] + 1) || ($postac['y'] != $atakowany['y'] - 1 && $postac['y'] != $atakowany['y'] && $postac['y'] != $atakowany['y'] + 1)) { echo "Nie mozesz atakowac z dystansu."; exit;
} else { echo "PvP Niedozwolone"; exit; }
?>