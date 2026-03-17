<?php

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];


$id = $_GET['idDel'];

$delete = "UPDATE `usuarios` SET `arquivo`='Sim', data_saida =NOW() WHERE id_user =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        echo "<script>window.location = '?acao=editar_usuarios'</script>";
    }else{
         echo "<script>window.location = '?acao=editar_usuarios'</script>";
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}