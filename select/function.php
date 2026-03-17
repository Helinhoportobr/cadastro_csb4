<?php
include('conexao.php');

function retorna($permiss, $conn){
	$result_aluno = "SELECT * FROM permissionarios WHERE nome = '$permiss' LIMIT 1";
	$resultado_aluno = mysqli_query($conn, $result_aluno);
	if($resultado_aluno->num_rows){
		$row_aluno = mysqli_fetch_assoc($resultado_aluno);
		$valores['apt'] = $row_aluno['apt'];
		$valores['cpf'] = $row_aluno['cpf'];
	}else{
		$valores['cpf'] = ' Permissionário não encontrado';
	}
	return json_encode($valores);
}

if(isset($_GET['permiss'])){
	echo retorna($_GET['permiss'], $conn);
}
?>