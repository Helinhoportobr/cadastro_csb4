<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem_troca_moto` SET `arquivo`='Sim', `data_arquivo`= CURRENT_DATE() WHERE `id_garagem_troca_moto` =:id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Location: ../home.php?acao=cadastro_fila_troca_moto");
    }else{
        header("Location: ../home.php?acao=cadastro_fila_troca_moto");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

//atualiza as posiçoes da fila 
$sql = "UPDATE garagem_troca_moto SET `posicao_fila` = `posicao_fila` - 1 WHERE id_garagem_troca_moto > $id";
$busca = mysqli_query($conn,$sql);

//header( "refresh:1;url=cadastro_veiculo.php" );
