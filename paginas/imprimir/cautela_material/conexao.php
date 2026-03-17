<?php
try{

    @DEFINE('HOST','localhost');
    @DEFINE('DB','contatos');
    @DEFINE('USER','root');
    @DEFINE('PASS','');

    $conect = new PDO('mysql:host='.HOST.';dbname=' .DB,USER,PASS);
    $conect -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //echo "conectado com sucesso";

}catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
}

?>

<?php
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$dbname = "contatos";
	
	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);
	
	if(!$conn){
		die("Falha na conexao: " . mysqli_connect_error());
	}else{
		//echo "Conexao realizada com sucesso";
	}	
	
?>
    
