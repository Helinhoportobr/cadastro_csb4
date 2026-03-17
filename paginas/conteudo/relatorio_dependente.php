  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Dependentes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Nome</th>
                      <th>Vinculo</th>
                      <th>Telefone</th>
                      <th>E-mail</th>
                      <th>Data Nascimento</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                    $select = "SELECT * FROM depententes INNER JOIN permissionarios ON permissionarios.id_permissionarios = depententes.id_permiss WHERE depententes.arquivo = 'Nao'";
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
                      <td><?php echo $show->nomedepend;?></td>
                      <td><?php echo $show->vinculo;?></td>
                      <td><?php echo $show->tel_depend;?></td>
                      <td><?php echo $show->email_depend;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datanascdepend));?><td>
                      <div class="btn-group">
                      <a href="home.php?acao=update_dependente&id=<?php echo $show->id_dependentes;?>" class="btn btn-success" title="Editar Dependentes"><i class="fas fa-user-edit"></i></a>
                      <a href="../paginas/method/delet_dependente.php?idDel=<?php echo $show->id_dependentes;?>" onclick="return confirm('Deseja realmente remover o Dependentes ?')";  class="btn btn-danger" title="Remover Dependente"><i class="fas fa-user-times"></i></a>
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
  