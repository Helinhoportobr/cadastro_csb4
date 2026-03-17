  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Bicicletário</h1>
          </div>
          
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
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastrar Bicicletas</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Permissionário</label>
                    <select name="id_permiss" class="form-control">
					            <option>Selecione</option>
                      <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>"><?php echo $row_perm['apt']; echo "&nbsp"; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Código Etiqueta</label>
                    <input type="int" class="form-control" name="codEtiqueta" id="codEtiqueta" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Modelo</label>
                    <input type="text" class="form-control" name="modelo" id="modelo">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Data Entrada</label>
                    <input type="date" class="form-control" name="dataEntr" id="dataEntr">
                  </div>
                  
                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>
                  
                  <div class="form-group">
                    <label for="exampleInputFile">Foto da Bicicleta</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" name="foto" id="foto" required>
                        <label class="custom-file-label" for="exampleInputFile">Arquivo de imagem</label>
                      </div>
                      
                    </div>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="botao" class="btn btn-primary">Cadastrar Bicicleta</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                  $modelo = $_POST['modelo'];
                  $codigo_registro = $_POST['codEtiqueta'];
                  $formatP = array("png","jpg","jpeg","JPG","gif");
                  $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                  $dataentradabike = $_POST['dataEntr'];
                  $id_permiss = $_POST['id_permiss'];
                  $arquivo = $_POST['arquivo'];

                  if(in_array($extensao, $formatP)){
                    $pasta = "../dist/img/bicicletas/";
                    $temporario = $_FILES['foto']['tmp_name'];
                    $novoNome = uniqid().".$extensao";

                    if(move_uploaded_file($temporario, $pasta.$novoNome)){
                        $cadastro = "INSERT INTO bicicletario (modelo,codigo_registro,foto_bike,dataentradabike,id_permiss,arquivo) VALUES (:modelo,:codigo_registro,:foto,:dataentradabike,:id_permiss,:arquivo)";

                        try{
                          $result = $conect->prepare($cadastro);
                          $result->bindParam(':modelo',$modelo,PDO::PARAM_STR);
                          $result->bindParam(':codigo_registro',$codigo_registro,PDO::PARAM_STR);
                          $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                          $result->bindParam(':dataentradabike',$dataentradabike,PDO::PARAM_STR);
                          $result->bindParam(':id_permiss',$id_permiss,PDO::PARAM_STR);
                          $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Bicicleta cadastrada com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 5, ");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Bicicleta não cadastrada erro !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 5, home.php");
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                    }else{
                      echo "Erro, não foi possível fazer o upload do arquivo!";
                    }

                  }else{
                    echo "Formato Inválido";
                  }

                 

                }
              ?>
            </div>
</div>
            
            <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Bicicletas Recentes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example9">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Permissioário</th>
                      <th>Código</th>
                      <th>Modelo</th>
                      <th>Data de Entrada</th>
                      <th>Foto Bicicleta</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM bicicletario INNER JOIN permissionarios ON permissionarios.id_permissionarios = bicicletario.id_permiss WHERE bicicletario.arquivo = 'Nao' ORDER BY id_bike DESC LIMIT 6";
                      
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
                      <td><?php echo $show->apt; echo "&nbsp"; echo $show->nome;?></td>
                      <td><?php echo $show->codigo_registro;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentradabike));?></td>
                      <td><img src="../dist/img/bicicletas/<?php echo $show->foto_bike; ?>" alt="<?php echo $show->foto_bike; ?>" title="<?php echo $show->foto_bike; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_bicicleta.php?idDel=<?php echo $show->id_bike;?>" onclick="return confirm('Deseja remover a Bicicleta')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
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

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script>
    $(function () {
      $("#example9").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>