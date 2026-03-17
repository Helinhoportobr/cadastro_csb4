<?php

include('../../config/conexao.php');

if(isset($_GET['idDel'])){

$id_permiss = $_GET['idDel'];

$id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);

//selecionar o paramentro no banco do arquivo a ser deletado

       
$id = filter_input(INPUT_GET,'idDel',FILTER_DEFAULT);

$select = "SELECT * FROM permissionarios WHERE id_permissionarios = :id";
  
try{

  $resultado = $conect->prepare($select);
  $resultado->bindValue(':id',$id, PDO::PARAM_INT);
  $resultado->execute();

  $contar = $resultado->rowCount();
  if($contar>0){

    while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
        
        
        $apt_up = $show->apt;
        $dataentr = $show->dataentr;
        $postoesp = $show->postoesp;
        $nome = $show->nome;
        $cpf = $show->cpf;
        $datanasc = $show->datanasc;
        $sexo = $show->sexo;
        $telcel = $show->telcel;
        $secaotrab = $show->secaotrab;
        $saram = $show->saram;
        $email = $show->email;
        $estadocv = $show->estadocv;
        $filhos_qtd = $show->filhos_qtd;
        $numero_documento = $show->carta_apresent;
        

    }

echo $numero_documento;

  }else{
    echo '<div class="alert alert-danger">Não há dados informados!</div>';
  }

}catch(PDOException $e){
  echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
}


$arquivo = "C:/xampp/htdocs/admin/dist/img/carta_apresent/$numero_documento";


    
if (!unlink($arquivo))
{
  echo ("Erro ao deletar $arquivo");
}
else
{
    header("Location: ../home.php?acao=relatorio_geral_permissionario&id= $id");
}

//////////////////////////////////////////////////////////////////////////////////// delete do banco o registro do arquivo ///////////////////////////

$carta = ' ';


$delete = "UPDATE permissionarios SET carta_apresent=:carta WHERE id_permissionarios = $id_permiss"; 


try{

    $result = $conect->prepare($delete);
    $result->bindParam(':carta', $carta,PDO::PARAM_STR);
    $result->execute();

    $contar = $result->rowCount();
    if($contar > 0){
       //header("Location: ../home.php?acao=relatorio_geral_permissionario&id= $id");
    }else{
        //header("Location: ../home.php?acao=relatorio_geral_permissionario&id= $id");
    }

}catch(PDOException $e){
      echo "<strong>ERRO DE DELETE = </strong>".$e->getMessage(); 
  }




}


   