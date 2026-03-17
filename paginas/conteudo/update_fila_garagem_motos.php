  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Atualizar fila de Espera Motos</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <?php
  include('../config/conexao.php');
  if(!isset($_GET['id'])){
    header("Location: home.php?acao=cadastro_permissionario");
    exit();  
  }
  $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);
  
  $select = "SELECT * FROM garagem_espera_motos WHERE id_garagem_espera_moto = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          $id_garagem_espera = $show->id_garagem_espera_moto;
          $id_permiss = $show->id_permiss;
          $dataentr = $show->dataentr_pred;
          $posicao = $show->posicao_fila;
          $prioridade = $show->prioridade;
          $arquivo = $show->arquivo;
          $data_arquivo_fila = $show->data_arquivo_fila;

          
      }

    }else{
      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }
?>
        
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Atualizar Fila</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="row">   
                    <div class="col-4">
                          <label for="exampleInputEmail1">Permiss</label>
                          
                          <?php
                          $select = "SELECT * FROM garagem_espera_motos INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_espera_motos.id_permiss WHERE garagem_espera_motos.arquivo = 'Nao' AND `id_garagem_espera_moto` = $id";
                          try{
                            $result = $conect ->prepare($select);
                            $cont = 1; 
                            $result->execute();

                            $contar = $result->rowCount();
                            if($contar > 0){
                                while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                      
                          ?>
                                            
                          
                          <input id="id_permiss" name="id_permiss"  type="text" class="form-control" value="<?php echo $show->nome;?>"  disabled=""> 
                          <?php
                        }
                          }else{


                          }
                        }catch(PDOException $e){
                            echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          }
                          ?>
                    </div>
                  
                    <div class="col-4">
                    <label for="exampleInputEmail1">Entrada</label>
                    <input type="date" class="form-control" name="dataentr" id="dataentr" value="<?php echo $dataentr;?>">
                    </div>

                    <div class="col-4">
                    <label for="exampleInputEmail1">Prioridade</label>
                    <select class="form-control" name="prioridade" type="text" id="prioridade" required>
                          <option selected><?php echo $prioridade;?></option>
                          <option>Sim</option>
                          <option>Não</option>
                    </select>
                    </div>

                    <!--inserir posição na fila -->
                    <div class="col-3" hidden >
                    <label for="campo3">Insere posição na fila N</label>
                            

                    <input type="text" name="posifila" id="posifila" >
                  
                  
                  
                                    
                    <!--inserir estatus aquivado não -->
                    <div class="col-3"  hidden>
                    <label for="campo3">Arquivado padrão N</label>
                    <input type="text" name="arquivo" id="arquivo" >
                    </div>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer" style="text-align: center;">
                  <button type="submit" name="botao" class="btn btn-primary">Alterar dados</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {

                  
                  $dataentr = $_POST['dataentr'];
                  $prioridade = $_POST['prioridade'];
                  

                  //echo $dataentr;
                  //echo $posicao;
                  //echo $id_permiss;
                  //echo $arquivo;
                  
                  
                                 
                        $cadastro = "UPDATE garagem_espera_motos SET dataentr_pred=:dataentr, prioridade=:prioridade  WHERE id_garagem_espera_moto = $id";

                        try{
                          $result = $conect->prepare($cadastro);

                          
                          $result->bindParam(':dataentr',$dataentr,PDO::PARAM_STR);
                          $result->bindParam(':prioridade',$prioridade,PDO::PARAM_STR);
                          
                          
                                                                         
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados atualizados com sucesso!!!
                                  </div>
                                </div>';
                                header("Refresh: 1, home.php?acao=update_fila_garagem_motos&id=$id");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Permissionário não inserido erro !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1, ?update_fila_garagem_motos&=$id");
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                    
                 


                  /*echo $nome."<br>";
                  echo $telefone."<br>";
                  echo $email."<br>";
                  var_dump($_FILES['foto']);*/

                }
              ?>
            </div>
  </div>
            
          
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            </div>

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script>
    $(function () {
      $("#example14").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>