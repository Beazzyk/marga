<?php
      require_once('../php/mysql-connect.php');
      require_once('../php/load-data.php');
      require_once('umiejetnosc-walka.php');
      
      $mob = mysql_fetch_array(mysql_query("select * from mob where id = ".$_POST['id']." and respawn <= ".time()." limit 1"));
      $mob2 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob3 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob4 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob5 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob6 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and id != ".$mob5['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob7 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and id != ".$mob5['id']." and id != ".$mob6['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob8 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and id != ".$mob5['id']." and id != ".$mob6['id']." and id != ".$mob7['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob9 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and id != ".$mob5['id']." and id != ".$mob6['id']." and id != ".$mob7['id']." and id != ".$mob8['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      $mob10 = mysql_fetch_array(mysql_query("select * from mob where grupa != 0 and id != ".$_POST['id']." and id != ".$mob2['id']." and id != ".$mob3['id']." and id != ".$mob4['id']." and id != ".$mob5['id']." and id != ".$mob6['id']." and id != ".$mob7['id']." and id != ".$mob8['id']." and id != ".$mob9['id']." and grupa = ".$mob['grupa']." and respawn <= ".time()." limit 1"));
      
      if($mob['mapa'] == $postac['mapa'] && ($postac['x'] == $mob['x'] || $postac['x']-1 == $mob['x'] || $postac['x']+1 == $mob['x']) && ($postac['y'] == $mob['y'] || $postac['y']-1 == $mob['y'] || $postac['y']+1 == $mob['y'])){
      if($postac['profesja'] == 'Wojownik'){
      $pos = 0;
      $prof = 'w';
      }
      if($postac['profesja'] == 'Paladyn'){
      $pos = 0;
      $prof = 'p';
      }
      if($postac['profesja'] == 'Tancerz Ostrzy'){
      $pos = 0;
      $prof = 'b';
      }
      if($postac['profesja'] == 'Lowca'){
      $pos = 2;
      $prof = 'h';
      }
      if($postac['profesja'] == 'Tropiciel'){
      $pos = 2;
      $prof = 't';
      }
      if($postac['profesja'] == 'Mag'){
      $pos = 1;
      $prof = 'm';
      }
      if($mob['profesja'] == 1){
      $pos2 = 0;
      $prof2 = 'w';
      }
      if($mob['profesja'] == 2){
      $pos2 = 0;
      $prof2 = 'p';
      }
      if($mob['profesja'] == 3){
      $pos2 = 0;
      $prof2 = 'b';
      }
      if($mob['profesja'] == 4){
      $pos2 = 2;
      $prof2 = 'h';
      }
      if($mob['profesja'] == 5){
      $pos2 = 2;
      $prof2 = 't';
      }
      if($mob['profesja'] == 6){
      $pos2 = 1;
      $prof2 = 'm';
      }
      if(!empty($mob2)){
      if($mob2['profesja'] == 1){
      $pos3 = 0;
      $prof3 = 'w';
      }
      if($mob2['profesja'] == 2){
      $pos3 = 0;
      $prof3 = 'p';
      }
      if($mob2['profesja'] == 3){
      $pos3 = 0;
      $prof3 = 'b';
      }
      if($mob2['profesja'] == 4){
      $pos3 = 2;
      $prof3 = 'h';
      }
      if($mob2['profesja'] == 5){
      $pos3 = 2;
      $prof3 = 't';
      }
      if($mob2['profesja'] == 6){
      $pos3 = 1;
      $prof3 = 'm';
      }
      }
      if(!empty($mob3)){
      if($mob3['profesja'] == 1){
      $pos4 = 0;
      $prof4 = 'w';
      }
      if($mob3['profesja'] == 2){
      $pos4 = 0;
      $prof4 = 'p';
      }
      if($mob3['profesja'] == 3){
      $pos4 = 0;
      $prof4 = 'b';
      }
      if($mob3['profesja'] == 4){
      $pos4 = 2;
      $prof4 = 'h';
      }
      if($mob3['profesja'] == 5){
      $pos4 = 2;
      $prof4 = 't';
      }
      if($mob3['profesja'] == 6){
      $pos4 = 1;
      $prof4 = 'm';
      }
      }
      if(!empty($mob4)){
      if($mob4['profesja'] == 1){
      $pos5 = 0;
      $prof5 = 'w';
      }
      if($mob4['profesja'] == 2){
      $pos5 = 0;
      $prof5 = 'p';
      }
      if($mob4['profesja'] == 3){
      $pos5 = 0;
      $prof5 = 'b';
      }
      if($mob4['profesja'] == 4){
      $pos5 = 2;
      $prof5 = 'h';
      }
      if($mob4['profesja'] == 5){
      $pos5 = 2;
      $prof5 = 't';
      }
      if($mob4['profesja'] == 6){
      $pos5 = 1;
      $prof5 = 'm';
      }
      }
      if(!empty($mob5)){
      if($mob5['profesja'] == 1){
      $pos6 = 0;
      $prof6 = 'w';
      }
      if($mob5['profesja'] == 2){
      $pos6 = 0;
      $prof6 = 'p';
      }
      if($mob5['profesja'] == 3){
      $pos6 = 0;
      $prof6 = 'b';
      }
      if($mob5['profesja'] == 4){
      $pos6 = 2;
      $prof6 = 'h';
      }
      if($mob5['profesja'] == 5){
      $pos6 = 2;
      $prof6 = 't';
      }
      if($mob5['profesja'] == 6){
      $pos6 = 1;
      $prof6 = 'm';
      }
      }
      if(!empty($mob6)){
      if($mob6['profesja'] == 1){
      $pos7 = 0;
      $prof7 = 'w';
      }
      if($mob6['profesja'] == 2){
      $pos7 = 0;
      $prof7 = 'p';
      }
      if($mob6['profesja'] == 3){
      $pos7 = 0;
      $prof7 = 'b';
      }
      if($mob6['profesja'] == 4){
      $pos7 = 2;
      $prof7 = 'h';
      }
      if($mob6['profesja'] == 5){
      $pos7 = 2;
      $prof7 = 't';
      }
      if($mob6['profesja'] == 6){
      $pos7 = 1;
      $prof7 = 'm';
      }
      }
      if(!empty($mob7)){
      if($mob7['profesja'] == 1){
      $pos8 = 0;
      $prof8 = 'w';
      }
      if($mob7['profesja'] == 2){
      $pos8 = 0;
      $prof8 = 'p';
      }
      if($mob7['profesja'] == 3){
      $pos8 = 0;
      $prof8 = 'b';
      }
      if($mob7['profesja'] == 4){
      $pos8 = 2;
      $prof8 = 'h';
      }
      if($mob7['profesja'] == 5){
      $pos8 = 2;
      $prof8 = 't';
      }
      if($mob7['profesja'] == 6){
      $pos8 = 1;
      $prof8 = 'm';
      }
      }
      if(!empty($mob8)){
      if($mob8['profesja'] == 1){
      $pos9 = 0;
      $prof9 = 'w';
      }
      if($mob8['profesja'] == 2){
      $pos9 = 0;
      $prof9 = 'p';
      }
      if($mob8['profesja'] == 3){
      $pos9 = 0;
      $prof9 = 'b';
      }
      if($mob8['profesja'] == 4){
      $pos9 = 2;
      $prof9 = 'h';
      }
      if($mob8['profesja'] == 5){
      $pos9 = 2;
      $prof9 = 't';
      }
      if($mob8['profesja'] == 6){
      $pos9 = 1;
      $prof9 = 'm';
      }
      }
      if(!empty($mob9)){
      if($mob9['profesja'] == 1){
      $pos10 = 0;
      $prof10 = 'w';
      }
      if($mob9['profesja'] == 2){
      $pos10 = 0;
      $prof10 = 'p';
      }
      if($mob9['profesja'] == 3){
      $pos10 = 0;
      $prof10 = 'b';
      }
      if($mob9['profesja'] == 4){
      $pos10 = 2;
      $prof10 = 'h';
      }
      if($mob9['profesja'] == 5){
      $pos10 = 2;
      $prof10 = 't';
      }
      if($mob9['profesja'] == 6){
      $pos10 = 1;
      $prof10 = 'm';
      }
      }
      if(!empty($mob10)){
      if($mob10['profesja'] == 1){
      $pos11 = 0;
      $prof11 = 'w';
      }
      if($mob10['profesja'] == 2){
      $pos11 = 0;
      $prof11 = 'p';
      }
      if($mob10['profesja'] == 3){
      $pos11 = 0;
      $prof11 = 'b';
      }
      if($mob10['profesja'] == 4){
      $pos11 = 2;
      $prof11 = 'h';
      }
      if($mob10['profesja'] == 5){
      $pos11 = 2;
      $prof11 = 't';
      }
      if($mob10['profesja'] == 6){
      $pos11 = 1;
      $prof11 = 'm';
      }
      }
      if(!empty($mob2)) $txt = ", ".$mob2['nazwa']."(".$mob2['poziom']."".$prof3.")";
      if(!empty($mob3)) $txt2 = ", ".$mob3['nazwa']."(".$mob3['poziom']."".$prof4.")";
      if(!empty($mob4)) $txt3 = ", ".$mob4['nazwa']."(".$mob4['poziom']."".$prof5.")";
      if(!empty($mob5)) $txt4 = ", ".$mob5['nazwa']."(".$mob5['poziom']."".$prof6.")";
      if(!empty($mob10)) $txt9 = ", ".$mob10['nazwa']."(".$mob10['poziom']."".$prof11.")";
      if(!empty($mob6)) $txt5 = ", ".$mob6['nazwa']."(".$mob6['poziom']."".$prof7.")";
      if(!empty($mob7)) $txt6 = ", ".$mob7['nazwa']."(".$mob7['poziom']."".$prof8.")";
      if(!empty($mob8)) $txt7 = ", ".$mob8['nazwa']."(".$mob8['poziom']."".$prof9.")";
      if(!empty($mob9)) $txt8 = ", ".$mob9['nazwa']."(".$mob9['poziom']."".$prof10.")";
      
      $_SESSION['active_hit'] == $mob['id'];
      if(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5) && !empty($mob6) && !empty($mob7) && !empty($mob8) && !empty($mob9) && !empty($mob10)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, mob6_id, mob6_pos, mob6_sa, mob7_id, mob7_pos, mob7_sa, mob8_id, mob8_pos, mob8_sa, mob9_id, mob9_pos, mob9_sa, mob10_id, mob10_pos, mob10_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."', '".$mob6['id']."', '".$pos7."', '".(($mob6['sa'] + $mob6['zrecznosc']) / 100)."', '".$mob7['id']."', '".$pos8."', '".(($mob7['sa'] + $mob7['zrecznosc']) / 100)."', '".$mob8['id']."', '".$pos9."', '".(($mob8['sa'] + $mob8['zrecznosc']) / 100)."', '".$mob9['id']."', '".$pos10."', '".(($mob9['sa'] + $mob9['zrecznosc']) / 100)."', '".$mob10['id']."', '".$pos11."', '".(($mob10['sa'] + $mob10['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."".$txt5."".$txt6."".$txt7."".$txt8."".$txt9."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5) && !empty($mob6) && !empty($mob7) && !empty($mob8) && !empty($mob9)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, mob6_id, mob6_pos, mob6_sa, mob7_id, mob7_pos, mob7_sa, mob8_id, mob8_pos, mob8_sa, mob9_id, mob9_pos, mob9_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."', '".$mob6['id']."', '".$pos7."', '".(($mob6['sa'] + $mob6['zrecznosc']) / 100)."', '".$mob7['id']."', '".$pos8."', '".(($mob7['sa'] + $mob7['zrecznosc']) / 100)."', '".$mob8['id']."', '".$pos9."', '".(($mob8['sa'] + $mob8['zrecznosc']) / 100)."', '".$mob9['id']."', '".$pos10."', '".(($mob9['sa'] + $mob9['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."".$txt5."".$txt6."".$txt7."".$txt8."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5) && !empty($mob6) && !empty($mob7) && !empty($mob8)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, mob6_id, mob6_pos, mob6_sa, mob7_id, mob7_pos, mob7_sa, mob8_id, mob8_pos, mob8_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."',, '".$mob6['id']."', '".$pos7."', '".(($mob6['sa'] + $mob6['zrecznosc']) / 100)."', '".$mob7['id']."', '".$pos8."', '".(($mob7['sa'] + $mob7['zrecznosc']) / 100)."', '".$mob8['id']."', '".$pos9."', '".(($mob8['sa'] + $mob8['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."".$txt5."".$txt6."".$txt7."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5) && !empty($mob6) && !empty($mob7)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, mob6_id, mob6_pos, mob6_sa, mob7_id, mob7_pos, mob7_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."', '".$mob6['id']."', '".$pos7."', '".(($mob6['sa'] + $mob6['zrecznosc']) / 100)."', '".$mob7['id']."', '".$pos8."', '".(($mob7['sa'] + $mob7['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."".$txt5."".$txt6."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5) && !empty($mob6)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, mob6_id, mob6_pos, mob6_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."', '".$mob6['id']."', '".$pos7."', '".(($mob6['sa'] + $mob6['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."".$txt5."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4) && !empty($mob5)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, mob5_id, mob5_pos, mob5_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".$mob5['id']."', '".$pos6."', '".(($mob5['sa'] + $mob5['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."".$txt4."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3) && !empty($mob4)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, mob4_id, mob4_pos, mob4_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".$mob4['id']."', '".$pos5."', '".(($mob4['sa'] + $mob4['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."".$txt3."</b></p>')");
      elseif(!empty($mob2) && !empty($mob3)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, mob3_id, mob3_pos, mob3_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".$mob3['id']."', '".$pos4."', '".(($mob3['sa'] + $mob3['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."".$txt2."</b></p>')");
      elseif(!empty($mob2)) mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, mob2_id, mob2_pos, mob2_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".$mob2['id']."', '".$pos3."', '".(($mob2['sa'] + $mob2['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")".$txt."</b></p>')");
      else mysql_query("insert into walkaturowa (player1_id, player1_pos, player1_sa, mob1_id, mob1_pos, mob1_sa, endturn, log) VALUES ('".$postac['id']."', '".$pos."', '".$herosa."', '".$mob['id']."', '".$pos2."', '".(($mob['sa'] + $mob['zrecznosc']) / 100)."', '".(time() + 20)."', '<p class=battr100>Rozpoczela sie walka pomiedzy <b>".$postac['nazwa']."(".$postac['poziom']."".$prof.")</b>, a <b>".$mob['nazwa']."(".$mob['poziom']."".$prof2.")</b></p>')");
      mysql_query("update postac set zajety_walka = 1 where id = ".$postac['id']." limit 1");
      mysql_query("update mob set zajety_walka = 1 where id = ".$mob['id']." limit 1");
      if(!empty($mob2)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob2['id']." limit 1");
      if(!empty($mob3)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob3['id']." limit 1");
      if(!empty($mob4)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob4['id']." limit 1");
      if(!empty($mob5)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob5['id']." limit 1");
      if(!empty($mob6)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob6['id']." limit 1");
      if(!empty($mob7)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob7['id']." limit 1");
      if(!empty($mob8)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob8['id']." limit 1");
      if(!empty($mob9)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob9['id']." limit 1");
      if(!empty($mob10)) mysql_query("update mob set zajety_walka = 1 where id = ".$mob10['id']." limit 1");
      if(!empty($mob)) echo true;
      }
      exit;
?>