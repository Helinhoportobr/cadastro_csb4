<?php

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem_espera` SET `arquivo`='Sim' WHERE `id_garagem_espera` =:id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Refresh: 1, ?acao=cadastro_fila_espera");
    }else{
        header("Refresh: 1, ?acao=cadastro_fila_espera");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

//atualiza o campo arquivo pra SIM 
$sql = "UPDATE `garagem_espera` SET `data_arquivo_fila`= CURRENT_DATE(), `arquivo`='Sim' WHERE id_garagem_espera = $id";
$busca = mysqli_query($conn,$sql);

//atualiza as posiçoes da fila 
$sql = "UPDATE garagem_espera SET `posicao_fila` = `posicao_fila` - 1 WHERE id_garagem_espera > $id";
$busca = mysqli_query($conn,$sql);


header( "Refresh: 1, ?acao=cadastro_fila_espera" );


