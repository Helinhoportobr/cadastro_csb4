<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `depententes` SET `arquivo`='Sim' WHERE id_dependentes =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Location: ../home.php?acao=relatorio_dependente");
    }else{
        header("Location: ../home.php?acao=relatorio_dependente");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}