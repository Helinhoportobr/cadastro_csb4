<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Animais</h1>
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
                <h3 class="card-title">Animais Cadastrados</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example1">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Nome</th>
                      <th>Raça</th>
                      <th>Sexo</th>
                      <th>Data Entrada</th>
                      <th>Permissionário</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM animais WHERE animais.arquivo = 'Nao'";
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
                      <td><?php echo $show->nome_animal;?></td>
                      <td><?php echo $show->raca_animal;?></td>
                      <td><?php echo $show->sexo;?></td>
                      <td><?php echo $show->tipo_animal;?></td>
                      <td><?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['apt'] . $row['nome'] ;
                          
                        
                      }?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=update_animais&id=<?php echo $show->id_animais;?>" class="btn btn-success" title="Editar Dependentes"><i class="fas fa-user-edit"></i></a>
                      <a href="../paginas/method/delet_animal.php?idDel=<?php echo $show->id_animais;?>" onclick="return confirm('Deseja realmente remover o Dependentes ?')";  class="btn btn-danger" title="Remover Dependente"><i class="fas fa-user-times"></i></a>
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
 