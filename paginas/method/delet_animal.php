<?php

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `animais` SET `arquivo`='Sim' WHERE `id_animais` = :id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Refresh: 1, ?acao=cadastro_animais");
    }else{
        header("Refresh: 1, ?acao=cadastro_animais");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

// se vier dado relatorio 

if(isset($_GET['idRel'])){

    $id = $_GET['idRel'];
    $delete = "UPDATE `animais` SET `arquivo`='Sim' WHERE `id_animais` = :id"; 
    
    try{
    
        $result = $conect->prepare($delete);
        $result->bindValue(':id', $id, PDO::PARAM_INT);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            header("Refresh: 1, ?acao=relatorio_animais");
        }else{
            header("Refresh: 1, ?acao=relatorio_animais");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
    
    }