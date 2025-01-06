<link rel="stylesheet" type="text/css" href="page.css">
<?php
if(empty($_GET['do'])){
    echo "<a href='index.php?do=login'>Zaloguj</a>
    <a href='index.php?do=register'>Zarejestruj</a>";
} elseif($_GET['do'] == 'login'){
    if(!empty($_POST['l']) && !empty($_POST['p'])){
            $l = new login;
            $r = $l->istniejelogin(po5($_POST['l']));
            if($r == true){
                  $r = $l->istniejehaslo(po5($_POST['l']), po5($_POST['p']));
                  if($r >= 0){
                            $_SESSION['logged'] = $r;
                            header("Location: index.php");
                  } else echo "Bledne Haslo.";
            } else echo "Bledny Login.";
    }
    echo "
           <table border=0 style='text-align: center;'>
           <form action='index.php?do=login' method='post'>
                   <tr><td>Nazwa Uzytkownika</td><td><input name='l'></td></tr>
                   <tr><td>Haslo</td><td><input type='password' name='p'></td></tr>
                   <tr><td colspan=2><input type='submit' value='' id='login'></td></tr>
           </form>
           </table>
           <a href='index.php'>Powrot</a>
    ";
} elseif($_GET['do'] == 'register'){
    if(!empty($_POST['l']) && !empty($_POST['p']) && !empty($_POST['p2']) && !empty($_POST['e'])){
            $reg = new rejestracja;
            $r = $reg->ilogin($_POST['l']);
            if($r == true){
                    $r = $reg->phasel(po5($_POST['p']), po5($_POST['p2']));
                    if($r == true){
                    $r = $reg->imail($_POST['e']);
                          if($r == true){
                                echo "Gratulacje, Zarejestrowales sie.<br />Zaloguj sie teraz przez strone Glowna.";
                                $l = po5($_POST['l']);
                                $p = po5($_POST['p']);
                                $e = $_POST['e'];
                                $reg->utworz_konto($l,$p,$e);
                          } else echo "Podany Adres E-Mail jest juz uzywany.";
                    } else echo "Podane Hasla nie sa identyczne.";
            } else echo "Istnieje juz konto o takiej Nazwie Uzytkownika.";
    }
    echo "
           <table border=0 style='text-align: center;'>
           <form action='index.php?do=register' method='post'>
                   <tr><td>Nazwa Uzytkownika</td><td><input name='l'></td></tr>
                   <tr><td>Haslo</td><td><input type='password' name='p'></td></tr>
                   <tr><td>Powtorz Haslo</td><td><input type='password' name='p2'></td></tr>
                   <tr><td>E-Mail</td><td><input name='e'></td></tr>
                   <tr><td colspan=2><input type='submit' value='' id='register'></td></tr>
           </form>
           </table>
           <a href='index.php'>Powrot</a>
    ";
}
?>