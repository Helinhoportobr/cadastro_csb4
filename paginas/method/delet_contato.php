<?php

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "DELETE FROM contato WHERE id =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Refresh: 1, ?acao=cadastro_contato");
        die();
    }else{
        header("Refresh: 1, ?acao=cadastro_contato");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}