<?php
if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `material_carga` SET arquivo = 'Sim' WHERE id_matcarga = :id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Refresh: 0, home.php?acao=material_carga");
    }else{
        header("Refresh: 0, home.php?acao=material_carga");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

// quando vem do relatorio volta pro relatorio
if(isset($_GET['relatorio'])){

    $id = $_GET['relatorio'];
    $delete = "UPDATE `material_carga` SET arquivo = 'Sim' WHERE id_matcarga = :id"; 
    
    
    try{
    
        $result = $conect->prepare($delete);
        $result->bindValue(':id', $id, PDO::PARAM_INT);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            header("Refresh: 0, home.php?acao=relatorio_material_carga");
        }else{
            header("Refresh: 0, home.php?acao=relatorio_material_carga");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
    
    }