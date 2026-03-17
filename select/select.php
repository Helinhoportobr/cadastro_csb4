<?php
$servidor = "localhost";
$usuario = "root";
$senha = "";
$dbname = "contatos";

//Criar a conexao
$conn = mysqli_connect($servidor, $usuario, $senha, $dbname);

$result = mysqli_query("SELECT * FROM permissionarios");
$estados = mysqli_query($conn, $result);

$html .= '<form name="produto" method="get" action="">';
 $html .= '<p>';
 $html .= '<label for="">Selecione um estado</label>';
 $html .= '<select name="id_estado">';
 $html .= '<option>Selecione...</option>';

 while($estado = mysql_fetch_array($estados)) {
 $selected = ($_GET['id_estado'] == $estado['id']) ? 'selected="selected"' : null;
 $html .= '<option '.$selected.' value="'.$estado['id'].'">'.$estado['titulo'].'</option>';
 }

 $html .= '</select>';
 $html .= '</p>';

 if(isset($_GET['id_estado'])) {
 $html .= '<p>';
 $html .= '<label for="">Selecione uma cidade</label>';
 $html .= '<select name="id_cidade">';
 $cidades = mysql_query("SELECT id,titulo FROM cidades WHERE estado_id = ".$_GET['id_estado']." ORDER BY titulo");

 while($cidade = mysql_fetch_array($cidades)) {
 $html .= '<option value="'.$cidade['id'].'">'.$cidade['titulo'].'</option>';
 }
 $html .= '</select>';
 $html .= '</p>';
 }

 $html .= '<input type="submit" value="Enviar" />';
$html .= '</form>';
echo $html;
?>