<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem_troca` SET `arquivo`='Sim' WHERE `id_garagem_troca` =:id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Location: ../home.php?acao=cadastro_fila_troca");
    }else{
        header("Location: ../home.php?acao=cadastro_fila_troca");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

//atualiza o campo arquivo pra SIM 
$sql = "UPDATE `garagem_troca` SET `data_arquivo`= CURRENT_DATE(), `arquivo`='Sim' WHERE id_garagem_troca = $id";
$busca = mysqli_query($conn,$sql);

//atualiza as posiçoes da fila 
$sql = "UPDATE garagem_troca SET `posicao_fila` = `posicao_fila` - 1 WHERE id_garagem_troca > $id";
$busca = mysqli_query($conn,$sql);

//header( "refresh:1;url=cadastro_veiculo.php" );
