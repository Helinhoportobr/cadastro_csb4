<?php	

include 'config.php';

$id = $_GET['id'];

ini_set('default_charset','UTF-8');
setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'default_charset','UTF-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');


$date = strftime('%d de %B de %Y', strtotime('today'));


$sql = "SELECT `id_permissionarios`, `bloco`, `apt`, `dataentr`, `sexo`, `postoesp`, `nome`, `datanasc`, `secaotrab`, `cpf`, `saram`, `telcel`, `email`, `datasaida`, `arquivo` FROM `permissionarios` WHERE `id_permissionarios` = $id";

				$busca = mysqli_query($conexao,$sql);




while( $array = mysqli_fetch_array($busca)) {
					
					$id_permissionario = $array['id_permissionarios'];
					$selectbloco = $array['bloco'];
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
$datasaida = strftime('%d/%m/%Y');

$dataref = strftime('%m/%Y');


date_default_timezone_set('America/Sao_Paulo');


$dia = date('d');
$ano = date('Y');
$mes = date('M');
$mess = array("Jan" => "janeiro", "Feb" => "fevereiro", "Mar" => "Mar&ccedil;o", "Apr" => "Abril", "May" => "maio", "Jun" => "junho", "Jul" => "julho", "Aug" => "agosto", "Sep" => "setembro", "Oct" => "outubro", "Nov" => "novembro", "Dec" => "dezembro");



//$data é o que aparece na data final
$data= $dia.' de '.$mess["$mes"].' de '.$ano; 

//referenciar o DomPDF com namespace
	use Dompdf\Dompdf;

	// include autoloader
	require_once("dompdf/autoload.inc.php");

	//Criando a Instancia
	$dompdf = new DOMPDF();

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

</style>
  
</head>

<body>

<div id="header">
  <table>
    <tr>
      <td>Edificio Aeronaútica</td>
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
<b>'.$postoesp.' '.$nome.'</b>, CPF nº '.$cpf.', SARAM nº '.$saram.', então compossuidor(a) do imóvel situado à CSB 04 LOTE 1/2, Bloco '.$selectbloco.', APT '.$apt.' - Taguatinga-Sul DF, nada deve de taxa ordinária de condomínio a esta administração até '.$datasaida.', tendo sido o '.$dataref.' a última referência quitada, no valor de R$ 410,89.</p>
<p>
2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Informo, também, que esta declaração só tem validade no mês vigente da data de assinatura.</p>

<div style=" margin-top:100px; text-align:right">
Brasília, '. $date.'.
</div>

<div style="margin-top:300px; text-align:center">
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
		"'$selectbloco' '$apt' '$nome'.pdf", 
		array(
			"Attachment" => false //Para realizar o download somente alterar para true
		)
	);


?>