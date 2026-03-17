<?php
include('../../config/conexao.php');

$nome = $_POST['nome_contato'];
$telefone = $_POST['telefone_contato'];
$email = $_POST['email_contato'];
$categoria = $_POST['categoria_contato'];

$cadastro = "INSERT INTO contato (nome,telefone,email,categoria) VALUES (:nome,:telefone,:email,:categoria)";

try{
                        
    $result = $conect ->prepare($cadastro);
    $result->bindParam(':nome', $nome,PDO::PARAM_STR);
    $result->bindParam(':telefone', $telefone,PDO::PARAM_STR);
    $result->bindParam(':email', $email,PDO::PARAM_STR);
    $result->bindParam(':categoria', $categoria,PDO::PARAM_STR);
    $result->execute();
   
    }catch(PDOException $e){
      echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }

  header("Location: http://localhost/admin/paginas/home.php?acao=cadastro_contato");
  
?>
