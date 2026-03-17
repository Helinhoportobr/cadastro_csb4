<?php
if(isset($_GET['idDel'])){

    $id = $_GET['idDel'];
    $delete = "DELETE FROM `documentos_cautela` WHERE `id_documentos` = :id"; 
    
    try{
    
        $result = $conect->prepare($delete);
        $result->bindValue(':id', $id, PDO::PARAM_INT);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            header("Refresh: 1, home.php?acao=relatorio_cautela_material");
        }else{
            header("Refresh: 1, home.php?acao=relatorio_cautela_material");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
      header("Refresh: 1, home.php?acao=relatorio_cautela_material");
    }



if (isset($_GET['idDel']) && isset($_GET['tipo']) ){
    
    $id = $_GET['idDel'];
    $idPermss = $_GET['tipo'];
    $delete = "DELETE FROM `documentos_cautela` WHERE `id_documentos` = :id"; 
    
    try{
    
        $result = $conect->prepare($delete);
        $result->bindValue(':id', $id, PDO::PARAM_INT);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            header("Refresh: 1, home.php?acao=relatorio_cautela_material");
        }else{
            header("Refresh: 1, home.php?acao=relatorio_cautela_material");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
      header("Refresh: 1, home.php?acao=relatorio_cautela_material");
    
    } ;
