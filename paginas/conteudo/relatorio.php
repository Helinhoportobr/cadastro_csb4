  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Lista de Contatos</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example6" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Categoria</th>
                    <th>Ações</th>
                  </tr>
                  </thead>
                  <tbody>
                  <?php
                    $select = "SELECT * FROM `contato` ORDER BY `id` DESC";
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
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->telefone;?></td>
                      <td><?php echo $show->email;?></td>
                      <td><?php echo $show->categoria;?></td>
                      <td>
                      <div class="btn-group">
                      <?php if($adm): ?><a href="home.php?acao=editar_contato&id=<?php echo $show->id;?>" class="btn btn-success" title="Editar Contato"><i class="fas fa-user-edit"></i></a><?php endif; ?>
                        <!--<?php if($adm): ?><a href="../paginas/method/delet_contato.php?idDel=<?php echo $show->id;?>" onclick="return confirm('Deseja realmente romover o Contato?')"; class="btn btn-danger" title="Remover Contato"><i class="fas fa-user-times"></i></a><?php endif; ?>-->
                        <?php if($adm): ?><a href="home.php?acao=delet_contatos&idDel=<?php echo $show->id;?>" onclick="return confirm('Deseja realmente romover o Contato?')"; class="btn btn-danger" title="Remover Contato"><i class="fas fa-user-times"></i></a><?php endif; ?>
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
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>Email</th>
                    <th>Categoria</th>
                    <th>Ações</th>
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
  <script>
    $(function () {
      $("#example6").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>