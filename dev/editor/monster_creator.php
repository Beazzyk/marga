<?php
     // LOAD DB CONNECT
     require_once('polacz.php');
     // CODE
     if($_GET['add'] == 'yes'){
             echo "Dodales Moba.<hr>";
             mysql_query("
             INSERT INTO mob (`id`, `obrazek`, `mapa`, `x`, `y`, `nazwa`, `poziom`, `typ`, `szerokosc`, `dlugosc`, `zycie`, `zycie_max`, `sa`, `ac`, `acm`, `acp`, `ck`, `ckf`, `ckm`, `przebicie`, `obr_min`, `obr_max`, `profesja`, `obr_mag`, `obr_poi`, `sila`, `zrecznosc`, `intelekt`, `absorbcja`, `mabsorbcja`, `unik`, `blok`, `exp`, `respawn_time`, `respawn`, `grupa`, `obnizac`, `obnizacm`, `obnizsa`, `paczka`, `paczka2`) 
             VALUES (NULL, '".$_POST['image']."', '".$_POST['map']."', '".$_POST['x']."', '".$_POST['y']."', '".$_POST['nazwa']."', '".$_POST['poziom']."', '".$_POST['typ']."', '".$_POST['width']."', '".$_POST['height']."', '".$_POST['life']."', '".$_POST['life']."', '".$_POST['sa']."', '".$_POST['ac']."', '".$_POST['acm']."', '".$_POST['acp']."', '".$_POST['ck']."', '".$_POST['skf']."', '".$_POST['skm']."', '".$_POST['noarmor']."', '".$_POST['damfmin']."', '".$_POST['damfmax']."', '".$_POST['klasa']."', '".$_POST['damm']."', '".$_POST['damp']."', '".$_POST['sil']."', '".$_POST['agi']."', '".$_POST['ikt']."', '".$_POST['absorb']."', '".$_POST['mabsorb']."', '".$_POST['evade']."', '".$_POST['block']."', '".$_POST['exp']."', '".$_POST['resptime']."', '0', '".$_POST['group']."', '".$_POST['decrac']."', '".$_POST['decracm']."', '".$_POST['decrsa']."', '".$_POST['pack1']."', '".$_POST['pack2']."')");
     }
     echo "
            <form action='monster_creator.php?add=yes' method='post'>
            <table border=0 style='width=100%;'>
            <tr><td>Obrazek</td><td><input name='image' value='mob/'></td></tr>
            <tr><td>Id Mapy</td><td><input name='map'></td></tr>
            <tr><td>X</td><td><input name='x'></td></tr>
            <tr><td>Y</td><td><input name='y'></td></tr>
            <tr><td>Nazwa</td><td><input name='nazwa'></td></tr>
            <tr><td>Poziom</td><td><input name='poziom'></td></tr>
            <tr><td>Typ</td><td><select name='typ'>
            <option value=0>Normalny</option>
            <option value=1>Elita</option>
            <option value=2>Elita II</option>
            <option value=3>Elita III</option>
            <option value=4>Heros</option>
            </select></td></tr>
            <tr><td>Szerokosc Obrazka</td><td><input name='width'></td></tr>
            <tr><td>Wysokosc Obrazka</td><td><input name='height'></td></tr>
            <tr><td>Zycie</td><td><input name='life'></td></tr>
            <tr><td>SA</td><td><input name='sa'></td></tr>
            <tr><td>Obrona</td><td><input name='ac'></td></tr>
            <tr><td>Obrona Magiczna</td><td><input name='acm'></td></tr>
            <tr><td>Obrona od Trucizny</td><td><input name='acp'></td></tr>
            <tr><td>Cios Krytyczny</td><td><input name='ck'></td></tr>
            <tr><td>Sila Krytyka Fizycznego</td><td><input name='skf' value='120'></td></tr>
            <tr><td>Sila Krytyka Magicznego</td><td><input name='skm' value='120'></td></tr>
            <tr><td>Przebicie Pancerza</td><td><input name='noarmor'></td></tr>
            <tr><td>Obrazenia Fizyczne</td><td><input name='damfmin'> - <input name='damfmax'></td></tr>
            <tr><td>Obrazenia Magiczne</td><td><input name='damm'></td></tr>
            <tr><td>Obrazenia od Trucizny</td><td><input name='damp'></td></tr>
            <tr><td>Profesja</td><td><select name='klasa'>
            <option value=1>Wojownik</option>
            <option value=2>Paladyn</option>
            <option value=3>Tancerz Ostrzy</option>
            <option value=4>Lowca</option>
            <option value=5>Tropiciel</option>
            <option value=6>Mag</option>
            </select></td></tr>
            <tr><td>Sila</td><td><input name='sil'></td></tr>
            <tr><td>Zrecznosc</td><td><input name='agi'></td></tr>
            <tr><td>Intelekt</td><td><input name='ikt'></td></tr>
            <tr><td>Absorbcja</td><td><input name='absorb'></td></tr>
            <tr><td>M. Absorbcja</td><td><input name='mabsorb'></td></tr>
            <tr><td>Unik</td><td><input name='evade'></td></tr>
            <tr><td>Blok</td><td><input name='block'></td></tr>
            <tr><td>Doswiadczenie</td><td><input name='exp'></td></tr>
            <tr><td>Czas Respawnu</td><td><input name='resptime'></td></tr>
            <tr><td>Id Grupy</td><td><input name='group'></td></tr>
            <tr><td>Obniza AC</td><td><input name='decrac'></td></tr>
            <tr><td>Obniza ACM</td><td><input name='decracm'></td></tr>
            <tr><td>Obniza SA</td><td><input name='decrsa'></td></tr>
            <tr><td>ID Paczki 1</td><td><input name='pack1'></td></tr>
            <tr><td>ID Paczki 2</td><td><input name='pack2'></td></tr>
            <tr><td colspan=2><input value='Dodaj' type='submit'></td></tr>
            </table>
            </form>
     ";
?>