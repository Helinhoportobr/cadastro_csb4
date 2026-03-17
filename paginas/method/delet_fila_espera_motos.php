<?php

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem_espera_motos` SET `arquivo`='Sim', `data_arquivo_fila`= CURRENT_DATE() WHERE `id_garagem_espera_moto` =:id"; 


try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Refresh: 1, ?acao=cadastro_garagem_moto");
    }else{
        header("Refresh: 1, ?acao=cadastro_garagem_moto");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

//atualiza as posiçoes da fila 
$sql = "UPDATE garagem_espera_motos SET `posicao_fila` = `posicao_fila` - 1 WHERE id_garagem_espera_moto > $id";
$busca = mysqli_query($conn,$sql);

header( "?acao=cadastro_garagem_moto" );
