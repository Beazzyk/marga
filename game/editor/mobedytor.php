<script type='text/javascript' src="js/jquery.js"></script>
<script type='text/javascript' src="js/mobedit.js"></script>
<body style='background: black; color: white;'>
<?php
      require_once('polacz.php');
      session_start;
      $mapa = mysql_fetch_array(mysql_query("select * from mapa where id = ".$_SESSION['mapa']." limit 1"));
      echo "<img style='top: 100px; position: absolute;' src='../MAEGONEM_pliki/".$mapa['obrazek']."'></img>";
      if($_GET['x'] >= 0){
         if($_GET['y'] >= 0){
             ?>
<div style='width: 225px; background: black; color: white; text-decoration: none; position: absolute; z-index: 1; left: 0px; top: 0px;'>
  Wyszukaj Moba:<br>
  <form action='<?php echo "mobedytor.php?x=".$_GET['x']."&y=".$_GET['y']."&action=mobadd"; ?>' method='post'>
        <input id='mob'><input value=0 id='grupa'><br>
  </form>
<?php
    if(!empty($_POST['mob'])){
             $istnieje = mysql_fetch_array(mysql_query("select * from mob where nazwa = '".$_POST['mob']."' limit 1"));
             if(empty($istnieje)) echo "Brak Danych.";
             else {
                   echo "<img src='../MAEGONEM_pliki/".$istnieje['obrazek']."'></img>
                   ".$istnieje['nazwa']." ".$istnieje['poziom']." 
                   Obiekt zapamietano";
                   $_SESSION['ostatnioszukany'] = $_POST['mob'];
             }
     }
  ?>
</div>
<?php
         }
      }
      // Generowanie Klatek
      for($j=0;$j<=$mapa['maks_y'];$j++){
        for($i=0;$i<=$mapa['maks_x'];$i++){
          echo "<div title='X: ".$i." | Y: ".$j."' style='cursor: pointer; position: absolute; left:".($i*32)."; top: ".(100+($j*32))."; width: 32px; height: 32px;' onclick=dodajmoba(".$i.",".$j.");></div>";
        }
      }
?>
</body>