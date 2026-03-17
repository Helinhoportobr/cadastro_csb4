  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Veículo Garagem</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>apt</th>
                      <th>Permissiário</th>
                      <th>Placa</th>
                      <th>Modelo</th>
                      <th>cor</th>
                      <th>vaga</th>
                      <th>situação</th>
                      
                      <th style="width: 40px">Açoes</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM `garagem` WHERE `arquivo` = 'Nao' ORDER BY `vaga` + 0 ASC";
                      
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
                      <td><?php echo $show->placa;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo $show->cor;?></td>
                      <td><?php echo $show->vaga;?></td>
                      <td><?php echo $show->situacao;?></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=editar_garagem&id=<?php echo $show->id_garagem;?>" class="btn btn-success" title="Editar Fila"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_garagem.php?idDel=<?php echo $show->id_garagem;?>&vaga=<?php echo $show->vaga;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover da vaga"><i class="fas fa-user-times"></i></a>
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
  