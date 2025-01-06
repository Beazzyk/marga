<title>Margatron</title>
<?php
      require_once('config.class.php');
      require_once('login.class.php');
      session_start();
      $po = new baza;
      $po->polaczenie('localhost', 'root', '', 'margatron', 'utf-8');
      if(empty($_SESSION['logged'])) require_once('nolog.php');
      else require_once('logged.php');
?>