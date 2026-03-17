  <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="card">
              <div class="card-header">
                <h3 class="card-title">Serviços</h3>
              </div>
<div class="row">
<div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon bg-warning elevation-1">TV</i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">SIM</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `tv_coletiva` = 'Sim' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">NÃO</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `tv_coletiva` = 'Nao' AND `arquivo` = 'Nao'";
                    
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
            <!-- /.info-box -->
          </div>
          
          <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon elevation-1" style="background-color:#a03a9f; color:white">VIVO</i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'VIVO' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'VIVO' AND `arquivo` = 'Nao';";
                    
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
            <!-- /.info-box -->
          </div>
          <!-- /.col -->   

          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon bg-danger elevation-1" ><font size="3" face="Times">CLARO</font></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'CLARO/NET' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'CLARO/NET' AND `arquivo` = 'Nao'";
                    
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
          <div class="info-box">
              <span class="info-box-icon elevation-1" style="background-color:#00bfff; color:white" ><font size="3" face="Times">CANAÃ</font></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'CANAA' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'CANAA' AND `arquivo` = 'Nao'";
                    
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
          <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon bg-primary elevation-1">TIM<i ></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'TIM' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'TIM' AND `arquivo` = 'Nao';";
                    
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
            <!-- /.info-box -->
          </div>


          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon bg-success elevation-1">OI<i ></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'OI' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'OI' AND `arquivo` = 'Nao';";
                    
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
          </div>
          <!-- /.col -->         

         <!-- /.col -->
         <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon bg-success elevation-1"><font size="2" face="Verdana">SPEEDNET</font></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'OI' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'OI' AND `arquivo` = 'Nao';";
                    
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
          </div>
          <!-- /.col -->

          <!-- fix for small devices only -->
          <div class="clearfix hidden-md-up"></div>

         <!-- /.col -->
         <div class="col-12 col-sm-6 col-md-3">
          <div class="info-box">
              <span class="info-box-icon elevation-1" style="background-color:black; color:white"><font size="2" >NENHUM</font></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">FIXO</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `telefonia` = 'NENHUM' AND `arquivo` = 'Nao'";
                    
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
               <span class="info-box-text">INTERNET</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM servicos WHERE `internet` = 'OUTROS' AND `arquivo` = 'Nao';";
                    
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
          </div>
          <!-- /.col -->
                      <!-- /.info-box -->
          </div>


        </div>
                    </div>
        <!-- /.row -->
              <!-- /.card-header -->





          

         

              <!-- /.col -->
          <div class="col-md-12">
              <br>
            <div class="card">
              <div class="card-header p-1">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#geral" data-toggle="tab">Geral</a></li>
                  <li class="nav-item"><a class="nav-link" href="#vivo" data-toggle="tab">FIXO/INTERNET VIVO</a></li>
                  <li class="nav-item"><a class="nav-link" href="#claro" data-toggle="tab">FIXO/INTERNET CLARO</a></li>
                  <li class="nav-item"><a class="nav-link" href="#canaa" data-toggle="tab">FIXO/INTERNET CANAÃ</a></li>
                  <li class="nav-item"><a class="nav-link" href="#oi" data-toggle="tab">FIXO/INTERNET OI</a></li>
                  <li class="nav-item"><a class="nav-link" href="#speednet" data-toggle="tab">INTERNET SPEEDNET</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                 <div class="active tab-pane" id="geral">
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
                
        </div>
      <!-- fim tabela recadastrados -->
              
      <!-- inicio tabela vivo -->
      
            <div class="tab-pane" id="vivo">
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
                </div>
                <!-- fim tabela vivo -->


                <!-- inicio tabela claro -->      
                <div class="tab-pane" id="claro">
                    claro
                </div>              
                <!-- fim tabela claro -->

                <!-- inicio tabela canaa -->      
                <div class="tab-pane" id="canaa">
                    canaa
                </div>              
                <!-- fim tabela canaa -->

                <!-- inicio tabela oi -->      
                <div class="tab-pane" id="oi">
                oi
                </div>              
                <!-- fim tabela oi-->

                <!-- inicio tabela speednet -->      
                <div class="tab-pane" id="speednet">
                speednet
                </div>              
                <!-- fim tabela speednet-->

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