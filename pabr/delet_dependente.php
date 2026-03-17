<?php
 session_start();
 $login = $_POST['email'];
 $senha = $_POST['senha'];
 
?>

<?php

include('conexao.php');

$id = $_GET['idPermiss'];
//echo $id;

if(isset($_GET['idDel'])){

$id_dependentes = $_GET['idDel'];
$delete = "DELETE FROM depententes WHERE id_dependentes =:id_dependentes"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id_dependentes', $id_dependentes, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
                
        header("location: recadastramento.php?idpermiss=$id");

    }else{
        header("location: recadastramento.php?idpermiss=$id");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}