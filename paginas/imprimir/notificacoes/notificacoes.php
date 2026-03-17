<meta name="viewport" content="width=device-width, initial-scale=1">
<?php

$usuarioLogado = $_SESSION['loginUser'];
  $senhaDoUsuario = base64_encode($_SESSION['senhaUser']);
  $selectUser = "SELECT * FROM usuarios WHERE email_user=:emailUserLogado AND senha_user=:senhaUserLogado";

try{
  $resultadoUser = $conect->prepare($selectUser);
  $resultadoUser->bindParam(':emailUserLogado', $usuarioLogado, PDO::PARAM_STR);
  $resultadoUser->bindParam(':senhaUserLogado', $senhaDoUsuario, PDO::PARAM_STR);
  $resultadoUser->execute();

  $contar = $resultadoUser->rowCount();
  if($contar > 0){
    while($show = $resultadoUser->FETCH(PDO::FETCH_OBJ)){
      $id_user = $show->id_user;
      $foto_user = $show->foto_user;
      $nome_user = $show->nome_user;
      $email_user = $show->email_user;
      $senha_user = $show->senha_user;
      $ativo_user = $show->ativo_user;
      $cargo = $show->cargo_user;

    }
  }else{
    echo '<div class="alert alert-danger"> <strong>Aviso!</strong> Não há dados com de perfil :(</div>';
  }
}catch (PDOException $e){
    echo "ERRO DE LOGIN DO PDO : ".$e->getMessage();
}
?>

<script>
function preencheCampo(el){
    let value = $(el).val();

    $('input[name="ATEND_USU"]').val(value);
	
};

function preenche(el){
    let value = $(el).val();

   	$('input[name="ATEND_USU2"]').val(value);
};

  
 
</script>


  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Gerar Notificações</h1>
          </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">NOTIFICAÇÃO PERMISSIONÁRIOS</h3>
              </div>
              <div class="card-body">
              
              <h4 style='text-align: center'>CADASTRO DE NOTIFICAÇÕES</h4>

              <br><br><div style='text-align: right'>Brásilia, <?php setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
echo utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));?>.</div><br><br><br>
              <div style="overflow-x:auto;">                                 
              <form action="imprimir/notificacoes/gerar_notificacao_pdf.php" method="POST">
                
             <p>Na qualidade de Administração dos compossuídores do Edifício Aeronáutica, cumprindo as obrigações estabelecidas, vimos por meio desta <b>NOTIFICAR</b> V.Sa.<select style="width:50%" class="form-select form-select-sm" name="idPermiss"  onchange="preencheCampo(this);">
					            <option>Selecione</option>
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios']; echo ' - '; echo $row_perm['nome'];?>"><?php echo $row_perm['apt']; echo ' - '; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>, pela infringência às normas da Administração de compossuídores do Edifico Aeronáutica no que diz respeito ao Regimento Interno, em seu <b>Capítulo III – Dos Deveres Art. 5º - São deveres de cada compossuidores, inclusive de seus empregados.</b></p>
<p>Identificamos e recebemos reclamações expressas, que V.Sa e ou seus dependentes, empregados infligiram a regra de,<select name="infracao" type="text" id="infracao" required>
                          <option disabled selected>Selecione o motivo</option>
                          <option value="Barulho Excessivo">Barulho Excessivo</option>
                          <option value="Cachorro em Areás comuns">Cachorro em Areás comuns</option>
                          <option value="Brinquedos não permitidos">Brinquedos não permitidos</option>
                          <option value="Uso indevido da Garagem">Uso indevido da Garagem</option>
                          <option value="Falta de Controle do Portão">Falta de Controle do Portão</option>
                          <option value="Saída/entrada por local não permitido">Saída/entrada por local não permitido</option>
                        </select>no dia <input type="date" name="data_registro" required>. Tais situações são expressamente proibidas, conforme as normas supracitadas.
                        Diante do exposto, nossa Administração pede à gentileza de V.Sa para evitar tais transtornos e não mais incidir em tal transgressão as normas vigentes, pois em caso de reincidência a unidade estará sujeita a sanções e multas legais, conforme previstas em nosso Estatuto e Regimento Interno.
                        <p>
                        <h5><b>Descreva o fato ocorrido</b></h5>
                        <textarea  placeholder="Descreva os fatos ocorridos" style='width:100%;' name="descricao"></textarea>                                                       
                  <b>        OBS: Se possível separar a gravação dos fatos nas cameras do condomínio.</b>
                        
                </div>
                
  
  <!--PERMISSIONARIOS --> 
  <div style="overflow-x:auto;">
                <table >
    <tr>
      <td style='text-align:center; ' >
      ____________________________________<br><input name="ATEND_USU" type="text" style="border: 0 none; width: 450px; text-align: center"></td>
      <td style='text-align: center;'>
      ____________________________________<br><?php echo $nome_user; echo ' - '; echo $cargo;  ?></td>
    </tr>
    <tr>
      <td style='text-align:center;'>PERMISSIONÁRIO RESPONSÁVEL</td>
      <td style='text-align: center;'>ENTREGUE POR </td>
    </tr>
  </table>
                    </div>
    
                    
                             
  <!-- FIM -PERMISSIONARIOS -->     
  
  

  <div class="col-8"  hidden>
                  <label for="campo3">cargo do funcionario que registrou</label>
                  <input type="text" name="cargo_func" value="<?php echo $nome_user; echo ' - '; echo $cargo;  ?>" required>

                  </div>
                  
<div class="col-8"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="Nao" required>

                  </div>
                  
                 


                                                              <div class="card-footer"  style="text-align:center">
                                                                <button class="btn btn-primary" type="submit" name="btn-gerar" value="Gerar PDF">
                                                                  <i class="fas fa-download"></i> Generate PDF
                                                                </button>
                                                              </div>
                                              
                                                              </div>
                                                              <!-- /.card-header -->
                                                             
               </form>
                    </div>
               <!-- registar no banco o item em cautelado-->
              
<!-- fim registar no banco o item em cautelado-->
               
              
              
             
            </div>
                    
          </div> <!-- /.card -->
          
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 