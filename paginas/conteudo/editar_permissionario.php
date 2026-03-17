<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Permissionários</h1>
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
                <h3 class="card-title">Permissionários</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              
                <table class="table table-bordered table-striped" id="example9">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
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
                      <a href="home.php?acao=editar_permissionario&id=<?php echo $show->id_permissionarios;?>" class="btn btn-success" title="Editar Permissionário"><i class="fas fa-user-edit"></i></a>
                      <a href="../paginas/method/delet_permissionario.php?idDel=<?php echo $show->id_permissionarios;?>" onclick="return confirm('Deseja realmente remover o Permissionário?')";  class="btn btn-danger" title="Remover Permissionário"><i class="fas fa-user-times"></i></a>
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
    $("#example9").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
 