  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastrar Animais</h1>
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
                <h3 class="card-title">Cadastro Animais</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">

                <div class="form-group">
                  <label>Tipo</label>
                        <select class="form-control" name="tipo" type="text" id="tipo" required>
                          <option disabled selected>Selecione</option>
                          <option value="Cachorro">Cachorro</option>
                          <option value="Gato">Gato</option>
                          <option value="Hamster">Hamster</option>
                          <option value="Peixe">Peixe</option>
                          <option value="Pássaros">Pássaros</option>
                        </select>
                  </div>

                  <div class="form-group">
                  <label for="radios">Sexo</label>
                  <div class="col-12">
                  <select class="form-control" name="sexoanimal" type="text"id="sexoanimal" required>
                          <option disabled selected>Selecione</option>
                          <option value="Macho"> Macho</option>
                          <option value="Femêa">Femêa</option>
                  </select> 
                  </div>
                  </div>


                  <div class="form-group">
                  <label for="Nome">Raça<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="raca" value="" name="raca" required>
                  </div>

                  <div class="form-group">
                  <label for="Nome">Nome<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="nome" value="" name="nome" required>
                  </div>
                  
                <div class="form-group">
                    <label for="exampleInputEmail1">Permissionário</label>
                    <select name="id_permiss" class="form-control">
					            <option>Selecione</option>
                      <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>"><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
                  
                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>

                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="date" name="dataentr" id="dataentr" value="<?php echo $dataentrada = date("Y-m-d");?>">
                  </div>
                  
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="botao" class="btn btn-primary">Salvar Animal</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                             
                      $tipo = $_POST['tipo'];
                      $sexoanimal = $_POST['sexoanimal'];
                      $raca = $_POST['raca'];
                      $nome = $_POST['nome'];                     
                      $id_permiss = $_POST['id_permiss'];
                      $arquivo = $_POST['arquivo'];
                      $dataentr = $_POST['dataentr'];
                      

                      //echo $tipo."<br>";
                      //echo $sexoanimal."<br>";
                      //echo $raca."<br>";
                      //echo $nome."<br>";
                      //echo $id_permiss."<br>";
                      //echo $arquivo."<br>";
                      //echo $dataentr."<br>";
                                         
                      $cadastro = "INSERT INTO animais (tipo_animal,sexo,raca_animal,nome_animal,id_permiss,arquivo,data_entrada) VALUES (:tipo,:sexoanimal,:raca,:nome,:id_permiss,:arquivo,:dataentr)";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        
                        $result->bindParam(':tipo', $tipo,PDO::PARAM_STR);
                        $result->bindParam(':sexoanimal', $sexoanimal,PDO::PARAM_STR);
                        $result->bindParam(':raca', $raca,PDO::PARAM_STR);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->bindParam(':dataentr', $dataentr,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();                        

                          
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Animal cadastrado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=cadastro_animais");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Animal não Cadastrado !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 2, ?acao=cadastro_animais");

                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                        Animal não Cadastrado !!!
                                    </div>
                                  </div>';

                                  
                      }

                      

                };


                
              ?>
            </div>
</div>
            
            <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Inclusões Recentes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example1">
                <thead>
                    <tr>
                      <th>#</th>
                      <th>Tipo</th>
                      <th>sexo</th>
                      <th>Raça</th>
                      <th>Nome</th>
                      <th>Permissioário</th>
                      <th>Data Entrada</th>
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM animais WHERE animais.arquivo = 'Nao'";
                      
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
                          print $row['apt'] . " " . $row['nome'] ;
                          
                        
                      }?></td>
                      <td><?php
                      
                      if (!empty($show->data_entrada && $show->data_entrada != '0000-00-00')) 
                        {
                                $data_entrada = date_format(date_create($show->data_entrada), "d/m/Y");
                        } else {
                                $data_entrada = '';
                        }
                      
                      
                      echo $data_entrada;?></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_animais&id=<?php echo $show->id_animais;?>" class="btn btn-success" title="Editar"><i class="fas fa-user-edit"></i></button>
                        <a href="home.php?acao=delet_animais&idDel=<?php echo $show->id_animais;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover da Fila"><i class="fas fa-user-times"></i></a>
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
  