  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Animais</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Tipo</th>
                      <th>sexo</th>
                      <th>Raça</th>
                      <th>Nome</th>
                      <th>Permissioário</th>
                      <th>Entrada</th>
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM animais WHERE arquivo = 'Nao' ";
                      
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
                      <td><?php echo $show->tipo_animal;?></td>
                      <td><?php echo $show->sexo;?></td>
                      <td><?php echo $show->raca_animal;?></td>
                      <td><?php echo $show->nome_animal;?></td>
                      
                      <td><?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['apt'] . $row['nome'] ;
                          
                        
                      }?>
                      </td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_entrada));?></td>
                      <td>
                     
                        <a href="home.php?acao=update_animais&id=<?php echo $show->id_animais;?>" class="btn btn-success" title="Editar"><i class="fas fa-user-edit"></i></button>
                        <a href="home.php?acao=delet_animais&idRel=<?php echo $show->id_animais;?>&relatorio" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover animal"><i class="fas fa-user-times"></i></a>
                    
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
  