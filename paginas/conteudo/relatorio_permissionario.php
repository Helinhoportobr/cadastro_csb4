  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Permissionários</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                      <th >#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>Seçao</th>
                      <th style="width: 40px">Acões</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php
                    $select = "SELECT * FROM `permissionarios` WHERE `arquivo` = 'Nao' ORDER BY SUBSTRING_INDEX(`apt`, '-', -1), CAST(SUBSTRING_INDEX(`apt`, 'A', 1) AS UNSIGNED)";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            


                         
                    ?>
                    <tr>
                    <td><?php echo $cont ++;?></td>
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->telcel;?></td>
                      <td><?php echo $show->secaotrab;?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=relatorio_geral_permissionario&id=<?php echo $show->id_permissionarios;?>" class="btn btn-success" title="relatório Geral"><i class="fas fa-chart-pie"></i></a>
                      <a href="home.php?acao=relatorio_geral_depend&idPerm=<?php echo $show->id_permissionarios;?>" class="btn btn-warning" title="Relatório de Dependentes"><i class="fas fa-users"></i></a>
                      </div>
                    </td>
                    </tr>
                    <?php
                     }
                    }else{


                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }


                    ?>
                 
                  </tbody>
                  <tfoot>
                  <tr>
                      <th>#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>Seçao</th>
                      <th style="width: 40px">Acões</th>
                  </tr>
                  </tfoot>
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
  