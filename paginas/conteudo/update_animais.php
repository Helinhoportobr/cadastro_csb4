  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Atualizar Animal de extimação</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <?php
  include('../config/conexao.php');
  if(!isset($_GET['id'])){
    header("Location: home.php?acao=cadastro_permissionario");
    exit();  
  }
  $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);
  
  $select = "SELECT * FROM animais WHERE arquivo = 'Nao' AND id_animais = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          $tipo = $show->tipo_animal;
          $nomeaimal = $show->nome_animal;
          $raca = $show->raca_animal;
          $sexo = $show->sexo;
          $posicao = $show->tipo_animal;
          
          

          
      }

    }else{
      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }
?>
        <div class="row">
          <!-- left column -->
          <div class="col-md-4">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Atualizar Animal de extimação</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">

                <div class="form-group">
                
                <div class="form-group">
                  <label>Tipo</label>
                        <select class="form-control" name="tipo" type="text" id="tipo" required>
                          <option selected value="<?php echo $tipo;?>"><?php echo $tipo;?></option>
                          <option value="Cachorro">Cachorro</option>
                          <option value="Gato">Gato</option>
                          <option value="Hamster">Hamster</option>
                          <option value="Peixe">Peixe</option>
                          <option value="Pássaros">Pássaros</option>
                        </select>
                  </div>

                  <label>Sexo</label>
                        <select class="form-control" name="sexo" type="text" id="sexo" required>
                          <option ><?php echo $sexo;?></option>
                          <option value="Macho">Macho</option>
                          <option value="Femea">Femêa</option>
                        </select>
                  </div>


                  <div class="form-group">
                  <label for="Nome">Raça<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="raca" name="raca" value="<?php echo $raca;?>" required>
                  </div>

                  <div class="form-group">
                  <label for="Nome">Nome<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="nomeanimal" value="<?php echo $nomeaimal;?>" name="nomeanimal" required>
                  </div>
                  
                <div class="form-group">
                    <label for="exampleInputEmail1">Permissionário</label>
                   <?php
                    $select = "SELECT * FROM animais INNER JOIN permissionarios ON permissionarios.id_permissionarios = animais.id_permiss WHERE animais.arquivo = 'Nao' AND `id_animais` =  $id";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                
                    ?>
                                       
                     
                    <input id="id_permiss" name="id_permiss"  type="text" class="form-control" value="<?php echo $show->nome;?>"  disabled=""> 
                    <?php
                  }
                    }else{


                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }
                    ?>
				         
                </div>
                  
               </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="botao" class="btn btn-primary">Atualizar Animal</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {

                  
                  $tipo = $_POST['tipo'];
                  $sexo = $_POST['sexo'];
                  $raca = $_POST['raca'];
                  $nomeanimal = $_POST['nomeanimal'];
                  
                  //echo $tipo;
                  //echo $sexo;
                  //echo $raca;
                  //echo $nomeanimal;
                  
                 
                  
                  
                                 
                        $cadastro = "UPDATE animais SET tipo_animal=:tipo,sexo=:sexo,raca_animal=:raca,nome_animal=:nomeanimal  WHERE id_animais = $id";

                        try{
                          $result = $conect->prepare($cadastro);

                          
                          $result->bindParam(':tipo',$tipo,PDO::PARAM_STR);
                          $result->bindParam(':sexo',$sexo,PDO::PARAM_STR);
                          $result->bindParam(':raca',$raca,PDO::PARAM_STR);
                          $result->bindParam(':nomeanimal',$nomeanimal,PDO::PARAM_STR);
                          
                          
                                                                         
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados alterados com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=update_animais&id=$id");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não alterados !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 2, ?acao=update_animais&id=$id");
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                    
                 


                  /*echo $nome."<br>";
                  echo $telefone."<br>";
                  echo $email."<br>";
                  var_dump($_FILES['foto']);*/

                }
              ?>
            </div>
</div>
            
            <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Alterando este registro</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <table class="table table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Tipo</th>
                      <th>sexo</th>
                      <th>Raça</th>
                      <th>Nome</th>
                      <th>Permissioário</th>
                      <th>Data Entrada</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM animais WHERE arquivo = 'Nao' AND id_animais = $id ";
                      
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
                          
                        
                      }?></td>
                      <td><?php
                      
                      if (!empty($show->data_entrada && $show->data_entrada != '0000-00-00')) 
                        {
                                $data_entrada = date_format(date_create($show->data_entrada), "d/m/Y");
                        } else {
                                $data_entrada = '';
                        }
                      
                      
                      echo $data_entrada;?></td>
                      
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
  