<?php
  ob_start();
  session_start();
  if(!isset($_SESSION['loginUser'])&&(!isset($_SESSION['senhaUser']))){
    header("Location: ../index.php?acao=negado");
    exit;
  }else{
   // $adm  = $_SESSION["adm"];
}
  include_once('sair.php');
?>