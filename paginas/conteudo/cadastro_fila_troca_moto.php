  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Fila Troca Motos</h1>
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
                <h3 class="card-title">Cadastrar na Fila Motos</h3>
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
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>"><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Data Entrada</label>
                    <input type="date" class="form-control" name="dataentr" id="dataentr">
                  </div>

                  <!--inserir posição na fila -->
                  <div class="col-3" hidden >
                  <label for="campo3">Insere posição na fila N</label>
                            

                  <input type="text" name="posifila" id="posifila" value="<?php    
                  $sql = "SELECT `posicao_fila` FROM `garagem_troca_moto` ORDER BY`id_garagem_troca_moto` DESC limit 1";
                  
                  
                  
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
                  
                  
                                 
                        $cadastro = "INSERT INTO garagem_troca_moto (cod_permiss,dataentr_troca_gar,arquivo,posicao_fila) VALUES (:id_permiss,:dataentr,:arquivo,:posicao)";

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
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5><i class="icon fas fa-check"></i> OK!</h5>
                                    Permissionário inserido com sucesso na Fila de espera !!!
                                  </div>
                                </div>';
                                header("Refresh: 5, ?acao=cadastro_fila_troca_moto");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não inseridos !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 5, ?acao=cadastro_fila_troca");
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
                <h3 class="card-title">Relatório fila de troca</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example11">
                <thead>
                    <tr>
                      <th>#</th>
                      <th>apt</th>
                      <th>Permissioário</th>
                      <th>Data Entrada</th>
                      <th>Posição Fila</th>
                      <th>Ultima Desist</th>
                      <th>Nº Desist</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM garagem_troca_moto INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_troca_moto.cod_permiss WHERE garagem_troca_moto.arquivo = 'Nao'";
                      
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
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->cod_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['apt'] . "\t";
                          
                        
                      }?></td>
                      <td>
                      <?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->cod_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['nome'] . "\t";
                          
                        
                      }?>
                      </td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentr_troca_gar));?></td>
                      <td><?php echo $show->posicao_fila;?></td>
                      <td><?php
                      
                      if (!empty($show->data_ulti_desist && $show->data_ulti_desist != '0000-00-00')) 
                        {
                                $data_ulti_desist = date_format(date_create($show->data_ulti_desist), "d/m/Y");
                        } else {
                                $data_ulti_desist = '';
                        }
                      
                      
                      echo $data_ulti_desist;?>
                      
                    </td>
                      <td><?php echo $show->qnd_desist;?></td>
                      
                      
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=editar_fila_troca_moto&id=<?php echo $show->id_garagem_troca_moto;?>" class="btn btn-success" title="Editar"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_fila_troca_moto.php?idDel=<?php echo $show->id_garagem_troca_moto;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover da Fila"><i class="fas fa-user-times"></i></a>
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
      $("#example11").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>