<?php
require_once('../php/mysql-connect.php');
require_once('../php/load-data.php');
require_once('../php/skills-data.php');

$ajax_txt = "";

if($postac['um'] < $max_um){
   if($_POST['id'] == 1){
     if($u['u1'] < 20){
        if($poziom >= $skil[1][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u1 = u1 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 2){
     if($u['u2'] < 10){
        if($poziom >= $skil[2][poziom]){
           if($postac['profesja'] == $skil[2][prof1] || $postac['profesja'] == $skil[2][prof2]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u2 = u2 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 3){
     if($u['u3'] < 5){
        if($poziom >= $skil[3][poziom]){
           if($postac['profesja'] == $skil[3][prof1] || $postac['profesja'] == $skil[3][prof2]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u3 = u3 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 4){
     if($u['u4'] < 20){
          $ajax_txt .= "Nauczyles sie Umiejetnosci.";
          mysql_query("update umiejetnosci set u4 = u4 + 1 where postac_id = ".$postac['id']." limit 1");
          mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 5){
     if($u['u5'] < 10){
        if($poziom >= $skil[5][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u5 = u5 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   if($_POST['id'] == 6){
     if($u['u6'] < 20){
        if($poziom >= $skil[6][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u6 = u6 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
    if($_POST['id'] == 7){
     if($u['u7'] < 20){
          $ajax_txt .= "Nauczyles sie Umiejetnosci.";
          mysql_query("update umiejetnosci set u7 = u7 + 1 where postac_id = ".$postac['id']." limit 1");
          mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 8){
     if($u['u8'] < 8){
        if($poziom >= $skil[8][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u8 = u8 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 9){
     if($u['u9'] < 8){
        if($poziom >= $skil[9][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u9 = u9 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 10){
     if($u['u10'] < 5){
        if($poziom >= $skil[10][poziom]){
           if($postac['profesja'] == 'Wojownik'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u10 = u10 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 11){
     if($u['u11'] < 11){
        if($poziom >= $skil[11][poziom]){
           if($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tancerz Ostrzy'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u11 = u11 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 20){
     if($u['u20'] < 10){
        if($poziom >= $skil[20][poziom]){
           if($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tancerz Ostrzy'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u20 = u20 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 21){
     if($u['u21'] < 10){
        if($poziom >= $skil[21][poziom]){
           if($postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tropiciel' || $postac['profesja'] == 'Mag'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u21 = u21 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 22){
     if($u['u22'] < 5){
        if($poziom >= $skil[22][poziom]){
           if($postac['profesja'] == 'Tancerz Ostrzy'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u22 = u22 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 12){
     if($u['u12'] < 5){
        if($poziom >= $skil[12][poziom]){
           if($postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tropiciel'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u12 = u12 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 13){
     if($u['u13'] < 11){
        if($poziom >= $skil[13][poziom]){
           if($postac['profesja'] == 'Mag'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u13 = u13 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 14){
     if($u['u14'] < 3){
        if($poziom >= $skil[14][poziom]){
           if($postac['profesja'] == 'Mag' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tropiciel'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u14 = u14 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 15){
     if($u['u15'] < 20){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u15 = u15 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 16){
     if($u['u16'] < 20){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u16 = u16 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 17){
     if($u['u17'] < 5){
        if($poziom >= $skil[17][poziom]){
           if($postac['profesja'] == 'Mag'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u17 = u17 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 18){
     if($u['u18'] < 6){
        if($poziom >= $skil[18][poziom]){
           if($postac['profesja'] == 'Wojownik' || $postac['profesja'] == 'Paladyn' || $postac['profesja'] == 'Tancerz Ostrzy'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u18 = u18 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 19){
     if($u['u19'] < 7){
        if($poziom >= $skil[19][poziom]){
           if($postac['profesja'] == 'Mag'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u19 = u19 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 23){
     if($u['u23'] < 10){
        if($poziom >= $skil[23][poziom]){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u23 = u23 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 24){
     if($u['u24'] < 10){
        if($poziom >= $skil[24][poziom]){
           if($postac['profesja'] == 'Paladyn'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u24 = u24 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 25){
     if($u['u25'] < 5){
        if($poziom >= $skil[25][poziom]){
           if($postac['profesja'] == 'Wojownik'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u25 = u25 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 26){
     if($u['u26'] < 10){
        if($poziom >= $skil[26][poziom]){
           if($postac['profesja'] == 'Lowca' || $postac['profesja'] == 'Tropiciel'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u26 = u26 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 27){
     if($u['u27'] < 5){
        if($poziom >= $skil[27][poziom]){
           if($postac['profesja'] == 'Tancerz Ostrzy'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u27 = u27 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 28){
     if($u['u28'] < 10){
        if($poziom >= $skil[28][poziom]){
           if($postac['profesja'] == 'Tropiciel'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u28 = u28 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 29){
     if($u['u29'] < 10){
        if($poziom >= $skil[29][poziom]){
           if($postac['profesja'] == 'Paladyn'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u29 = u29 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
   
   if($_POST['id'] == 30){
     if($u['u30'] < 10){
        if($poziom >= $skil[30][poziom]){
           if($postac['profesja'] == 'Lowca'){
                $ajax_txt .= "Nauczyles sie Umiejetnosci.";
                mysql_query("update umiejetnosci set u30 = u30 + 1 where postac_id = ".$postac['id']." limit 1");
                mysql_query("update postac set um = um + 1 where id = ".$postac['id']." limit 1");
           } else $ajax_txt .= "Nie posiadasz odpowiedniej profesji";
        } else $ajax_txt .= "Nie posiadasz odpowiedniego poziomu";
     } else $ajax_txt .= "Nauczyles sie maksymalnego poziomu Umiejetnosci";
   }
} else $ajax_txt .= "Brakuje ci punkt�w Umiejetnosci.";

echo $ajax_txt;
exit;
?>                                                      