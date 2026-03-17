<?php 

include('conexao.php');

$tipo_doc = "Termo de Troca de Garagem";

$idPermutanteA = $_POST['id_permiss'];

$sql = "SELECT * FROM `permissionarios` INNER JOIN garagem ON garagem.id_permiss = permissionarios.id_permissionarios WHERE garagem.id_permiss = $idPermutanteA AND `situacao` = 'DEFINITIVA' AND garagem.arquivo = 'Nao'";

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
          $vaga = $array['vaga'];

          echo $id_permissionario;
          echo $vaga;
          echo $apt;
          

};

$idPermutanteB = $_POST['id_permiss2'];

$sql = "SELECT * FROM `permissionarios` INNER JOIN garagem ON garagem.id_permiss = permissionarios.id_permissionarios WHERE garagem.id_permiss = $idPermutanteB AND `situacao` = 'DEFINITIVA' AND garagem.arquivo = 'Nao'";

				$busca = mysqli_query($conn,$sql);




while( $array = mysqli_fetch_array($busca)) {
					
					$id_permissionarioB = $array['id_permissionarios'];
					$aptB = $array['apt'];
          $nomeB = $array['nome'];
					$cpfB = $array['cpf'];
          $vagaB = $array['vaga'];

          echo $id_permissionarioB;
          echo $aptB;
          echo $nomeB;
          echo $cpfB;
          echo $vagaB;

};

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
              $conteudo_pdf .= "<h6 style='text-align: center; margin-top:10px;'>TERMO DE PERMUTA DE VAGA DE GARAGEM ENTRE PERMISSIONÁRIOS</h6>";
              
              $conteudo_pdf .= "<br>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PERMUTANTE(A):&nbsp;" . $nome .", " . "Cpf: " . $cpf . " Unidade: ". $apt .".". "<br>";
                 
              $conteudo_pdf .= "2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PERMUTANTE(A):&nbsp;" . $nomeB .", " . "Cpf: " . $cpfB . " Unidade: ". $aptB .".". "<br>". "<br>";
              
              $conteudo_pdf .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;As partes acima identificadas têm, entre si, justo e acertado o presente Contrato de Permuta de vaga por vaga, que se regerá pelas regras de troca definidas em regimento interno da Associação de Permissionários da CSB4 e pelas condições descritas no presente.";
              
              $conteudo_pdf .= "<br><br><h6>"."<b>"."DO OBJETO DO CONTRATO"."</b>"."</h6>";
              $conteudo_pdf .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;O presente contrato tem o Objeto, a permuta das vagas pertencentes ao PERMUTANTE(A), cujo o mesmo possua permissão de uso e que não prejudique as vagas adjacentes, e a vaga do PERMUTANTE(B) igulmente não prejuicando as vagas adjacentes, e de acordo com todas as regras em vigor.";
              
              $conteudo_pdf .= "<br><b>        O PERMUTANTE (A) transfere ao PERMUTANTE(B), a partir da assinatura deste instrumento, a posse e direito de uso das vagas em questão um para o outro, assumindo assim toda a reponsabilidade dai por diante.</b>";
              
              $conteudo_pdf .= "<br><div style='margin-top:10px; text-align:right'>
              Brasília, $date.
              </div><br><br>";
          
          
              $conteudo_pdf .= "
          
              <table style='margin-top:10px; width:100%;  font-size:12px;  '>
              <tr>
                <td style='text-align:center;  font-size:12px; ' >
                ____________________________________<br> $nome </td>
                <td style='text-align: center;'>
                ____________________________________<br> $nomeB </td>
              </tr>
              <tr>
                <td style='text-align:center;'>PERMUTANTE (A)</td>
                <td style='text-align: center;'>PERMUTANTE (B)</td>
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
                "'$apt' 'x' '$aptB' '-' '$tipo_doc'.pdf", 
                array(
                  "Attachment" => true//Para realizar o download somente alterar para true
                )
              );
            
          
          } else {
          header("Location: index.php");
          }







include('conexao.php');

if(isset($_POST['btn-gerar'])) {
               
  $id_permiss1 = $_POST['id_permiss']; 
  $id_permiss2 = $_POST['id_permiss2'];   
  $data_doc = date('Y/m/d'); 
  $vaga_permiss1 = $vaga; 
  $vaga_permiss2 = $vagaB; 

  echo $id_permiss1;
  echo $id_permiss2;  
  echo $data_doc;
  echo $vaga_permiss1;
  echo $vaga_permiss2;
        
       
                          
        $sql = "INSERT INTO `documentos_troca_garagem`(id_permiss1, id_permiss2, data_doc_troca, vaga_permiss1, vaga_permiss2) VALUES (:id_permiss1,:id_permiss2,:data_doc,:vaga_permiss1,:vaga_permiss2)";
       
        try{
          
          $result = $conect ->prepare( $sql);         
          $result->bindParam(':id_permiss1', $id_permiss1,PDO::PARAM_INT);
          $result->bindParam(':id_permiss2', $id_permiss2,PDO::PARAM_INT);          
          $result->bindParam(':data_doc', $data_doc,PDO::PARAM_STR);
          $result->bindParam(':vaga_permiss1', $vaga_permiss1,PDO::PARAM_STR);
          $result->bindParam(':vaga_permiss2', $vaga_permiss2,PDO::PARAM_STR);
         
                                 
          $result->execute();
          $contar = $result->rowCount();
       
       
        }catch(PDOException $e){
          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
          

                  
      }

      

};
