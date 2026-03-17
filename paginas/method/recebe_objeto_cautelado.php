<?php
if (isset($_GET['idDoc']) && isset($_GET['user'])){
    // your code.

    $idDoc = $_GET['idDoc'];
    $user = $_GET['user'];
    //$id = $_GET['tipo'];
    //echo $idDoc;
    //echo $user;

//recria a vaga vazia recriando ao campo 
$sql = "UPDATE `documentos_cautela` SET `data_entrega_doc`= NOW(),`recebido_por`='$user',`situacao_doc`='RECEBIDO',`arquivo_doc`='SIM' WHERE `id_documentos` = '$idDoc'";
$busca = mysqli_query($conn,$sql);

//atualiza as posiçoes da fila 
//$sql = "UPDATE `documentos_cautela` SET `data_entrega_doc`= NOW(),`recebido_por`='$user',`situacao_doc`='RECEBIDO',`arquivo_doc`='SIM' WHERE `id_documentos` = 2";
//$busca = mysqli_query($conn,$sql);
header("Refresh: 0, home.php?acao=relatorio_cautela_material");
}

if (isset($_GET['idDoc']) && isset($_GET['user']) && isset($_GET['tipo'])){
    
//recria a vaga vazia recriando ao campo 
$sql = "UPDATE `documentos_cautela` SET `data_entrega_doc`= NOW(),`recebido_por`='$user',`situacao_doc`='RECEBIDO',`arquivo_doc`='SIM' WHERE `id_documentos` = '$idDoc'";
$busca = mysqli_query($conn,$sql);

header("Location: ../home.php?acao=relatorio_geral_permissionario&id=$id");

} ;
