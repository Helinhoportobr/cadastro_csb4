  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Material Carga</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Material</th>
                      <th>Data Compra</th>
                      <th>Local</th>
                      <th>Valor</th>
                      <th>Foto</th>
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM material_carga WHERE arquivo = 'Nao';";
                      
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
                      <td><?php echo $show->material; ?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_compra));?></td>
                      <td><?php echo $show->local_alocado;?></td>
                      <td><?php echo $show->valor;?></td>
                      <td><img src="../dist/img/material_carga/<?php echo $show->foto; ?>" alt="<?php echo $show->foto; ?>" title="<?php echo $show->foto; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>
                      <div class="btn-group">
                        
                        <a href="home.php?acao=delet_material_carga&relatorio=<?php echo $show->id_matcarga;?>" onclick="return confirm('Deseja remover este material')" class="btn btn-danger" title="Remover Material"><i class="fa fa-trash"></i></a>
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
  