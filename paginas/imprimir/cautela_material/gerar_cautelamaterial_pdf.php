<?php ob_start(); ?>
<?php 

include('conexao.php');

 
  $id = $_POST['idPermiss'];
  $tipo_doc = "Cautela de Material";
  

  //echo $id_permiss;

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
          
        

      }
    }
  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }
  
//insere data atual
setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese'); $date = strftime('%d de %B de %Y', strtotime('today'));

// Referenciar o namespace Dompdf
use Dompdf\Dompdf;

// Carregar o Composer
require 'vendor/autoload.php';

// Receber os dados do formulário
$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
//var_dump($dados);

if (!empty($dados['btn-gerar'])) {
    $conteudo_pdf = "<!DOCTYPE html>";
    $conteudo_pdf .= "<html lang='pt-br'>";
    $conteudo_pdf .= "<head>";
    $conteudo_pdf .= "<meta charset='UTF-8'>";
    $conteudo_pdf .= "<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' integrity='sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO' crossorigin='anonymous'>";
    $conteudo_pdf .= "<link rel='stylesheet' href='css/custom.css'/>";
    $conteudo_pdf .= "<style type='text/css'>

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
      content: 'Page' counter(page);
    }
    
    hr {
      page-break-after: always;
      border: 0;
    }

    p {
        font-size: 12px;
        }

    #img {
           width: auto;
           height: auto;
           background: no-repeat center;
           margin-top:10px;
           text-align: center;
          }
          
        
    </style>";
    $conteudo_pdf .= "<div  id='img'>
    <img src='http://localhost/admin/paginas/imprimir/troca_garagem/imagens/logo.png'>
    </div>";
    $conteudo_pdf .= "</head>";
    $conteudo_pdf .= "<body>";
    $conteudo_pdf .= "<div id='header'>
    
    <table>
      <tr>
        <td>Edificio Aeronaútica</td>
        <td style='text-align: right;'>Administração</td>
      </tr>
    </table>
    </div>";
    $conteudo_pdf .= "<div id='footer'>
    <div class='page-number'></div>
    </div>";
    $conteudo_pdf .= "<h5 style='text-align: center; margin-top:10px;'>Administração dos Compossuidores do Edifício Aeronaútica CSB 4 <br> CNPJ: 02.241.127/0001-28</h5>";
    $conteudo_pdf .= "<h6 style='text-align: center; margin-top:10px;'>CAUTELA DE EMPRÉSTIMO DE EQUIPAMENTOS/MATERIAL</h6>";
    $conteudo_pdf .= "<br>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EU,&nbsp;" . $nome .", " . "Cpf: " . $cpf . " Unidade: ". $apt_up .", comprometo-me a zelar pelo material abaixo discriminado, emprestado por mim hoje,&nbsp;". $date . ",". "&nbsp;pertencente a Associação dos Permissionários da CSB4, lote 1/2 blocos A B C e B, a ser devolvido imeditamente após o uso e me comprometo a responder pelos danos que, por ventura, venham a ser causados".".". "<br>";
    $conteudo_pdf .= "<br><br><h6>"."<b>"."Descrição completa do material/equipamento acautelado:"."</b>"."</h6>";
    
    $conteudo_pdf .= "<table style='border: 1px solid black; width:100%;' >
    <tr>
            <th>". $dados['material'] ."</th>
    </tr>
   
  </table><br><br>";
    
    $conteudo_pdf .= "<br><b>        OBS: A não devolução do Equipamento/Material, ou danos no mesmo, acarretará em inclusão imediata no proxímo boleto do valor do bem acima citado.</b>";
    
    $conteudo_pdf .= "<br><div style='margin-top:10px; text-align:right'>
    Brasília, $date.
    </div><br><br>";


    $conteudo_pdf .= "

    <table style='margin-top:10px; width:100%;  font-size:12px;  '>
    <tr>
      <td style='text-align:center;  font-size:12px; ' >
      ____________________________________<br>$nome</td>
      <td style='text-align: center;'>
      ____________________________________<br> ". $dados['cargo_func'] ." </td>
    </tr>
    <tr>
      <td style='text-align:center;'>PERMISSIONÁRIO RESPONSÁVEL</td>
      <td style='text-align: center;'>ENTREGUE POR</td>
    </tr>
    </table>
    <!-- FIM -PERMISSIONARIOS -->     
  
    <!--ASSINATURA ADMINSTRACAO-->
    <table style='margin-top:10px; width:100%;  font-size:12px;  '>
    <tr>
    <td style='text-align: center;'>
     ____________________________________<br>ALEXSANDRO SANTOS DE MORAIS</td>
    </tr>
    <tr>
      <td style='text-align: center;  font-size:12px;'>Presidente da Administração de Compossuidores</td>
    </tr>
  
    </table>";   
    $conteudo_pdf .= "</body>";
    $conteudo_pdf .= "</html>";

    // Instanciar e usar a classe dompdf
    $dompdf = new Dompdf();
    $dompdf = new Dompdf(['enable_remote' => true]);


    // Chamar o metodo loadHtml e enviar o conteudo do PDF
    $dompdf->loadHtml($conteudo_pdf);

    // Configurar o tamanho e a orientacao do papel
    // landscape - Imprimir no formato paisagem
    // $dompdf->setPaper('A4', 'landscape');
    // portrait - Imprimir no formato retrato
    $dompdf->setPaper('A4', 'portrait');

    // Renderizar o HTML como PDF
    $dompdf->render();

    // Gerar o PDF
    //Exibibir a página
	$dompdf->stream(
		"'$apt_up' '$nome' '-' '$tipo_doc'.pdf", 
		array(
			"Attachment" => true//Para realizar o download somente alterar para true
		)
	);

} else {
    header("Location: index.php");
    
}

if(isset($_POST['btn-gerar'])) {
               
  $id_permiss = $_POST['idPermiss'];   
  $desc_objeto = $_POST['material'];
  $entreg_por = $_POST['cargo_func']; 
  $data_saida_doc = date('Y/m/d');
  $arquivo_doc = $_POST['arquivo'];

  //echo $id_permiss;
 // echo $desc_objeto;  
  //echo $entreg_por;
 // echo $data_saida_doc;
  //echo $arquivo_doc;
        
       
                          
        $sql = "INSERT INTO `documentos_cautela`(id_permiss, desc_objeto, entreg_por, data_saida_doc, arquivo_doc) VALUES (:id_permiss,:desc_objeto,:entreg_por,:data_saida_doc,:arquivo_doc)";
       
        try{
          
          $result = $conect ->prepare( $sql);         
          $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_INT);          
          $result->bindParam(':desc_objeto', $desc_objeto,PDO::PARAM_STR);
          $result->bindParam(':entreg_por', $entreg_por,PDO::PARAM_STR);
          $result->bindParam(':data_saida_doc', $data_saida_doc,PDO::PARAM_STR);
          $result->bindParam(':arquivo_doc', $arquivo_doc,PDO::PARAM_STR);
         
                                 
          $result->execute();
          $contar = $result->rowCount();
       
       
        }catch(PDOException $e){
          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
          

                  
      }

      

};
?>