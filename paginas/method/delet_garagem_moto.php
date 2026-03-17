<?php

include('../../config/conexao.php');
if(isset($_GET['vaga'])){

    $vaga = $_GET['vaga'];
    
    $novaVaga = "INSERT INTO `garagem_moto` (`id_garagem_moto`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES ('','MOTO',:vaga,'','','','0','VAZIA','Nao')"; 
    try{

        $result = $conect->prepare($novaVaga);
        $result->bindValue(':vaga', $vaga, PDO::PARAM_STR);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            header("Location: ../home.php?acao=relatorio_garagem_motos");
        }else{
            header("Location: ../home.php?acao=relatorio_garagem_motos");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
    

}


if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem_moto` SET `arquivo`='Sim' WHERE `id_garagem_moto` =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Location: ../home.php?acao=relatorio_garagem_motos");
    }else{
        header("Location: ../home.php?acao=relatorio_garagem_motos");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}


header( "refresh:1;url=relatorio_garagem.php" );
