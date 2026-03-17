<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id = $_GET['idDel'];    

//seleciona os dados do permissionario que esta sendo deletado

$result_permissioanario = "SELECT `apt` FROM `permissionarios` WHERE `arquivo` = 'Nao' and `id_permissionarios` ='$id'";
$resultado_permissionario = mysqli_query($conn, $result_permissioanario);
while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
						    	    $apt = $row_perm['apt'];
                                    
}

//cria um novo apartamento vazio para o proximo permissionario
$atualiza_arquivo = "INSERT INTO `permissionarios`(`id_permissionarios`, `apt`, `dataentr`, `postoesp`, `nome`, `cpf`, `datanasc`, `sexo`, `telcel`, `secaotrab`, `saram`, `email`, `estadocv`, `filhos`, `datasaida`, `carta_apresent`, `nada_consta`, `atualizado`, `arquivo`) VALUES (Null,'$apt',' ',' ','PREFEITURA AERONAUTICA DE BRASILIA ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','Nao')";
$insert_permiss = mysqli_query($conn, $atualiza_arquivo);
};

if(isset($_GET['idDel'])){

//atualiza formato da data atual para pt-br    
$datasaida = date("Y-m-d H:i:s");

$id = $_GET['idDel'];

//Insere na coluna arquivo sim para tabela permissionarios
$delete = "UPDATE `permissionarios` SET `arquivo`='Sim',`datasaida`=:datasaida WHERE `id_permissionarios` =:id"; 

try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id', $id, PDO::PARAM_INT);
    $result->bindValue(':datasaida', $datasaida, PDO::PARAM_STR);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
        //header("Location: ../home.php?acao=editar_permissionario_header");
    }else{
        //header("Location: ../home.php?acao=editar_permissionario_header");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }

}

//atualiza para vazio o campo situacao na tabela apartamento
$atualiza_antigo = "UPDATE apartamentos JOIN permissionarios ON apartamentos.unidade = permissionarios.apt SET apartamentos.situacao = 'vazio'; ";
$resultados_apt_antigo = mysqli_query($conn, $atualiza_antigo);



//atualiza para arquivado sim o campo arquivo na tabela dependentes
$atualiza_arquivo = "UPDATE depententes JOIN permissionarios ON depententes.id_permiss = $id SET depententes.arquivo = 'sim'";
$delet_depend = mysqli_query($conn, $atualiza_arquivo);


//atualiza para arquivado sim o campo arquivo na tabela animais
$atualiza_arquivo = "UPDATE `animais` SET `arquivo`='Sim' WHERE `id_permiss` = '$id'";
$delet_depend = mysqli_query($conn, $atualiza_arquivo);

//atualiza para arquivado sim o campo arquivo na tabela biciletas
$atualiza_arquivo = "UPDATE `bicicletario` SET `arquivo`='Sim' WHERE `id_permiss` = '$id'";
$delet_depend = mysqli_query($conn, $atualiza_arquivo);

//atualiza para arquivado sim o campo arquivo na tabela documentos cautelas
$atualiza_arquivo = "UPDATE `documentos_cautela` SET `arquivo_doc`='Sim' WHERE `id_permiss` = '$id'";
$delet_cautela = mysqli_query($conn, $atualiza_arquivo);

//atualiza para arquivado sim o campo arquivo na tabela documentos notificacao
$atualiza_arquivo = "UPDATE `documentos_notificacao` SET `arquivo`='Sim' WHERE `id_permiss` = '$id'";
$delet_notificacao = mysqli_query($conn, $atualiza_arquivo);

//atualiza para arquivado sim o campo arquivo na tabela documentos termo de responsabilidade
$atualiza_arquivo = "UPDATE `documentos_termo_resp` SET `arquivo`='Sim' WHERE `id_permiss` = '$id'";
$delet_termo_resp = mysqli_query($conn, $atualiza_arquivo);

//atualiza para arquivado sim o campo arquivo na tabela garagem e cria nova vaga pro proximo permissionario
if(isset($_GET['idDel'])){
 $id = $_GET['idDel']; 
 
 //consulta a vaga carro do permissionario    
 $result_permissioanario = "SELECT  `vaga`, `id_garagem`  FROM `garagem` WHERE `id_permiss` ='$id'";
 $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
 while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
						    	    $vaga = $row_perm['vaga'];
                                    $id_garagem = $row_perm['id_garagem'];
                                    
 }
    $vaga;    
    $novaVaga = "INSERT INTO `garagem` (`id_garagem`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES ('','CARRO',:vaga,'','','','0','VAZIA','Nao')"; 
    try{

        $result = $conect->prepare($novaVaga);
        $result->bindValue(':vaga', $vaga, PDO::PARAM_STR);
        $result->execute();
    
        $contar = $result->rowCount();
        if($contar > 0){
            //header("Location: ../home.php?acao=relatorio_garagem");
        }else{
            //header("Location: ../home.php?acao=relatorio_garagem");
        }
    
    }catch(PDOException $e){
          echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
      }
    
 $id_garagem;
 $delete = "UPDATE `garagem` SET `arquivo`='Sim', `data_saida_carro`= CURRENT_DATE() WHERE `id_garagem` =:id_garagem"; 

 try{

    $result = $conect->prepare($delete);
    $result->bindValue(':id_garagem', $id_garagem, PDO::PARAM_INT);
    $result->execute();
      

  }catch(PDOException $e){
     
  }

 //verifica se o permissionario é diferente de 0 (variavel $id), ai faz um delete na fila de espera da garagem)
 if ($id != 0){
   
   //deleta da fila de espera carros 
   $sql = " UPDATE `garagem_espera` SET `arquivo`='Sim', `data_arquivo_fila`= CURRENT_DATE() WHERE id_permiss =$id";
   $busca = mysqli_query($conn,$sql);

   //atualiza as posiçoes da fila de carro
   //consulta a vaga carro do permissionario    
   $result_permissioanario = "SELECT  *  FROM `garagem_espera` WHERE `id_permiss` ='$id'";
    $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
    while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
                                       $id_garagem_espera  = $row_perm['id_garagem_espera'];
                                       $posicao_fila_carro  = $row_perm['posicao_fila'];

   $sql = "UPDATE garagem_espera SET `posicao_fila` = `posicao_fila` - 1 WHERE posicao_fila > $posicao_fila_carro";
   $busca = mysqli_query($conn,$sql);
   }



    //DELETAR DA FILA DE TROCA DE CARRO
    $sql = "UPDATE garagem_troca SET `data_arquivo`= CURRENT_DATE(), `arquivo`='Sim' WHERE cod_permiss = $id";
    $busca = mysqli_query($conn,$sql);    

    //atualiza as posiçoes da fila de troca carro
     //consulta a vaga carro do permissionario    
     $result_permissioanario = "SELECT * FROM `garagem_troca` WHERE `cod_permiss` ='$id'";
     $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
     while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
                                        $id_garagem_troca  = $row_perm['id_garagem_troca'];
                                        
    $sql = "UPDATE garagem_troca SET `posicao_fila` = posicao_fila - 1 WHERE posicao_fila > $id_garagem_troca";
    $busca = mysqli_query($conn,$sql);

  }
}
}

//atualiza para arquivado sim o campo arquivo na tabela garagem motos e cria nova vaga pro proximo permissionario
if(isset($_GET['idDel'])){
    $id = $_GET['idDel']; 
    //consulta a vaga carro do permissionario    
    $result_permissioanario = "SELECT  `vaga`, `id_garagem_moto`  FROM `garagem_moto` WHERE `id_permiss` ='$id'";
    $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
    while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
                                       $vaga_moto = $row_perm['vaga'];
                                       $id_garagem_moto = $row_perm['id_garagem_moto'];
                                                                              
    

    if ($vaga_moto != 0){

    
       $vaga_moto;    
       $novaVaga = "INSERT INTO `garagem_moto` (`id_garagem_moto`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES ('','MOTO',:vaga_moto,'','','','0','VAZIA','Nao')"; 
       try{
   
           $result = $conect->prepare($novaVaga);
           $result->bindValue(':vaga_moto', $vaga_moto, PDO::PARAM_STR);
           $result->execute();
       
           $contar = $result->rowCount();
           if($contar > 0){
               //header("Location: ../home.php?acao=relatorio_garagem_motos");
           }else{
               //header("Location: ../home.php?acao=relatorio_garagem_motos");
           }
       
       }catch(PDOException $e){
             echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
         }
       
         $id_garagem_moto;
         $sql = "UPDATE `garagem_moto` SET `arquivo`='Sim' WHERE `id_garagem_moto` = '$id_garagem_moto'";
         $busca = mysqli_query($conn,$sql);
   }
  }
}


if(isset($_GET['idDel'])){
    $id = $_GET['idDel']; 
    //echo $id;

    $result_permissioanario = "SELECT * FROM `garagem_troca_moto` WHERE `cod_permiss` ='$id'";
    $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
    while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
                                       $id_garagem_troca_moto = $row_perm['id_garagem_troca_moto'];
                                       $posicao_fila = $row_perm['posicao_fila'];
                                       //echo $id_garagem_troca_moto;
                                       //echo $posicao_fila;}

   //verifica se o permissionario é diferente de 0 (variavel $id), ai faz um delete na fila de espera da garagem)
   if ($id != 0){
    
    //deleta fila de troca motos
    $sql = "UPDATE garagem_troca_moto SET arquivo='Sim', data_arquivo= CURRENT_DATE() WHERE cod_permiss =$id";
    $busca = mysqli_query($conn,$sql);
    
    
    //atualiza as posiçoes da fila de troca moto
    $sql = "UPDATE garagem_troca_moto SET `posicao_fila` = posicao_fila - 1 WHERE posicao_fila > $id_garagem_troca_moto";
    $busca = mysqli_query($conn,$sql);

   //deleta fila  espera motos
   $result_permissioanario = "SELECT * FROM `garagem_espera_motos` WHERE `id_permiss` ='$id'";
   $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
   while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ 
                                       $id_garagem_moto_espera = $row_perm['id_garagem_espera_moto'];
                                       $posicao_fila_moto = $row_perm['posicao_fila'];
                                       //echo $id_garagem_troca_moto;
                                       //echo $posicao_fila;
                                    } 
   $sql = " UPDATE `garagem_espera_motos` SET `arquivo`='Sim', `data_arquivo_fila`= CURRENT_DATE() WHERE id_permiss =$id";
   $busca = mysqli_query($conn,$sql);

   //atualiza as posiçoes da fila 
   $sql = "UPDATE garagem_espera_motos SET `posicao_fila` = `posicao_fila` - 1 WHERE posicao_fila > $posicao_fila_moto";
   $busca = mysqli_query($conn,$sql);

  }

 }
}

echo "<script>window.location = '../home.php?acao=editar_permissionario_header'</script>";


