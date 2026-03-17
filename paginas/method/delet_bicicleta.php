<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `bicicletario` SET `arquivo`='Sim' WHERE `id_bike` =:id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        echo "<script>window.location = '../home.php?acao=cadastro_bicicleta'</script>";
        //header("Location: ../home.php?acao=cadastro_bicicleta");
    }else{
        echo "<script>window.location = 'index.php'</script>";
        //header("Location: ../home.php?index.php");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}