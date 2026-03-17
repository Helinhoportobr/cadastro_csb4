  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Bicicletas</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Permissioário</th>
                      <th>Código</th>
                      <th>Modelo</th>
                      <th>Data de Entrada</th>
                      <th>Foto Bicicleta</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM bicicletario INNER JOIN permissionarios ON permissionarios.id_permissionarios = bicicletario.id_permiss WHERE bicicletario.arquivo = 'Nao'";
                      
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
                      <td><?php echo $show->apt; echo "&nbsp"; echo $show->nome;?></td>
                      <td><?php echo $show->codigo_registro;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentradabike));?></td>
                      <td><img src="../dist/img/bicicletas/<?php echo $show->foto_bike; ?>" alt="<?php echo $show->foto_bike; ?>" title="<?php echo $show->foto_bike; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_bicicleta.php?idDel=<?php echo $show->id_bike;?>" onclick="return confirm('Deseja remover a Bicicleta')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
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
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  