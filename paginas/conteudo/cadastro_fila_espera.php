  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Fila espera carros</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-4">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastrar na Fila Carros</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Permissionário</label>
                    <select name="id_permiss" class="form-control">
					            <option>Selecione</option>
                      <?php
						          //$result_permissioanario = "SELECT e.id_permissionarios, e.apt, e.nome, g.id_permiss FROM permissionarios AS e LEFT JOIN garagem AS g ON e.id_permissionarios = g.id_permiss WHERE g.id_permiss IS NULL AND e.arquivo = 'Nao' AND e.nome != 'PREFEITURA AERONAUTICA DE BRASILIA'";
                      $result_permissioanario = "SELECT e.id_permissionarios, e.apt, e.nome, g.id_permiss FROM permissionarios AS e LEFT JOIN garagem AS g ON e.id_permissionarios = g.id_permiss WHERE g.id_permiss IS NULL AND e.arquivo = 'Nao' AND e.nome != 'PREFEITURA AERONAUTICA DE BRASILIA'";
                      $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>" required ><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Data Entrada</label>
                    <input type="date" class="form-control" name="dataentr" id="dataentr" required>
                  </div>

                  <!--inserir posição na fila -->
                  <div class="col-3" hidden >
                  <label for="campo3">Insere posição na fila N</label>
                            

                  <input type="text" name="posifila" id="posifila" value="<?php    
                  $sql = "SELECT `posicao_fila` FROM `garagem_espera` where `arquivo`= 'Nao' ORDER BY`id_garagem_espera` DESC limit 1 ";
                  
                  
                  
                  foreach ($conn->query($sql) as $row) {
                          
                    $posicao_fila = 1;                           
                       $posicao_fila = $row['posicao_fila'] + 1;

                       echo $posicao_fila;
                                                
                          }?>">
                  
                  </div>
                  
                                    
                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>
                  
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="botao" class="btn btn-primary">Cadastrar na Fila</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {

                  $id_permiss = $_POST['id_permiss'];
                  $dataentr = $_POST['dataentr'];
                  $arquivo = $_POST['arquivo'];
                  $posicao = $_POST['posifila'];

                  //echo $dataentr;
                  //echo $posicao;
                  //echo $id_permiss;
                  //echo $arquivo;
                  
                  
                                 
                        $cadastro = "INSERT INTO garagem_espera (id_permiss,dataentr_pred,arquivo,posicao_fila) VALUES (:id_permiss,:dataentr,:arquivo,:posicao)";

                        try{
                          $result = $conect->prepare($cadastro);

                          $result->bindParam(':id_permiss',$id_permiss,PDO::PARAM_STR);
                          $result->bindParam(':dataentr',$dataentr,PDO::PARAM_STR);
                          $result->bindParam(':arquivo',$arquivo,PDO::PARAM_STR);
                          $result->bindParam(':posicao',$posicao,PDO::PARAM_STR);
                          
                                                                         
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Permissionário inserido com sucesso na Fila de espera !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=cadastro_veiculo");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não inseridos !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 2, ?acao=cadastro_veiculo");
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
            
            <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório fila de espera primeira vaga</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example10" >
                <thead>
                    <tr>
                      <th>#</th>
                      <th>apt</th>
                      <th>Permissioário</th>
                      <th>Data Entrada</th>
                      <th>Posição Fila</th>
                      <th>Prioridade</th>
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM garagem_espera INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_espera.id_permiss WHERE garagem_espera.arquivo = 'Nao'";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['apt'] . "\t";
                          
                        
                      }?></td>
                      <td>
                      <?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['nome'] . "\t";
                          
                        
                      }?>
                      </td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentr_pred));?></td>
                      <td><?php echo $show->posicao_fila;?></td>

                      <td><?php echo $show->prioridade; ?></td>
                      
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=editar_fila_garagem&id=<?php echo $show->id_garagem_espera;?>" class="btn btn-success" title="Editar"><i class="fas fa-user-edit"></i></button>
                        <a href="home.php?acao=delet_fila_espera_carros&idDel=<?php echo $show->id_garagem_espera;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover da Fila"><i class="fas fa-user-times"></i></a>
                      </div>
                      </td>
                    </tr>
                    <?php

                            }

                          }else{

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
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
      $("#example10").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>
   