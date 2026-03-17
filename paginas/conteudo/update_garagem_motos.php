<!DOCTYPE html>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Garagem Motos</h1>
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
  
  $select = "SELECT * FROM garagem_moto WHERE `arquivo` = 'Nao' AND `id_garagem_moto` = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          
          
          $placa = $show->placa;
          $modelo = $show->modelo;
          $cor = $show->cor;
          $vaga = $show->vaga;
          $situacao = $show->situacao;
          $idPermiss = $show->id_permiss;
          

          
          

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
                  <div class="col-5">
                  <label for="postoesp">Permissionário55</label>
                  <select name="id_permiss" class="form-control">
                  <?php 
                      
                      
                        $result_permissioanario = "SELECT * FROM permissionarios WHERE arquivo = 'Nao' ORDER BY apt + 1 DESC";
                        $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
                        while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
                        
                        <option value="<?php echo $row_perm['id_permissionarios'];?>" selected required=""><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?>
                        <?php
                        }
                    ?>
                      
                  <?php
						          $result_permissioanario = "SELECT * FROM garagem_espera_motos INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_espera_motos.id_permiss WHERE garagem_espera_motos.arquivo = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);?>
                     <option value="0"  id="fakeOption">Escolha o Permissionário</option><?php
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
                      
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>" required=""><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>            
                                                         
				          </select>
                 
                  </div>
                  <div class="col-3">
                  <label for="placa">Placa</label>
                  <input id="placa" name="placa" placeholder="HHH-2222" class="form-control input-md" required="" type="text" maxlength="15" oninput="handleInput(event)" value="<?php echo $placa;?>" >
                  </div>
                  <div class="col-4">
                  <label for="Nome">Modelo</label>  
                  <input id="modelo" name="modelo" placeholder="" class="form-control input-md" required="required" type="text" onkeypress="return ApenasLetras(event,this);" oninput="handleInput(event)" value="<?php echo $modelo;?>">
                  </div>
                  </div>
                  
                  <div class="row">
                  <div class="col-4">
                  <label for="cor">Cor</label>  
                  <input id="cor" name="cor" placeholder="" class="form-control input-md" required="" type="text"  value="<?php echo $cor;?>">
                  </div>
                  <div class="col-4">
                  <label for="vaga">Vaga</label> 
                  <?php
                    $select = "SELECT * FROM garagem_moto WHERE `arquivo` = 'Nao' AND `id_garagem_moto` = $id";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                
                    ?>
                                       
                     
                    <input id="vaga" name="vaga"  type="text" class="form-control" value="<?php echo $show->vaga;?>" disabled=""> 
                    <?php
                  }
                    }else{


                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }
                    ?>
                  </div>
                  <div class="col-4">
                  <label for="radios">situação</label>
                  <select required="required" id="situacao" name="situacao" class="form-control">
                    <option selected><?php echo $situacao;?></option>
                    <option value="VAZIA">VAZIA</option>
                      <option value="DEFINITIVA">DEFINITIVA</option>
                      <option value="PROVISORIA">PROVISÓRIA</option>
                      <option value="TEMPORARIA">TEMPORÁRIA</option>
                    </select>
                  </div>

                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
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
                  $placa = $_POST['placa'];
                  $modelo = $_POST['modelo'];
                  $cor = $_POST['cor'];
                  $situacao = $_POST['situacao'];
                  

                  //echo $id_permiss;
                  //echo $placa;
                  //echo $modelo;
                  // echo $cor;
                  //echo $situacao;

                                     
                      $update = "UPDATE garagem_moto SET id_permiss=:id_permiss,placa=:placa,modelo=:modelo,cor=:cor,situacao=:situacao WHERE id_garagem_moto = $id";
                     
                    try{
                        
                        $result = $conect ->prepare($update);
                        
                        $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_INT);
                        $result->bindParam(':placa', $placa,PDO::PARAM_STR);
                        $result->bindParam(':modelo', $modelo,PDO::PARAM_STR);
                        $result->bindParam(':cor', $cor,PDO::PARAM_STR);
                        $result->bindParam(':situacao', $situacao,PDO::PARAM_STR);
                        
                        $result->execute();
                        $contar = $result->rowCount();
                        
                        //verifica se o permissionario é diferente de 0 (variavel $id_permiss), ai faz um delete na fila de espera da garagem)
                        if ($id_permiss != 0){
                          //echo $id_permiss . 'feito';
                          $sql = "UPDATE `garagem_moto` SET `data_entrada`= CURRENT_DATE() WHERE id_permiss = $id_permiss";
                          $busca = mysqli_query($conn,$sql);


                          //insere data do cadastro na vaga
                          $sql = "UPDATE `garagem_espera_motos` SET `data_arquivo_fila`= CURRENT_DATE(), `arquivo`='Sim' WHERE id_permiss = $id_permiss";
                          $busca = mysqli_query($conn,$sql);
                          
                          //atualiza o campo arquivo pra SIM 
                          $sql = "UPDATE `garagem_espera_motos` SET `data_arquivo_fila`= CURRENT_DATE(), `arquivo`='Sim' WHERE id_permiss = $id_permiss";
                          $busca = mysqli_query($conn,$sql);

                          //atualiza as posiçoes da fila 
                          $sql = "UPDATE garagem_espera_motos SET `posicao_fila` = `posicao_fila` - 1 WHERE id_permiss > $id_permiss";
                          $busca = mysqli_query($conn,$sql);
                         
                        }else{
                          echo '<div class="container">
                          <div class="alert alert-danger alert-dismissible">
                          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                          <h5><i class="icon fas fa-check"></i> Erro!</h5>
                          Dados não atualizados !!!
                        </div>
                      </div>';

                        }

                        //fim da atualizacao do campo apt
                          
                      if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados atualizado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=editar_garagem_motos&id=$id");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não atualizados !!!
                                    </div>
                                  </div>';
                                 header("Refresh: 2, ?acao=editar_garagem&id=$id");

                        

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
 