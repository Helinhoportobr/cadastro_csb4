  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="card">
              <div class="card-header">
                <h3 class="card-title">Recadastramento</h3>
              </div>
                <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Permissionários</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM permissionarios WHERE `arquivo` = 'nao' AND `nome` != 'PREFEITURA AERONAUTICA DE BRASILIA'";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                </span>
               
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-success elevation-1"><i class="fa fa-check" aria-hidden="true"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Recadastrados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM `permissionarios` WHERE `atualizado` > '2023-11-12' AND `nome` != 'PREFEITURA AERONAUTICA DE BRASILIA' AND `arquivo` = 'Nao'; ";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                </span>
                
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon bg-danger elevation-1"><i class="fa fa-times" aria-hidden="true"></i>
              
              </span>

              <div class="info-box-content">
              <span class="info-box-text"> Não Recadastrados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT  COUNT(*) as qnd FROM `permissionarios` WHERE `atualizado` < '2023-11-12' AND `nome` != 'PREFEITURA AERONAUTICA DE BRASILIA' AND `arquivo` = 'Nao' ";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                </span>
               
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
                      <!-- /.info-box -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
              <!-- /.card-header -->
              <!-- /.col -->
          <div class="col-md-12">
              <br>
            <div class="card">
              <div class="card-header p-1">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#recadastrado" data-toggle="tab">Recadastrados</a></li>
                  <li class="nav-item"><a class="nav-link" href="#naorecdastrados" data-toggle="tab">Não Recadastrado</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                 <div class="active tab-pane" id="recadastrado">
                    <!-- tabela dependentes -->
                    <div class="card-body p-0">
                   
                   <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Apt</th>
                      <th>Nome</th>
                      <th>Atualizado</th>
                      <!--<th style="width: 40px">Ações</th>-->
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM `permissionarios` WHERE `atualizado` > '2023-11-12' AND `nome` != 'PREFEITURA AERONAUTICA DE BRASILIA' AND arquivo = 'Nao'";
                      
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
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->atualizado));?></td>
                      <!--<td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_bicicleta.php?idDel=<?php echo $show->id_bike;?>" onclick="return confirm('Deseja remover a Bicicleta')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
                      </div>
                      </td>-->
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
                <!-- fim tabela recadastrados -->
        </div>
      
              
        
            <div class="tab-pane" id="naorecdastrados">
                    <!-- The timeline -->
                    <!-- tabela dependentes -->
                <div class="card-body p-1">
                    <table id="example3" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                              <th>#</th>
                              <th>Apt</th>
                              <th>Nome</th>
                              <th>Atualizado</th>
                              <!--<th>Ações</th>-->
                            </tr>
                        </thead>
                        <tbody>
                                <?php
                                  
                                  $select = "SELECT * FROM `permissionarios` WHERE `atualizado` < '2023-11-12' AND `nome` != 'PREFEITURA AERONAUTICA DE BRASILIA' AND arquivo = 'Nao' ";
                                  
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
                              <td><?php echo $show->apt;?></td>
                              <td><?php echo $show->nome;?></td>
                              <td><?php echo date('d/m/Y',  strtotime($show->atualizado));?></td>
                              <!--<td>
                              <div class="btn-group">
                                <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                                <a href="method/delet_bicicleta.php?idDel=<?php echo $show->id_bike;?>" onclick="return confirm('Deseja remover a Bicicleta')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
                              </div>
                              </td>-->
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
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
              
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>