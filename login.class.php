<?php
     function po5($a){
                     $b = strlen($a);
                     for($i=1;$i<=$b-2;$i++){
                          $tmp = $a[$i];
                          $a[$i] = $a[$i++];
                          $a[$i++] = $tmp;
                     }
                     return $a;
     }
     class login {
             function istniejelogin($a){
                         $b = mysql_fetch_array(mysql_query("select * from account where login = '".$a."' limit 1"));
                         if(empty($b)) return false;
                         else return true;
             }
             function istniejehaslo($a, $b){
                         $c = mysql_fetch_array(mysql_query("select * from account where login = '".$a."' and haslo = '".$b."' limit 1"));
                         if(empty($c)) return false;
                         else return $c['id'];
             }
     }
     class rejestracja {
              function ilogin($a){
                         $b = mysql_fetch_array(mysql_query("select * from account where login = '".po5($a)."' limit 1"));
                         if(empty($b)) return true;
                         else return false;
              }
              function phasel($a, $b){
                         if($a == $b) return true;
                         else return false;
              }
              function imail($a){
                         $b = mysql_fetch_array(mysql_query("select * from account where email = '".$a."' limit 1"));
                         if(empty($b)) return true;
                         else return false;
              }
              function utworz_konto($a,$b,$c){
                       mysql_query("insert into account (login,haslo,email) VALUES ('".$a."','".$b."','".$c."')");  
              }
     }
?>