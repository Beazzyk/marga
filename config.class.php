<?php
      class baza {
         function polaczenie($a,$b,$c,$d,$e){
                  $p = mysql_connect($a, $b, $c) or die('Blad z Polaczeniem');
                  mysql_select_db($d,$p) or die('Blad - Brak takiej bazy');
                  mysql_query("SET NAMES '".$e."'");
         }
      }
      function all($a){
                      $b = mysql_query($a);
                      return $b;
      }
      function one($a){
                      $b = mysql_fetch_array(mysql_query($a));
                      return $b;
      }
?>