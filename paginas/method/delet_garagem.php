<?php

include('../../config/conexao.php');
if(isset($_GET['vaga'])){

    $vaga = $_GET['vaga'];
    
    $novaVaga = "INSERT INTO `garagem` (`id_garagem`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES ('','CARRO',:vaga,'','','','0','VAZIA','Nao')"; 
    try{

        $result = $conect->prepare($novaVaga);
        $result->bindValue(':vaga', $vaga, PDO::PARAM_STR);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            echo "<script>window.location = '../home.php?acao=relatorio_garagem'</script>";
            //header("Location: ../home.php?acao=relatorio_garagem");
        }else{
            echo "<script>window.location = '../home.php?acao=relatorio_garagem'</script>";
            header("Location: ../home.php?acao=relatorio_garagem");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
    

}


if(isset($_GET['idDel'])){

$id = $_GET['idDel'];
$delete = "UPDATE `garagem` SET `arquivo`='Sim' WHERE `id_garagem` =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        header("Location: ../home.php?acao=relatorio_garagem");
    }else{
        header("Location: ../home.php?acao=relatorio_garagem");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}


//recria a vaga vazia recriando ao campo 
//$sql = "INSERT INTO `garagem`(`id_garagem`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES ('','CARRO','01-SUBSOLO','','','','0','VAZIA','Nao')";
//$busca = mysqli_query($conn,$sql);

//atualiza as posiçoes da fila 
//$sql = "UPDATE garagem_espera SET `posicao_fila` = `posicao_fila` - 1 WHERE id_garagem_espera > $id";
//$busca = mysqli_query($conn,$sql);


echo "<script>window.location = 'refresh:1;url=relatorio_garagem.php'</script>";
