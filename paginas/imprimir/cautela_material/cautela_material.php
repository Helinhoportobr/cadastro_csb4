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
            <h1>Cautela de Material</h1>
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
                <h3 class="card-title">Selecionar Permissioários</h3>
              </div>
              <div class="card-body">

              <h4 style='text-align: center'>CAUTELA DE EMPRÉSTIMO DE EQUIPAMENTOS/MATERIAL</h4>

              <br><br><div style='text-align: right'>Brásilia, <?php setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
echo utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));?>.</div><br><br><br>
                                               
              <form action="imprimir/cautela_material/gerar_cautelamaterial_pdf.php" method="POST">
                
             <p>Eu,<select name="idPermiss"  onchange="preencheCampo(this);">
					            <option>Selecione</option>
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios']; echo ' - '; echo $row_perm['nome'];?>"><?php echo $row_perm['apt']; echo ' - '; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>, comprometo-me a zelar pelo material abaixo discriminado, emprestado por mim hoje,<b> (<?php setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
echo utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));?>)</b> pertencente a Associação dos Permissionários da CSB4, lote 1/2 blocos A B C e B, a ser devolvido imeditaemnte após o uso e me comprometo a responder pelos danos que, por ventura, venham a ser causados.</p>
                  <br>
                  <h5><b>Descrição completa do material/equipamento emprestado</b></h5> 
                  <br>
                  <label>Descreva o material cautelado: (Não esquecer de colocar aquantidade no final Ex: 01(UMA))</label>  <br>      
                  <textarea  placeholder="Digite sua mensagem" style='width:100%;' name="material"></textarea>                                                       
                  <b>        OBS: A não devolução do Equipamento/Material, ou danos no mesmo, acarretará em inclusão imediata no proxímo boleto do valor do bem acima citado.</b>
                </div>
                
  
  <!--PERMISSIONARIOS -->  
                <table style='margin-top:100px; width:100%;  '>
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
 