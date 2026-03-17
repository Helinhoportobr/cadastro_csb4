<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard CSB 4</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard CSB4</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
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
              <span class="info-box-icon bg-success elevation-1"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Dependentes</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM depententes WHERE `arquivo` = 'nao'";
                    
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
              <span class="info-box-icon bg-danger elevation-1"><i class="fas fa fa-home"></i></span>

              <div class="info-box-content">
              <span class="info-box-text">Apartamentos</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'vazio'";
                    
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
                     ?>(vazios)/<?php
                     $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'ocupado'";
                     
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
                      ?>(ocupados)
                </span>
               
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box mb-3">
              <span class="info-box-icon btn btn-primary"><i class="fa fa-car"></i></span>
              
              <div class="info-box-content">
                <span class="info-box-text">Carros</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM garagem WHERE `situacao` = 'TEMPORARIA' OR `situacao` = 'DEFINITIVA' OR  `situacao` = 'PROVISORIA'";
                    
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
                <span class="info-box-text">Motos</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM garagem_moto WHERE `situacao` = 'TEMPORARIA' OR `situacao` = 'DEFINITIVA' OR `situacao` = 'PROVISORIA'";
                    
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
        </div>
        <!-- /.row -->

        <!-- Info boxes -->
        <div class="row">
          <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-warning elevation-1">A<i ></i></span>
              
              <div class="info-box-content">
               <span class="info-box-text">Vazios</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'vazio' AND `unidade` LIKE '%A%'";
                    
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
               <span class="info-box-text">Ocupados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'ocupado' AND `unidade` LIKE '%A%'";
                    
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
              <span class="info-box-icon bg-danger elevation-1"><i>B</i></span>

              <div class="info-box-content">
              <span class="info-box-text">Vazios</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'vazio' AND `unidade` LIKE '%B%'";
                    
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
                <span class="info-box-text">Ocupados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'ocupado' AND unidade LIKE '%B%'";
                    
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
              <span class="info-box-icon bg-success elevation-1"><i>C</i></span>

              <div class="info-box-content">
              <span class="info-box-text">Vazios</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'vazio' AND `unidade` LIKE '%C%'";
                    
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
                <span class="info-box-text">Ocupados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'ocupado' AND unidade LIKE '%C%'";
                    
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
              <span class="info-box-icon bg-warning elevation-1"><i>D</i></span>

              <div class="info-box-content">
              <span class="info-box-text">Vazios</span>
               <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'vazio' AND `unidade` LIKE '%D%'";
                    
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
                <span class="info-box-text">Ocupados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM apartamentos WHERE `situacao` = 'ocupado' AND unidade LIKE '%D%'";
                    
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
        </div>
        <!-- /.row -->

        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title">Ultimos Documentos</h5>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <div class="btn-group">
                    <button type="button" class="btn btn-tool dropdown-toggle" data-toggle="dropdown">
                      <i class="fas fa-wrench"></i>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" role="menu">
                      <a href="#" class="dropdown-item">Action</a>
                      <a href="#" class="dropdown-item">Another action</a>
                      <a href="#" class="dropdown-item">Something else here</a>
                      <a class="dropdown-divider"></a>
                      <a href="#" class="dropdown-item">Separated link</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <p class="text-center">
                      <strong>Documentos: 01 Jan - 31 Dez de 2023</strong>
                    </p>

                    <div class="chart">
                      <!-- Sales Chart Canvas -->
                      
                      <table class="table table-striped">
                      <h6><b> Cautelas </b></h6>
                  <thead>
                    <tr>
                    <th>#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Objeto</th>
                      <th>Entregue por</th>
                      <th>Data Devolução</th>
                      <th>situação</th>
                     
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_cautela INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_cautela.id_permiss ORDER BY `id_documentos` DESC limit 1";
                      
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
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->desc_objeto;?></td>
                      <td><?php echo $show->entreg_por;?></td>
                      <td><?php if (!empty($show->data_entrega_doc && $show->data_entrega_doc != '0000-00-00')) 
                        {
                        echo $dob = date_format(date_create($show->data_entrega_doc), "d-m-Y");
                        } else {
                        echo $dob = '';
                        }?></td>
                      <td><?php echo $show->situacao_doc;?></td>
                      
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

                <table class="table table-striped">
                <h6><b> Notificações </b></h6>
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Infração</th>
                      <th>Data</th>
                      <th>Upload</th>
                      <th style='text-align:left'>Download</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_notificacao INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_notificacao.id_permiss ORDER BY `id_documentos_not` DESC LIMIT 1";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                            $teste = $show->arquivo_pdf;
                            $id_doc = $show->id_documentos_not;
                           //echo $id_doc;
                          // echo $teste;
                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->infracao;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_registro));?></td>
                      <td>
                      <div class="height-100 d-flex justify-content-center align-items-center">
                      </div>
                      
                      <div class="form-container">
				                <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
			                </div>
			                
			                <div class="input-group ">
                        <input type="file" class="form-control" id="foto" name="foto"> 
                        <input type="submit" class="btn btn-primary" name="botao_notifi" class="btn-link" value="Save">
                      </div>
			
                      <!--<div Class="input-row">
                        <input type="file" type="file" id="foto" name="foto"/>
                      </div>
                      <input type="submit" class="btn btn-primary" name="botao_notifi" class="btn-link" value="Save">
                      </div>-->
                      
                      
                      </td>
                      <td>
                       
                          <?php
                          
                                include('../config/conexao.php');
                                  if(isset($_POST['botao_notifi'])) {
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/notificacoes/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE documentos_notificacao SET arquivo_pdf=:foto WHERE arquivo_pdf = ' '; AND id_documentos_not = $id_doc";

                                          try{
                                            $result = $conect->prepare($cadastro);
                                            $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                                           
                                            $result->execute();
                                            
                                            $contar = $result->rowCount();
                                            if($contar > 0){
                                              echo '<div class="container">
                                                      <div class="alert alert-success alert-dismissible">
                                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                      <h5><i class="icon fas fa-check"></i> OK!</h5>
                                                      Notificaçao salva com sucesso!
                                                    </div>
                                                  </div>';
                                                  header("Refresh:0 ");
                                            }else{
                                              echo '<div class="container">
                                                        <div class="alert alert-danger alert-dismissible">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                        <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                                        Falha no upload !!!
                                                      </div>
                                                    </div>';
                                                    header("Refresh: 0");
                                            }
                                          }catch (PDOException $e){
                                            echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                                          }
                                        
                                        }
                                                                          }    
                                                                                                        };             
                                ?>
                                </form>
      </div>
    </div>
  </div>
</div>
                        
                        <?php
                      if(($teste) != ''){
                          
                           echo "<div  style='text-align: center;'>";
                           echo "<a href='../dist/img/documentos/notificacoes/$show->arquivo_pdf' class='btn btn-info'><i class='fa fa-download'></i></a>";
                           echo "</div>";
                                  
                          
                        }else{
                            echo "Faça o Download da notificação assinada"."<br>";
                            echo "<b>DOWNLOAD PENDENTE</b>";
                        }?>
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

                <table class="table table-striped"  id='example7' >
                <h6><b> Nada Consta </b></h6>
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>Seçao</th>
                      <th>Data_Saída</th>
                      <th>Upload</th>
                      <th>Downlaod</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM `permissionarios` WHERE `arquivo` = 'Sim' ORDER BY `id_permissionarios` DESC limit 1";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                            $teste = $show->nada_consta;
                                                
                    ?>
                    <tr>
                      <td><?php echo $cont ++;?></td>
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->telcel;?></td>
                      <td><?php echo $show->secaotrab;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datasaida));?></td>
                      
                      <?php  
                      if(($teste) == ''){  

                        echo "<td>
                        <div class='height-100 d-flex justify-content-center align-items-center'>
                        </div>
                        
                        <div class='form-container'>
                          <form action='' method='post'	name='frm-edit' enctype='multipart/form-data' >
                        </div>
                        
                        <div class='input-group '>
                          <input type='file' class='form-control' id='foto' name='foto'> 
                          <input type='submit' class='btn btn-primary' name='botao_notifi' class='btn-link' value='Save'>
                        </div>
                        </td>";
                    }else{
                      echo "<td>
                      </td>";
                    }
                   ?>
                    
                    <?php      
                                  include('../config/conexao.php');
                                  if(isset($_POST['botao_notifi'])) {
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/nada_consta/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE permissionarios SET nada_consta=:foto WHERE arquivo = 'Sim' AND nada_consta = ' '; AND id_permissionarios = $show->id_permissionarios";

                                          try{
                                            $result = $conect->prepare($cadastro);
                                            $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                                           
                                            $result->execute();
                                            
                                            $contar = $result->rowCount();
                                            if($contar > 0){
                                              echo '<div class="container">
                                                      <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                                      Notificaçao salva com sucesso!
                                                    </div>
                                                  </div>';
                                                  header("Refresh:0 ");
                                            }else{
                                              echo '<div class="container">
                                                        <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                        <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                                        Falha no upload !!!
                                                      </div>
                                                    </div>';
                                                    header("Refresh: 0");
                                            }
                                          }catch (PDOException $e){
                                            echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                                          }
                                        
                                        }
                                                                          }    
                                                                                                        };             
                                ?>
                                </form>

                      <td>
                      <?php
                      if(($teste) != ''){
                          
                           echo "<a href='../dist/img/documentos/nada_consta/$show->nada_consta' class='btn btn-info'  Download><i class='fa fa-download'></i>Download</a>";
                        
                                  
                          
                        }else{
                            echo "Faça o Download da notificação assinada"."<br>";
                            echo "<b>DOWNLOAD PENDENTE</b>";
                        }?>
                    </td>
                              
                      <td>
                        <?php
                      if(($teste) != ''){  
                       
                    }else{
                      echo "<div class='btn-group'>
                        <a href='imprimir/nada_consta/imprime_nada_consta.pdf.php?id=$show->id_permissionarios' class='btn btn-primary' title='Imprime Nada Consta'><i class='fa fa-print'></i></a>
                        </div>";

                    }?>
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

                
                  
                  
                    <table class="table table-striped">
                    <h6><b> Termo Responsabilidade </b></h6>
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Dependente</th>
                      <th>Data</th>
                      <th>Upload</th>
                      <th style='text-align:left'>Download</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_termo_resp INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_termo_resp.id_permiss ORDER BY `id_doc_term_resp` DESC limit 1";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                            $teste = $show->arquivo_pdf;
                            $id_doc = $show->id_doc_term_resp;
                            //echo $id_doc;
                            //echo $teste;
                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->depend_term;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_doc));?></td>
                      <td>
                      <div class="height-100 d-flex justify-content-center align-items-center">
                      </div>
                      
                      <div class="form-container">
				                <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
			                </div>
			                
			                <div class="input-group ">
                        <input type="file" class="form-control" id="foto" name="foto"> 
                        <input type="submit" class="btn btn-primary" name="botao_termo" class="btn-link" value="Save">
                      </div>
			
                      <!--<div Class="input-row">
                        <input type="file" type="file" id="foto" name="foto"/>
                      </div>
                      <input type="submit" class="btn btn-primary" name="botao_notifi" class="btn-link" value="Save">
                      </div>-->
                      
                      
                      </td>
                      <td>
                       
                          <?php
                          
                                include('../config/conexao.php');
                                  if(isset($_POST['botao_termo'])) {
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/termo_responsabilidade/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE documentos_termo_resp SET arquivo_pdf=:foto WHERE arquivo_pdf = ' '; AND id_doc_term_resp = $id_doc";

                                          try{
                                            $result = $conect->prepare($cadastro);
                                            $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                                           
                                            $result->execute();
                                            
                                            $contar = $result->rowCount();
                                            if($contar > 0){
                                              echo '<div class="container">
                                                      <div class="alert alert-success alert-dismissible">
                                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                      <h5><i class="icon fas fa-check"></i> OK!</h5>
                                                      Notificaçao salva com sucesso!
                                                    </div>
                                                  </div>';
                                                  header("Refresh:0 ");
                                            }else{
                                              echo '<div class="container">
                                                        <div class="alert alert-danger alert-dismissible">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                        <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                                        Falha no upload !!!
                                                      </div>
                                                    </div>';
                                                    header("Refresh: 0");
                                            }
                                          }catch (PDOException $e){
                                            echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                                          }
                                        
                                        }
                                                                          }    
                                                                                                        };             
                                ?>
                                </form>
      </div>
    </div>
  </div>
</div>
                        
                        <?php
                      if(($teste) != ''){
                          
                           echo "<div  style='text-align: center;'>";
                           echo "<a href='../dist/img/documentos/termo_responsabilidade/$show->arquivo_pdf' class='btn btn-info'><i class='fa fa-download'></i></a>";
                           echo "</div>";
                                  
                          
                        }else{
                            echo "Faça o Download do termo assinado"."<br>";
                            echo "<b>DOWNLOAD PENDENTE</b>";
                        }?>
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
                    <!-- /.chart-responsive -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4">
                    <p class="text-center">
                      <strong>Por tipo de Documentos</strong>
                    </p>

                    <div class="progress-group">
                     Cautelas
                      <span class="float-right"><b>
                      <?php
                    $select = "SELECT COUNT(*) as qnd FROM documentos_cautela";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                            $cautela = $show->qnd;
                            
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                      </b></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-primary" style="width:<?php echo $cautela?>%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->

                    <div class="progress-group">
                      Notificações
                      <span class="float-right"><b>
                      <?php
                    $select = "SELECT COUNT(*) as qnd FROM documentos_notificacao";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                            $notificacao = $show->qnd;
                            
                            
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                      </b></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-danger" style="width:<?php echo $notificacao?>%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      <span class="progress-text">Nada Consta</span>
                      <span class="float-right"><b>
                      <?php
                    $select = "SELECT COUNT(*) as qnd FROM `permissionarios` WHERE `arquivo` = 'Sim'";
                    
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            echo $show->qnd;
                            $nd_consta = $show->qnd;
                            
                            
                          }
                        }
                      }catch(PDOException $e){
                        echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                     }
                     ?>
                      </b></span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-success" style="width:<?php echo $nd_consta?>%"></div>
                      </div>
                    </div>

                    <!-- /.progress-group -->
                    <div class="progress-group">
                      Termo de Responsabilidade
                      <span class="float-right"><b>250</b>/500</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-warning" style="width: 50%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->

                    <div class="progress-group">
                     Requerimento Troca de garagem
                      <span class="float-right"><b>160</b>/200</span>
                      <div class="progress progress-sm">
                        <div class="progress-bar bg-secondary" style="width: 80%"></div>
                      </div>
                    </div>
                    <!-- /.progress-group -->
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- ./card-body -->
              <div class="card-footer">
                <div class="row">
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 17%</span>
                      <h5 class="description-header">$35,210.43</h5>
                      <span class="description-text">TOTAL REVENUE</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-warning"><i class="fas fa-caret-left"></i> 0%</span>
                      <h5 class="description-header">$10,390.90</h5>
                      <span class="description-text">TOTAL COST</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block border-right">
                      <span class="description-percentage text-success"><i class="fas fa-caret-up"></i> 20%</span>
                      <h5 class="description-header">$24,813.53</h5>
                      <span class="description-text">TOTAL PROFIT</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                  <!-- /.col -->
                  <div class="col-sm-3 col-6">
                    <div class="description-block">
                      <span class="description-percentage text-danger"><i class="fas fa-caret-down"></i> 18%</span>
                      <h5 class="description-header">1200</h5>
                      <span class="description-text">GOAL COMPLETIONS</span>
                    </div>
                    <!-- /.description-block -->
                  </div>
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <div class="col-md-8">
            <!-- MAP & BOX PANE -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">US-Visitors Report</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="d-md-flex">
                  <div class="p-1 flex-fill" style="overflow: hidden">
                    <!-- Map will be created here -->
                    <div id="world-map-markers" style="height: 325px; overflow: hidden">
                      <div class="map"></div>
                    </div>
                  </div>
                  <div class="card-pane-right bg-success pt-2 pb-2 pl-4 pr-4">
                    <div class="description-block mb-4">
                      <div class="sparkbar pad" data-color="#fff">90,70,90,70,75,80,70</div>
                      <h5 class="description-header">8390</h5>
                      <span class="description-text">Visits</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="description-block mb-4">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">30%</h5>
                      <span class="description-text">Referrals</span>
                    </div>
                    <!-- /.description-block -->
                    <div class="description-block">
                      <div class="sparkbar pad" data-color="#fff">90,50,90,70,61,83,63</div>
                      <h5 class="description-header">70%</h5>
                      <span class="description-text">Organic</span>
                    </div>
                    <!-- /.description-block -->
                  </div><!-- /.card-pane-right -->
                </div><!-- /.d-md-flex -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div class="row">
              <div class="col-md-6">
                <!-- DIRECT CHAT -->
                <div class="card direct-chat direct-chat-warning">
                  <div class="card-header">
                    <h3 class="card-title">Direct Chat</h3>

                    <div class="card-tools">
                      <span title="3 New Messages" class="badge badge-warning">3</span>
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" title="Contacts" data-widget="chat-pane-toggle">
                        <i class="fas fa-comments"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <!-- Conversations are loaded here -->
                    <div class="direct-chat-messages">
                      <!-- Message. Default to the left -->
                      <div class="direct-chat-msg">
                        <div class="direct-chat-infos clearfix">
                          <span class="direct-chat-name float-left">Alexander Pierce</span>
                          <span class="direct-chat-timestamp float-right">23 Jan 2:00 pm</span>
                        </div>
                        <!-- /.direct-chat-infos -->
                        <img class="direct-chat-img" src="" alt="message user image">
                        <!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                          Is this template really for free? That's unbelievable!
                        </div>
                        <!-- /.direct-chat-text -->
                      </div>
                      <!-- /.direct-chat-msg -->

                      <!-- Message to the right -->
                      <div class="direct-chat-msg right">
                        <div class="direct-chat-infos clearfix">
                          <span class="direct-chat-name float-right">Sarah Bullock</span>
                          <span class="direct-chat-timestamp float-left">23 Jan 2:05 pm</span>
                        </div>
                        <!-- /.direct-chat-infos -->
                        <img class="direct-chat-img" src="" alt="message user image">
                        <!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                          You better believe it!
                        </div>
                        <!-- /.direct-chat-text -->
                      </div>
                      <!-- /.direct-chat-msg -->

                      <!-- Message. Default to the left -->
                      <div class="direct-chat-msg">
                        <div class="direct-chat-infos clearfix">
                          <span class="direct-chat-name float-left">Alexander Pierce</span>
                          <span class="direct-chat-timestamp float-right">23 Jan 5:37 pm</span>
                        </div>
                        <!-- /.direct-chat-infos -->
                        <img class="direct-chat-img" src="" alt="message user image">
                        <!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                          Working with AdminLTE on a great new app! Wanna join?
                        </div>
                        <!-- /.direct-chat-text -->
                      </div>
                      <!-- /.direct-chat-msg -->

                      <!-- Message to the right -->
                      <div class="direct-chat-msg right">
                        <div class="direct-chat-infos clearfix">
                          <span class="direct-chat-name float-right">Sarah Bullock</span>
                          <span class="direct-chat-timestamp float-left">23 Jan 6:10 pm</span>
                        </div>
                        <!-- /.direct-chat-infos -->
                        <img class="direct-chat-img" src="" alt="message user image">
                        <!-- /.direct-chat-img -->
                        <div class="direct-chat-text">
                          I would love to.
                        </div>
                        <!-- /.direct-chat-text -->
                      </div>
                      <!-- /.direct-chat-msg -->

                    </div>
                    <!--/.direct-chat-messages-->

                    <!-- Contacts are loaded here -->
                    <div class="direct-chat-contacts">
                      <ul class="contacts-list">
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                Count Dracula
                                <small class="contacts-list-date float-right">2/28/2015</small>
                              </span>
                              <span class="contacts-list-msg">How have you been? I was...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                Sarah Doe
                                <small class="contacts-list-date float-right">2/23/2015</small>
                              </span>
                              <span class="contacts-list-msg">I will be waiting for...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                Nadia Jolie
                                <small class="contacts-list-date float-right">2/20/2015</small>
                              </span>
                              <span class="contacts-list-msg">I'll call you back at...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                Nora S. Vans
                                <small class="contacts-list-date float-right">2/10/2015</small>
                              </span>
                              <span class="contacts-list-msg">Where is your new...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                John K.
                                <small class="contacts-list-date float-right">1/27/2015</small>
                              </span>
                              <span class="contacts-list-msg">Can I take a look at...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                        <li>
                          <a href="#">
                            <img class="contacts-list-img" src="" alt="User Avatar">

                            <div class="contacts-list-info">
                              <span class="contacts-list-name">
                                Kenneth M.
                                <small class="contacts-list-date float-right">1/4/2015</small>
                              </span>
                              <span class="contacts-list-msg">Never mind I found...</span>
                            </div>
                            <!-- /.contacts-list-info -->
                          </a>
                        </li>
                        <!-- End Contact Item -->
                      </ul>
                      <!-- /.contacts-list -->
                    </div>
                    <!-- /.direct-chat-pane -->
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer">
                    <form action="#" method="post">
                      <div class="input-group">
                        <input type="text" name="message" placeholder="Type Message ..." class="form-control">
                        <span class="input-group-append">
                          <button type="button" class="btn btn-warning">Send</button>
                        </span>
                      </div>
                    </form>
                  </div>
                  <!-- /.card-footer-->
                </div>
                <!--/.direct-chat -->
              </div>
              <!-- /.col -->

              <div class="col-md-6">
                <!-- USERS LIST -->
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Latest Members</h3>

                    <div class="card-tools">
                      <span class="badge badge-danger">8 New Members</span>
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0">
                    <ul class="users-list clearfix">
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Alexander Pierce</a>
                        <span class="users-list-date">Today</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Norman</a>
                        <span class="users-list-date">Yesterday</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Jane</a>
                        <span class="users-list-date">12 Jan</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">John</a>
                        <span class="users-list-date">12 Jan</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Alexander</a>
                        <span class="users-list-date">13 Jan</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Sarah</a>
                        <span class="users-list-date">14 Jan</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Nora</a>
                        <span class="users-list-date">15 Jan</span>
                      </li>
                      <li>
                        <img src="" alt="User Image">
                        <a class="users-list-name" href="#">Nadia</a>
                        <span class="users-list-date">15 Jan</span>
                      </li>
                    </ul>
                    <!-- /.users-list -->
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer text-center">
                    <a href="javascript:">View All Users</a>
                  </div>
                  <!-- /.card-footer -->
                </div>
                <!--/.card -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- TABLE: LATEST ORDERS -->
            <div class="card">
              <div class="card-header border-transparent">
                <h3 class="card-title">Latest Orders</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table m-0">
                    <thead>
                    <tr>
                      <th>Order ID</th>
                      <th>Item</th>
                      <th>Status</th>
                      <th>Popularity</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR9842</a></td>
                      <td>Call of Duty IV</td>
                      <td><span class="badge badge-success">Shipped</span></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR1848</a></td>
                      <td>Samsung Smart TV</td>
                      <td><span class="badge badge-warning">Pending</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR7429</a></td>
                      <td>iPhone 6 Plus</td>
                      <td><span class="badge badge-danger">Delivered</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR7429</a></td>
                      <td>Samsung Smart TV</td>
                      <td><span class="badge badge-info">Processing</span></td>
                      <td>
                        <div class="sparkbar" data-color="#00c0ef" data-height="20">90,80,-90,70,-61,83,63</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR1848</a></td>
                      <td>Samsung Smart TV</td>
                      <td><span class="badge badge-warning">Pending</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f39c12" data-height="20">90,80,-90,70,61,-83,68</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR7429</a></td>
                      <td>iPhone 6 Plus</td>
                      <td><span class="badge badge-danger">Delivered</span></td>
                      <td>
                        <div class="sparkbar" data-color="#f56954" data-height="20">90,-80,90,70,-61,83,63</div>
                      </td>
                    </tr>
                    <tr>
                      <td><a href="pages/examples/invoice.html">OR9842</a></td>
                      <td>Call of Duty IV</td>
                      <td><span class="badge badge-success">Shipped</span></td>
                      <td>
                        <div class="sparkbar" data-color="#00a65a" data-height="20">90,80,90,-70,61,-83,63</div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.table-responsive -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">
                <a href="javascript:void(0)" class="btn btn-sm btn-info float-left">Place New Order</a>
                <a href="javascript:void(0)" class="btn btn-sm btn-secondary float-right">View All Orders</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->

          <div class="col-md-4">
            <!-- Info Boxes Style 2 -->
            <div class="info-box mb-3 bg-warning">
              <span class="info-box-icon"><i class="fas fa-user"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Permissionários Arquivados</span>
                <span class="info-box-number">
                <?php
                     $select = "SELECT COUNT(*) as qnd FROM permissionarios WHERE `arquivo` = 'Sim'";
                     
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
            <div class="info-box mb-3 bg-success">
              <span class="info-box-icon"><i class="fas fa-users"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Dependentes Arquivados</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM depententes WHERE `arquivo` = 'sim'";
                    
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
            <div class="info-box mb-3 bg-danger">
              <span class="info-box-icon"><i class="fas fa-cloud-download-alt"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Downloads</span>
                <span class="info-box-number">114,381</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
            <div class="info-box mb-3 bg-info">
              <span class="info-box-icon"><i class="fa fa-paw"></i></span>

              <div class="info-box-content">
                <span class="info-box-text">Animais de Extimação</span>
                <span class="info-box-number">
                <?php
                    $select = "SELECT COUNT(*) as qnd FROM animais WHERE `arquivo` = 'Nao'";
                    
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

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Browser Usage</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-8">
                    <div class="chart-responsive">
                      <canvas id="pieChart" height="150"></canvas>
                    </div>
                    <!-- ./chart-responsive -->
                  </div>
                  <!-- /.col -->
                  <div class="col-md-4">
                    <ul class="chart-legend clearfix">
                      <li><i class="far fa-circle text-danger"></i> Chrome</li>
                      <li><i class="far fa-circle text-success"></i> IE</li>
                      <li><i class="far fa-circle text-warning"></i> FireFox</li>
                      <li><i class="far fa-circle text-info"></i> Safari</li>
                      <li><i class="far fa-circle text-primary"></i> Opera</li>
                      <li><i class="far fa-circle text-secondary"></i> Navigator</li>
                    </ul>
                  </div>
                  <!-- /.col -->
                </div>
                <!-- /.row -->
              </div>
              <!-- /.card-body -->
              <div class="card-footer p-0">
                <ul class="nav nav-pills flex-column">
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      United States of America
                      <span class="float-right text-danger">
                        <i class="fas fa-arrow-down text-sm"></i>
                        12%</span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      India
                      <span class="float-right text-success">
                        <i class="fas fa-arrow-up text-sm"></i> 4%
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a href="#" class="nav-link">
                      China
                      <span class="float-right text-warning">
                        <i class="fas fa-arrow-left text-sm"></i> 0%
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
              <!-- /.footer -->
            </div>
            <!-- /.card -->

            <!-- PRODUCT LIST -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Recently Added Products</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  <li class="item">
                    <div class="product-img">
                      <img src="" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">Samsung TV
                        <span class="badge badge-warning float-right">$1800</span></a>
                      <span class="product-description">
                        Samsung 32" 1080p 60Hz LED Smart HDTV.
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">Bicycle
                        <span class="badge badge-info float-right">$700</span></a>
                      <span class="product-description">
                        26" Mongoose Dolomite Men's 7-speed, Navy Blue.
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">
                        Xbox One <span class="badge badge-danger float-right">
                        $350
                      </span>
                      </a>
                      <span class="product-description">
                        Xbox One Console Bundle with Halo Master Chief Collection.
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">PlayStation 4
                        <span class="badge badge-success float-right">$399</span></a>
                      <span class="product-description">
                        PlayStation 4 500GB Console (PS4)
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">View All Products</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>