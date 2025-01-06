<script type='text/javascript'>
    function l(a,b){
           var d = document.getElementById(a);
           var e = d.value;
           window.location = "index.php?do=chav&id="+e+"&baza="+b;
    }
    function pp(a,b){
           var d = document.getElementById(a);
           var e = d.value;
           window.location = "index.php?do=pay&id="+e+"&baza="+b;
    }
    function aukcja(a,b){
           var d = document.getElementById(a);
           var e = d.value;
           window.location = "index.php?do=auction&id="+e+"&baza="+b;
    }
</script>
<link rel="stylesheet" type="text/css" href="page.css">
<?php
     if($_GET['do'] == 'logout'){
                    $_SESSION['logged'] = "";
                    header("Location: index.php");
     }
     if($_GET['do'] == 'game' && !empty($_GET['serv']) && $_POST['postac'] > 0){
                            if($_GET['serv'] == 'dev') $server = 'devmargo';
                            elseif($_GET['serv'] == 's1') $server = 'classicmargo';
                            $_SESSION['postac'] = $_POST['postac'];
                            $po->polaczenie('localhost', 'root', '', $server, 'utf-8');
                            mysql_query("update postac set zalogowany = 1 where id = ".$_SESSION['postac']." limit 1");
                            $po->polaczenie('localhost', 'root', '', 'margatron', 'utf-8');
                            if($_GET['serv'] == 'dev') header("Location: dev/index.htm");
                            elseif($_GET['serv'] == 's1') header("Location: game/index.htm");
     }
     if($_GET['do'] == 'newchar' && !empty($_GET['serv'])){
                            if($_GET['serv'] == 'dev' && $_SESSION['logged'] == 1){ $server = 'devmargo'; $formularz = 1; }
                            elseif($_GET['serv'] == 's1'){ $server = 'classicmargo'; $formularz = 1; }
                            else echo "Na tym serwerze nie mozna tworzyc postaci.";
                            $po->polaczenie('localhost', 'root', '', $server, 'utf-8');
                            if(!empty($_POST['nc']) && !empty($_POST['plec']) && !empty($_POST['profesja'])){
                                $b = mysql_fetch_array(mysql_query("select * from postac where nazwa = '".$_POST['nc']."' limit 1"));
                                if(empty($b)){
                                        echo "Gratulacje, zalozyles postac.";
                                        if($_POST['plec'] == 'F') mysql_query("insert into postac (account, nazwa, profesja, obrazek) VALUES ('".$_SESSION['logged']."','".$_POST['nc']."','".$_POST['profesja']."','avatar/female.png')");
                                        else mysql_query("insert into postac (account, nazwa, profesja) VALUES ('".$_SESSION['logged']."','".$_POST['nc']."','".$_POST['profesja']."')");
                                } else echo "Ta nazwa jest juz zajeta.";
                            }
                            $po->polaczenie('localhost', 'root', '', 'margatron', 'utf-8');
                            if($formularz == 1){
                                   echo "<table border=0 align=center style='text-align: center;'>
                                         <form action='index.php?serv=".$_GET['serv']."&do=newchar' method='post'>
                                         <tr><td>Nazwa Postaci</td><td><input name='nc'></td></tr>
                                         <tr><td><input type='radio' name='plec' value='M'></td><td>Mezczyzna</td></tr>
                                         <tr><td><input type='radio' name='plec' value='F'></td><td>Kobieta</td></tr>
                                         <tr><td>Profesja</td><td><select name='profesja'>
                                         <option value='Wojownik'>Wojownik</option>
                                         <option value='Paladyn'>Paladyn</option>
                                         <option value='Tancerz Ostrzy'>Tancerz Ostrzy</option>
                                         <option value='Lowca'>Lowca</option>
                                         <option value='Tropiciel'>Tropiciel</option>
                                         <option value='Mag'>Mag</option>
                                         </select></td></tr>
                                         <tr><td colspan=2><input type='submit' value='' id='cc'></td></tr>
                                         </form>
                                         </table>";
                            }
     }
     if(!empty($_POST['serv'])){
             header("Location: index.php?serv=".$_POST['serv']."");
     }
     echo "<a href='index.php?do=logout'>Wyloguj</a><br />";
     echo "<a href='index.php?do=ranking_s1'>Ranking Swiata Classic</a><br>";
     if(empty($_GET['serv'])){
                  echo "Wybierz Server";
                  echo "<form action='index.php' method='post'>
                  <select name='serv'>
                  <option value='s1'>Classic</option>
                  <option value='dev'>DEV</option>
                  </select><input type='submit' value='Wybierz'>
                  </form>";
     } else {
                  if($_GET['serv'] == 'dev') $server = 'devmargo';
                  elseif($_GET['serv'] == 's1') $server = 'classicmargo';
                  echo "Wybierz Postac";
                  echo "<form action='index.php?serv=".$_GET['serv']."&do=game' method='post'>
                  <select name=postac id=postac>";
                  $po->polaczenie('localhost', 'root', '', $server, 'utf-8');
                  $czy = mysql_fetch_array(mysql_query("select * from postac where account = ".$_SESSION['logged']." and ban = 0 limit 1"));
                  if(!empty($czy)){
                  $postac = all("select * from postac where account = ".$_SESSION['logged']." and ban = 0 order by poziom desc");
                  while($p = mysql_fetch_array($postac)){
                            echo "<option value=".$p['id'].">".$p['nazwa']."(".$p['poziom'].")</option>";
                  }
                  } else echo "<option value='0'>BRAK POSTACI</option>";
                  echo "</select><input type='submit' value='Graj'></form>";
                  $po->polaczenie('localhost', 'root', '', 'margatron', 'utf-8');
                  echo "<a href='index.php?serv=".$_GET['serv']."&do=newchar'>Stworz Postac</a><br />";
                  ?>
                     <button onclick="l('postac','<?php echo $server; ?>');">Zmien Wyglad Postaci</button><br />
                     <button onclick="pp('postac','<?php echo $server; ?>');">Doladuj SL</button><br />
                     <button onclick="aukcja('postac','<?php echo $server; ?>');">Wejdz na aukcje</button><br />
                  <?php 
                  echo "<form action='index.php' method='post'>
                        <input type='submit' value='Zmien Serwer'>
                        </form>";
     }
     if($_GET['do'] == 'ranking_s1'){
             if(empty($_GET['str'])) $_GET['str'] = 0;
             echo "<div align=center>
                   <b>Ranking Classic</b>
                   <table border=0 style='text-align: center;'>
                   <tr><td>Lp.</td><td>Nazwa</td><td>Poziom</td><td>PH</td></tr>";
             $postac = mysql_query("select * from classicmargo.postac order by exp desc limit ".($_GET['str']*25).",25");
             $i=$_GET['str']*25;
             while($p = mysql_fetch_array($postac)){
                  $i++;
                  echo "<tr><td>".$i."</td><td><a href='game/MAEGONEM_pliki/profil.php?eq=".$p['id']."'>".$p['nazwa']."</a></td><td>".$p['poziom']."</td><td>".$p['ph']."</td></tr>";
             } 
             echo "</table><a href='index.php?do=ranking_s1&str=".($_GET['str']-1)."'><<</a><a href='index.php?do=ranking_s1&str=".($_GET['str']+1)."'>>></a></div>";
     }
     if($_GET['do'] == 'chav' && $_GET['id'] > 0){
               $postac = one("select * from ".$_GET['baza'].".postac where id = ".$_GET['id']." and account = ".$_SESSION['logged']." limit 1");
               if(!empty($_GET['stroj'])){
                         if($_GET['stroj'] == 'm1') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_bd28.gif' where id = ".$postac['id']." limit 1");
                         if($_GET['stroj'] == 'f1') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female.png' where id = ".$postac['id']." limit 1");
                         if($postac['poziom'] >= 10){
                             if($_GET['stroj'] == 'm2') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_lowca08.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f2') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female2.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 20){
                             if($_GET['stroj'] == 'm3') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_pal21.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f3') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female3.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 30){
                             if($_GET['stroj'] == 'm4') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_tr17.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f4') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female4.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 40){
                             if($_GET['stroj'] == 'm5') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_woj50.png' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f5') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female5.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 50){
                             if($_GET['stroj'] == 'm6') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_mag60.png' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f6') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female6.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 60){
                             if($_GET['stroj'] == 'm7') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_pal24.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f7') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female7.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 70){
                             if($_GET['stroj'] == 'm8') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_lowce05.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f8') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female8.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 80){
                             if($_GET['stroj'] == 'm9') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/m_bd06.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f9') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female9.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 90){
                             if($_GET['stroj'] == 'm10') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/bm.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f10') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female10.png' where id = ".$postac['id']." limit 1");
                         }
                         if($postac['poziom'] >= 100){
                             if($_GET['stroj'] == 'm11') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/p_m_woj.gif' where id = ".$postac['id']." limit 1");
                             if($_GET['stroj'] == 'f11') mysql_query("update ".$_GET['baza'].".postac set obrazek = 'avatar/female11.png' where id = ".$postac['id']." limit 1");
                         }
                         echo "Zmieniono Wyglad.";
               } 
               echo "Lista Wygladow dla ".$postac['nazwa']."<br />
                     <table border=0>
                     <tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m1'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_bd28.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f1'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
                     
               if($postac['poziom'] >= 10){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m2'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_lowca08.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f2'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female2.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 20){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m3'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_pal21.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f3'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female3.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 30){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m4'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_tr17.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f4'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female4.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 40){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m5'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_woj50.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f5'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female5.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 50){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m6'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_mag60.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f6'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female6.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 60){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m7'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_pal24.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f7'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female7.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 70){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m8'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_lowce05.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f8'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female8.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 80){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m9'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/m_bd06.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f9'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female9.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 90){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m10'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/bm.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f10'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female10.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               if($postac['poziom'] >= 100){
               echo "<tr><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=m11'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/p_m_woj.gif); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td><td><a href='index.php?do=chav&id=".$_GET['id']."&baza=".$_GET['baza']."&stroj=f11'><div style='background-image: url(dev/MAEGONEM_pliki/avatar/female11.png); background-position: 0px 0px; width: 32px; height: 48px;'></div></a>
                     </td></tr>";
               }
               echo "</table><a href='index.php'>Powrot</a>";
     }
     if($_GET['do'] == 'pay' && $_GET['id'] > 0){
               $postac = one("select * from ".$_GET['baza'].".postac where id = ".$_GET['id']." and account = ".$_SESSION['logged']." limit 1");
               if(!empty($_POST['kod'])){
                        $kod = one("select * from margatron.paypal where kod = '".$_POST['kod']."' limit 1");
                        if(!empty($kod)){
                                      echo "<b style='color: green;'>Zasililes konto postaci o ".$kod['ile']." Smoczych Lez.</b><br>";
                                      $postac['sl'] += $kod['ile'];
                                      mysql_query("update ".$_GET['baza'].".postac set sl = sl + ".$kod['ile']." where id = ".$postac['id']." and account = ".$_SESSION['logged']." limit 1");
                                      mysql_query("delete from margatron.paypal where kod = '".$_POST['kod']."' and ile = ".$kod['ile']." limit 1");
                        } else echo "<b style='color: red;'>Nieprawidlowy Kod.</b><br>";
               }
               echo "Posiadasz Aktualnie <b>".$postac['sl']."</b> Smoczych Lez na tej postaci.
                     <br><br>Wpisz Kod otrzymany przelewem:
                     <form action='index.php?do=pay&id=".$_GET['id']."&baza=".$_GET['baza']."' method='post'>
                     <input name='kod'><input type='submit' value='Doladuj'><br>
                     </form>";
               echo "<br>Jak dokonac przelewu?<br>
                     Numer Konta: Skycash 530110238<br>
                     Tytul: Przelew SL<br>
                     1 Zloty jest rowne 1SL.";
               echo "<br><a href='index.php'>Powrot</a>";
     }
     if($_GET['do'] == 'auction' && $_GET['id'] > 0){
               if($_GET['baza'] == 'classicmargo') require_once('game/aukcja.php');
               elseif($_GET['baza'] == 'devmargo') require_once('dev/aukcja.php');
     }
?>