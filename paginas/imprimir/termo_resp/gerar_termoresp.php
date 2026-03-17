  <!-- Content Wrapper. Contains page content -->
  <script>
 
function preencheCampo(el){
    let value = $(el).val();

    $('input[name="Depend"]').val(value);
	
}

 
</script>

<!-- Bucas dados no banco -->
<?php
include('../config/conexao.php');
  if(!isset($_GET['id'])){
    header("Location: home.php?acao=cadastro_permissionario");
    exit();  
  }
  $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);
  
  $select = "SELECT * FROM permissionarios WHERE arquivo = 'Nao' AND `id_permissionarios` =  :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          //$id_dependentes = $show->id_dependentes;
          //$nomedepend = $show->nomedepend;
          //$vinculo = $show->vinculo;
          //$datanascdepend = $show->datanascdepend;
          //$sexodepend = $show->sexodepend;
          //$tel_depend = $show->tel_depend;
          //$email_depend = $show->email_depend;
          $nome = $show->nome;
          $cpf = $show->cpf;
          $apt = $show->apt;
          $id_permissionarios = $show->id_permissionarios;

          

          
          

      }
    }else{
      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }
?>


  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Preencher Termo de Responsabilidade</h1>
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
                <h3 class="card-title">Selecionar Dados</h3>
              </div>
              <div class="card-body">

              <h4 style='text-align: center'>TERMO DE RESPONSABILIDADE DE PERMISSIONÁRIO OU RESPONSÁVEL<br>
                                                    PARA INCLUSÃO NOS SISTEMA DE SEGURANÇA</h4>

                                                    <br><br>
                                                    <div style='text-align: right'>Brásilia, <?php setlocale(LC_ALL, 'pt_BR.utf8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
echo utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today'))); ?>.</div>

              <form action="imprimir/termo_resp/gerar_termoresp_pdf.php" method="POST" name="botao">

          <div class="row">
            Eu   
                  <div class="col-3">
                    <input name="permiss" class="form-control" type="text" value="<?php echo $nome;?>">
                  </div>,CPF:
                
            <div class="col-1">
              <input name="cpfpermiss" class="form-control" type="text" value="<?php echo $cpf;?>">
            </div>Unidade:
            <div class="col-1">
            <input name="aptpermiss" class="form-control" type="text" value="<?php echo $apt;?>">
            </div>

            <div class="col-1">
            <input name="idPermiss" class="form-control" type="text" value="<?php echo $id_permissionarios;?>">
            </div>
            
           
            Declaro estar ciente de todo teor do termo de responsábilidade e de todos os dados pessoais que foram ou serão fornecidos para efetivar o cadastramento, autorizando meu/minha <div><select name="depend" class="form-control col-13" required>
            <option value="0">Selecione</option>                                                           
                    <?php
                        $select = "SELECT * FROM `depententes` WHERE `id_permiss` = $id";
                                    try{
                                      $result = $conect ->prepare($select);
                                      $cont = 1; 
                                      $result->execute();

                                      $contar = $result->rowCount();
                                      if($contar > 0){
                                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                        
                                    ?>
                        
                        <option value="<?php echo $show->vinculo; echo  ' , '; echo $show->nomedepend;  ?>"><?php echo $show->vinculo; echo ' , '; echo $show->nomedepend;?></option>
                        <?php
                                  }
                                    }else{


                                    }
                                  }catch(PDOException $e){
                                      echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                                    }
                                    ?>
                       
                                              
                      </select></div>, a se cadastrar nos sistema de segurança de entrada e saída, na portaria da Associação de moradores 
                              da CSB 4, Lote 1/2 blocos A B C e D.
                              Assumindo total responsabilidade sobre o trânsito do menor de idade em questão.
                                                                        
                                                              </div>
                                                              
                                                              </div>
                                                              <!-- /.card-header -->

                                                              
                                                              <table style='margin-top:100px; width:100%;  '>
    <tr>
      <td style='text-align:center; '>
      ____________________________________<br><?php echo $nome;?></td>
      <td style='text-align: center;'>
      ____________________________________<br>ALEXSANDRO SANTOS DE MORAIS</td>
    </tr>
    <tr>
      <td style='text-align:center;'>Permissionário</td>
      <td style='text-align: center;'>Presidente da Administração de Compossuidores</td>
    </tr>
  </table>
                                                              
                                                              <div class="card-footer"  style="text-align:center">
                                                                <button class="btn btn-primary" type="submit" name="btn-gerar" value="Gerar PDF">
                                                                  <i class="fas fa-download"></i> Generate PDF
                                                                </button>
                                                              </div>

               </form>
              
              
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
 