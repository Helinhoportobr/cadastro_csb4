<?php ob_start(); ?>
<?php 
$tipo_doc = "Termo de responsabilidade menor";

$apt = $_POST['aptpermiss'];

$nome = $_POST['permiss'];

setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese'); echo $date = strftime('%d de %B de %Y', strtotime('today'));
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
    $conteudo_pdf .= "<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' integrity='sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO' crossorigin='anonymous'>";
    $conteudo_pdf .= "<link rel='stylesheet' href='css/custom.css'/>";
    $conteudo_pdf .= "<meta charset='UTF-8'>";
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
    <img src='http://localhost/admin/paginas/imprimir/termo_resp/imagens/logo.png'>
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
    $conteudo_pdf .= "<h4 style='text-align: center;'>Declaração</h4>";
    $conteudo_pdf .= "1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Eu, " . $dados['permiss'] .", " . "Cpf: " . $dados['cpfpermiss'] . " Unidade: ". $dados['aptpermiss'].".". "<br>". "<br>";
       
    $conteudo_pdf .= "2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Declaro estar ciente de todo teor do termo de responsábilidade e de todos os dados pessoais que foram ou serão fornecidos para efetivar o cadastramento, autorizando meu/minha " . '<b>'. $dados['depend'].'</b>' . "," . " a se cadastrar nos sistema de segurança de entrada e saída, na portaria da Associação de moradores da CSB 4, Lote 1/2 blocos A B C e D, assumindo total responsabilidade sobre o trânsito do menor de idade em questão.";
    $conteudo_pdf .= "<div style='margin-top:100px; text-align:right'>
    Brasília, $date.
    </div>";
    $conteudo_pdf .= "

    <table style='margin-top:100px; width:100%;  '>
    <tr>
      <td style='text-align:center; font-size: 13px' >
      ____________________________________<br>". $dados['permiss'] . " " .  $dados['aptpermiss'] . " </td>
      <td style='text-align: center; font-size: 13px'>
      ____________________________________<br>ALEXSANDRO SANTOS DE MORAIS</td>
    </tr>
    <tr>
      <td style='text-align:center; font-size: 12px'>Permissionário</td>
      <td style='text-align: center; font-size: 12px'>Presidente da Administração de Compossuidores</td>
    </tr>
  </table>";
    $conteudo_pdf .= " ";
    
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
$dompdf->stream(
  "'$apt' '$nome' '-' '$tipo_doc'.pdf", 
  array(
    "Attachment" => true//Para realizar o download somente alterar para true
  )
);


} else {
header("Location: index.php");
}

include('conexao.php');

if(isset($_POST['btn-gerar'])) {
               
  $id_permiss = $_POST['idPermiss'];   
  $data_doc = date('Y/m/d'); 
  $nome_depend = $_POST['depend'];  
  $arquivo_doc = 'Nao';

  //echo $id_permiss;
 // echo $desc_objeto;  
  //echo $entreg_por;
 // echo $data_saida_doc;
  //echo $arquivo_doc;
        
       
                          
        $sql = "INSERT INTO `documentos_termo_resp`(id_permiss, data_doc, depend_term, arquivo) VALUES (:id_permiss,:data_doc,:nome_depend,:arquivo_doc)";
       
        try{
          
          $result = $conect ->prepare( $sql);         
          $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_INT);          
          $result->bindParam(':data_doc', $data_doc,PDO::PARAM_STR);
          $result->bindParam(':nome_depend', $nome_depend,PDO::PARAM_STR);
          $result->bindParam(':arquivo_doc', $arquivo_doc,PDO::PARAM_STR);
         
                                 
          $result->execute();
          $contar = $result->rowCount();
       
       
        }catch(PDOException $e){
          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
          

                  
      }

      

};

