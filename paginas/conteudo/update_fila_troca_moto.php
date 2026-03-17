<!DOCTYPE html>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Fila de Troca Motos</h1>
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
  
  $select = "SELECT * FROM garagem_troca_moto INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_troca_moto.cod_permiss WHERE garagem_troca_moto.arquivo = 'Nao' AND garagem_troca_moto.id_garagem_troca_moto = $id";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

          $dataentr = $show->dataentr_troca_gar;
          $ulti_desist = $show->data_ulti_desist;
          $qnd_desist = $show->qnd_desist;
          $posicao = $show->posicao_fila;
               
          //echo $ulti_desist;

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
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Editar Fila</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--../paginas/method/adicionar_contato.php(ADICIONAR EXECUÇÃO EXTERNA-->
            <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">

              

                <div class="row">
                  <div class="col-3">
                  <label for="postoesp">Permissionário <h11>*</h11></label>
                  <select name="id_permiss" class="form-control">
                  <?php 
                      
                      
                        $result_permissioanario = "SELECT * FROM garagem_troca_moto INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_troca_moto.cod_permiss WHERE garagem_troca_moto.arquivo = 'Nao' AND id_garagem_troca_moto = $id";
                        $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
                        while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
                        
                        <option value="<?php echo $row_perm['id_permissionarios'];?>" selected required=""><?php echo $row_perm['apt']; echo $row_perm['nome']; ?>
                        <?php
                        }
                    ?>
                      
                  <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);?>
                     <option value="0"  id="fakeOption">Escolha o Permissionário</option><?php
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
                      
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>" required=""><?php echo $row_perm['apt']; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>            
                                                         
				          </select>
                 
                  </div>
                  
                  <div class="col-2">
                  <label for="Nome">Data Entrada<h11>*</h11></label>  
                  <input id="dataentr" name="dataentr" placeholder="" class="form-control input-md" required="required" type="date" value="<?php echo $dataentr;?>">
                  </div>
                  
                  <div class="col-2">
                  <label for="cor">Posição Fila<h11>*</h11></label>  
                  <input id="posicaofila" name="posicaofila" placeholder="" class="form-control input-md" required="" type="text"  value="<?php echo $posicao;?>" disabled="">
                  </div>

                  <div class="col-2">
                  <label for="Nome">Data Ultima Desist<h11>*</h11></label>  
                  <input id="datault" name="datault" class="form-control input-md" required="required" type="date" value="<?php echo $ulti_desist; ?>">
                  </div>
                  

                  <div class="col-3">
                  <label for="campo3">Nº Desist</label>
                  <input type="text" name="qnddesist" id="qnddesist" class="form-control input-md" value="<?php echo $qnd_desist;?>">
                  </div>
                  
                 
                </div>
                
                </div>
                <!-- /.card-header -->
              
                <div class="card-footer"  style="text-align: center;">
                  <button type="submit" name="upcontato" class="btn btn-primary">Salvar Edição</button>
                </div>
              </form>
            </div>  
              <?php
                
                if(isset($_POST['upcontato'])) {
                      
                                    
                  $id_permiss = $_POST['id_permiss'];
                  $dataentr = $_POST['dataentr'];
                  $datault = $_POST['datault'];
                  $qnddesit = $_POST['qnddesist'];

                  

                  //echo $id_permiss;
                 // echo $dataentr;
                  //echo $datault;
                  //echo $qnddesit;
                  //echo $ulti_desist;

                                     
                      $update = "UPDATE garagem_troca_moto SET cod_permiss=:id_permiss,dataentr_troca_gar=:dataentr,data_ulti_desist=:datault,qnd_desist=:qnddesit WHERE id_garagem_troca_moto = $id";
                     
                    try{
                        
                        $result = $conect ->prepare($update);
                        
                        $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_INT);
                        $result->bindParam(':dataentr', $dataentr,PDO::PARAM_STR);
                        $result->bindParam(':datault', $datault,PDO::PARAM_STR);
                        $result->bindParam(':qnddesit', $qnddesit,PDO::PARAM_STR);
                                               
                        $result->execute();
                        $contar = $result->rowCount();
                        
                        

                        //fim da atualizacao do campo apt
                          
                      if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados atualizado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 5, ?acao=cadastro_fila_troca_moto");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não atualizados !!!
                                    </div>
                                  </div>';
                                 header("Refresh: 5, ?acao=cadastro_fila_troca_moto&id=$id");

                        

                        }

                        }catch(PDOException $e){
                          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                      }

                    };
                    
            ?>
             
            </div>
          </div> <!-- /.card -->
          <div class="col-md-8">
             <!-- /.card -->

             
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  