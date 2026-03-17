<?php
 session_start();
 $login = $_POST['email'];
 $senha = $_POST['senha'];
 
?>
<?php

$idPermiss = $_GET['idPermiss'];

include('conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "DELETE FROM `animais` WHERE `id_animais` = :id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("location: recadastramento.php?idpermiss=$idPermiss");

    }else{
        header("location: recadastramento.php?idpermiss=$idPermiss");

    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}