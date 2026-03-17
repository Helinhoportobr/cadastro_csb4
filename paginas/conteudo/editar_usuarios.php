  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Usuários</h1>
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
                <h3 class="card-title">Usuários</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" >
                <table class="table table-striped"  id="example1">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Apt</th>
                      <th>Nome</th>
                      <th>E-mail</th>
                      <th>tipo</th>
                      <th>cod</th>
                      <th>Adm</th>
                      <th>Status</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM `usuarios` WHERE arquivo = 'Nao'";
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
                      <td>
                          
                          <?php
                           
						          $result_permissioanario = "SELECT `apt` FROM `permissionarios` WHERE `email` = '$show->email_user' ";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){
						    	    echo $row_perm['apt'];
						          };
					          ?>
                       
                      </td>
                      <td><?php echo $show->nome_user;?></td>
                      <td><?php echo $show->email_user;?></td>
                      <td><?php echo $show->cargo_user;?></td>
                      <td><?php echo $show->cod_boleto;?></td>
                      <td><?php if( $show->adm == 0){
                          
                          echo 'Não';
                      }else{
                          echo 'Sim';
                      } ?> 
                          
                          </td>
                      <td style="text-align: center">
                          
                          <?php
                          
                          $status = $show->ativo_user;
                          if( $status == 'Sim'){
                          
                          echo "<img src='https://sistemas.edificioaeronautica.com.br/paginas/conteudo/ativo.jpeg' height='22' width='22' /> " ;
                          
                          
                          }else{
                         echo "<img src='https://sistemas.edificioaeronautica.com.br/paginas/conteudo/desativado.jpeg' height='22' width='22' /> " ;
                          };?>
                      </td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=update_usuarios&id=<?php echo $show->id_user;?>" class="btn btn-success" title="Editar Usuário"><i class="fas fa-user-edit"></i></a>
                      <a href="home.php?acao=delet_usuarios&idDel=<?php echo $show->id_user;?>" onclick="return confirm('Deseja realmente remover o Usuário?')"; class="btn btn-danger" title="Remover Usuário"><i class="fas fa-user-times"></i></a>
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
 