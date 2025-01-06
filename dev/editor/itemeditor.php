<?php
     require_once('polacz.php');
     session_start;   
     if($_GET['item'] == 'add' && $_GET['typ'] == 'drop'){
     mysql_query("INSERT INTO `przedmiot_loot` (`nazwa`, `klasa`, `typ`, `obrazek`, `wym_poziom`,
      `prof1`, `prof2`, `prof3`, `prof4`, `prof5`, `prof6`, `zycie`, `sa`, `ac`, `acm`, `obr_min`, `obr_max`, `mnoznik`, 
     `mnoznik_typ`, `sila`, `zrecznosc`, `intelekt`, `wszystkie_cechy`, `ck`, `ckf`, 
     `ckm`, `acp`, `absorbcja`, `mabsorbcja`, `leczenie`, `unik`, `blok`, `obr_mag`, `przebicie`, 
     `obr_poi`, `glebokarana`, `atak_gr`, `ilosc`, `mikstura_leczenie`, `kontra`, `wartosc_kupna`, 
     `obnizac`, `obnizacm`, `obnizsa`, `zycie_za_sile`, `pelne_leczenie`, `opis`, `mana`, `energia`)
     VALUES ('".$_POST['nazwa']."', '".$_POST['ranga']."', '".$_POST['typ']."', '".$_POST['obrazek']."', '".$_POST['wympoz']."', '".$_POST['p1']."', '".$_POST['p2']."', '".$_POST['p3']."', '".$_POST['p4']."', '".$_POST['p5']."', '".$_POST['p6']."', '".$_POST['life']."', '".$_POST['sa']."', '".$_POST['ac']."', '".$_POST['acm']."', '".$_POST['obr_min']."', '".$_POST['obr_max']."', '".$_POST['mnoznik']."', '".$_POST['tmnoznik']."', '".$_POST['sil']."', '".$_POST['zre']."', '".$_POST['ikt']."', '".$_POST['wce']."', '".$_POST['ck']."', '".$_POST['ckf']."', '".$_POST['ckm']."', '".$_POST['acp']."', '".$_POST['absorb']."', '".$_POST['mabsorb']."', '".$_POST['leczenie']."', '".$_POST['unik']."', '".$_POST['blok']."', '".$_POST['obr_mag']."', '".$_POST['przebicie']."', '".$_POST['obr_poi']."', '".$_POST['glrana']."', '".$_POST['att_gl']."', '".$_POST['ilosc']."', '".$_POST['mheal']."', '".$_POST['kontra']."', '".$_POST['wartosc']."', '".$_POST['decrac']."', '".$_POST['decracm']."', '".$_POST['decrsa']."', '".$_POST['zzm']."', '".$_POST['fullheal']."', '".$_POST['opis']."', '".$_POST['mana']."', '".$_POST['energy']."')");
     if(mysql_affected_rows() != 0) echo "Dodano Przedmiot<hr>";
     }
     
     if($_POST['typ'] == 'drop' || $_GET['typ'] == 'drop'){
            echo "
                  <form action='itemeditor.php?typ=drop&item=add' method='post'>
                  <table style='width: 150%;'>
                  <tr><td>Nazwa Przedmiotu</td><td><input name='nazwa'></td></tr>
                  <tr><td>Ranga</td><td><select name='ranga'>
                  <option value='normal'>Zwykly</option>
                  <option value='upgraded'>Ulepszony</option>
                  <option value='unique'>Unikat</option>
                  <option value='heroic'>Heroiczny</option>
                  <option value='legendary'>Legendarny</option>
                  <option value='artefact'>Artefakt</option>
                  </select></td></tr>
                  <tr><td>Typ</td><td><select name='typ'>
                  <option value='BronJednoreczna'>Broñ Jednorêczna</option>
                  <option value='BronDwureczna'>Broñ Dwurêczna</option>
                  <option value='BronPoltorareczna'>Broñ Póltorarêczna</option>
                  <option value='BronPomocnicza'>Broñ Pomocnicza</option>
                  <option value='BronDystansowa'>Broñ Dystansowa</option>
                  <option value='Rozdzka'>Ró¿d¿ka</option>
                  <option value='Laska'>Laska</option>
                  <option value='Zbroja'>Zbroja</option>
                  <option value='Buty'>Buty</option>
                  <option value='Talizman'>Talizman</option>
                  <option value='Tarcza'>Tarcza</option>
                  <option value='Strzaly'>Strzaly</option>
                  <option value='Helm'>Helm</option>
                  <option value='Pierscien'>Pierscieñ</option>
                  <option value='Naszyjnik'>Naszyjnik</option>
                  <option value='Rekawice'>Rêkawice</option>
                  <option value='Konsupcyjne'>Konsupcyjne</option>
                  <option value='Neutralne'>Neutralne</option>
                  </select></td></tr>
                  <tr><td>Obrazek</td><td><input name='obrazek' value='przedmiot/'></td></tr>
                  <tr><td>Wymagaj¹cy Poziom</td><td><input name='wympoz'></td></tr>
                  <tr><td>Profesje</td><td><input name='p1'><input name='p2'><input name='p3'><input name='p4'><input name='p5'><input name='p6'></td></tr> 
                  <tr><td>¯ycie</td><td><input name='life'></td></tr>
                  <tr><td>SA</td><td><input name='sa'></td></tr>
                  <tr><td>Obrona</td><td><input name='ac'></td></tr>
                  <tr><td>Obrona Magiczna</td><td><input name='acm'></td></tr>
                  <tr><td>Obra¿enia Fizyczne</td><td><input name='obr_min'> - <input name='obr_max'></td></tr>
                  <tr><td>Mno¿nik/Typ</td><td><input name='mnoznik'> / <input name='tmnoznik'></td></tr>
                  <tr><td>Sila</td><td><input name='sil'></td></tr>
                  <tr><td>Zrêcznosæ</td><td><input name='zre'></td></tr>
                  <tr><td>Intelekt</td><td><input name='ikt'></td></tr>
                  <tr><td>Wszystkie Cechy</td><td><input name='wce'></td></tr>
                  <tr><td>Cios Krytyczny</td><td><input name='ck'></td></tr>
                  <tr><td>Sila Krytyka Fizycznego</td><td><input name='ckf'></td></tr>
                  <tr><td>Sila Krytyka Magicznego</td><td><input name='ckm'></td></tr>
                  <tr><td>Obrona od Trucizny</td><td><input name='acp'></td></tr>
                  <tr><td>Absorbcja</td><td><input name='absorb'></td></tr>
                  <tr><td>Magiczna Absorbcja</td><td><input name='mabsorb'></td></tr>
                  <tr><td>Leczy podczas Walki</td><td><input name='leczenie'></td></tr>
                  <tr><td>Unik</td><td><input name='unik'></td></tr>
                  <tr><td>Blok</td><td><input name='blok'></td></tr>
                  <tr><td>Obra¿enia Magiczne</td><td><input name='obr_mag'></td></tr>
                  <tr><td>Przebicie Pancerza</td><td><input name='przebicie'></td></tr>
                  <tr><td>Obra¿enia od Trucizny</td><td><input name='obr_poi'></td></tr>
                  <tr><td>Gleboka Rana</td><td><input name='glrana'></td></tr>
                  <tr><td>Atak od Glêbokiej Rany</td><td><input name='att_gl'></td></tr>
                  <tr><td>Ilosæ Przedmiotów</td><td><input name='ilosc'></td></tr>
                  <tr><td>Mikstura Leczy</td><td><input name='mheal'></td></tr>
                  <tr><td>Kontra</td><td><input name='kontra'></td></tr>
                  <tr><td>Wartosc</td><td><input name='wartosc'></td></tr>
                  <tr><td>Obnizanie AC/ACM/SA</td><td><input name='decrac'> / <input name='decracm'> / <input name='decrsa'></td></tr>
                  <tr><td>¯ycie za Sile</td><td><input name='zzs'></td></tr>
                  <tr><td>Pelne Leczenie</td><td><input name='fullheal'></td></tr>
                  <tr><td>Opis</td><td><textarea style='height: 50px;' name='opis'></textarea></td></tr>
                  <tr><td>Mana</td><td><input name='mana'></td></tr>
                  <tr><td>Energia</td><td><input name='energy'></td></tr>
                  <tr><td colspan=2><input type='submit' value='Dodaj'></td></tr>
                  </table>
                  </form>
                  <hr>
            ";
     }
     echo "
          Gdzie chcesz dodaæ Przedmiot?<hr>
         <form action='itemeditor.php' method='post'>
                <select name='typ'>
                         <option value='drop'>Drop</option>
                         <option value='shop'>Sklep</option>
                </select>
                <input type='submit' value='Stwórz'>
         </form>
     ";
?>