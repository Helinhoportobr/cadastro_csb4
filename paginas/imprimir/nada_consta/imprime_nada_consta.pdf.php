<?php ob_start(); ?>
<?php	

include('conexao.php');

$id = $_GET['id'];
$tipo_doc = "Nada Consta";



$sql = "SELECT * FROM permissionarios WHERE `id_permissionarios` = $id";

				$busca = mysqli_query($conn,$sql);




while( $array = mysqli_fetch_array($busca)) {
					
					$id_permissionario = $array['id_permissionarios'];
					$apt = $array['apt'];
					$dataentr = $array['dataentr'];
					$sexo = $array['sexo'];
					$postoesp = $array['postoesp'];
					$nome = $array['nome'];
					$datanasc = $array['datanasc'];
					$secaotrab = $array['secaotrab'];
					$cpf = $array['cpf'];
					$saram = $array['saram'];
					$telcel = $array['telcel'];
					$email = $array['email'];
					$datasaida = $array['datasaida'];

};

ini_set('default_charset','UTF-8');
setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'default_charset','UTF-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');

//$datasaida = strftime('%d/%m/%Y');


$data = $datasaida;

$datasaida = strftime('%d/%m/%Y', strtotime($data));

$dataref =  strftime('%m/%Y', strtotime($data));


$date = strftime('%d de %B de %Y', strtotime($data));

//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;

	// Carregar o Composer
	require 'dompdf/vendor/autoload.php';

	//Criando a Instancia
	$dompdf = new DOMPDF();
	$dompdf = new Dompdf(['enable_remote' => true]);

	//Definindo o tipo de fonte padrão
	$dompdf->set_option('defaultFont', 'Times New Roman’');


	$dompdf->setPaper('A4', 'portrait'); //Retrato
	//$dompdf->set_paper('letter', 'landscape');

	// Carrega seu HTML
	$dompdf->load_html('
			<h3 style="text-align: center;">Administração dos Compossuidores do Edifício Aeronaútica CSB 4 <br> CNPJ: 02.241.127/0001-28</h3>
			<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<title>Header and Footer example</title>
<style type="text/css">

@page {
    margin: 2cm;
}

body {
  font-family: sans-serif;
    margin: 0.5cm 0;
    text-align: justify;
}

#header,
#footer {
  position: fixed;
  left: 0;
    right: 0;
    color: #aaa;
    font-size: 0.9em;
}

#header {
  top: 0;
    border-bottom: 0.1pt solid #aaa;
}

#footer {
  bottom: 0;
  border-top: 0.1pt solid #aaa;
}

#header table,
#footer table {
    width: 100%;
    border-collapse: collapse;
    border: none;
}

#header td,
#footer td {
  padding: 0;
    width: 50%;
}

.page-number {
  text-align: center;
}

.page-number:before {
  content: "Page " counter(page);
}

hr {
  page-break-after: always;
  border: 0;
}

#img {
	width: auto;
	height: auto;
	background: no-repeat center;
	margin-top:10px;
	text-align: center;
   }

</style>
  
</head>

<body>

<div id="header">
  <table>
    <tr>
      <td>Edifício Aeronaútica CSB 4</td>
      <td style="text-align: right;">Administração</td>
    </tr>
  </table>
</div>

<div id="footer">
  <table>
    <tr>
      <td>Edifício Aeronaútica CSB 4</td>
      <td style="text-align: right;">Administração</td>
    </tr>
  </table>
</div>

<div id="footer">
  <div class="page-number"></div>
</div>

<h3 style="text-align: center;">Declaração</h3>

<p>
1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Declaro, para fins de desocupação de Próprio Nacional Residencial junto à PABR, que o(a) 
<b>'.$postoesp.' '.$nome.'</b>, CPF nº '.$cpf.', SARAM nº '.$saram.', então compossuidor(a) do imóvel situado à CSB 04 LOTE 1/2, APT '.$apt.' - Taguatinga-Sul DF, nada deve de taxa ordinária de condomínio a esta administração até  '.$datasaida.' tendo sido o mês '.$dataref.' a última referência quitada, no valor de R$ 410,89.</p>
<p>
2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Informo, também, que esta declaração só tem validade no mês vigente da data de assinatura.</p>

<div style=" margin-top:100px; text-align:right">
Brasília,&nbsp;' . $date .'.
</div>

<div style="margin-top:100px; text-align:center">
___________________________________
</div>
<p style="text-align:center">
ALEXSANDRO SANTOS DE MORAIS <br>Presidente da Administração de Compossuidores
<p/>

</body></html>

');

	//Renderizar o html
	$dompdf->render();

	//Exibibir a página
	$dompdf->stream(
		"'$apt' '$nome' '-' '$tipo_doc'.pdf", 
		array(
			"Attachment" => true//Para realizar o download somente alterar para true
		)
	);


?>