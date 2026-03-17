  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Contatos</h1>
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
          
          </div> <!-- /.card -->
          <div class="col-md-12">
             <!-- /.card -->

             <div class="card">
              <div class="card-header">
                <h3 class="card-title">Contatos</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" >
                <table class="table table-striped"  id="example6">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>E-mail</th>
                      <th>Categoria</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM `contato` ORDER BY `id` DESC LIMIT 6 ";
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
                      <a href="home.php?acao=editar_contato&id=<?php echo $show->id;?>" class="btn btn-success" title="Editar Contato"><i class="fas fa-user-edit"></i></a>
                      <a href="home.php?acao=delet_contatos&idDel=<?php echo $show->id;?>" onclick="return confirm('Deseja realmente romover o Contato?')"; class="btn btn-danger" title="Remover Contato"><i class="fas fa-user-times"></i></a>
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
                </table>
              </div>
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
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
 