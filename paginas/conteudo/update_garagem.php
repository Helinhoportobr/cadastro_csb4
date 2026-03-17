<!DOCTYPE html>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Garagem</h1>
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
  
  $select = "SELECT * FROM garagem WHERE `arquivo` = 'Nao' AND `id_garagem` = :id";
  
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
                  <label for="postoesp">Permissionário2</label>
                  <select name="id_permiss" class="form-control">
                	          
                     <?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` INNER JOIN garagem ON garagem.id_permiss = permissionarios.id_permissionarios WHERE garagem.id_garagem = $id";
                      foreach ($conn->query($sql) as $row) {?>
                      <option value="<?php print $row['id_permissionarios'];?>"><?php print $row['apt'] . "\t"; print $row['nome'] . "\t";?></option>
                      <?php } ?>
                      <option value="0">Selecione</option>
                     <?php
                     $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' ";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);?><?php
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>                     
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>" ><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>            
                                                         
				          </select>
                 
                  </div>
                  <div class="col-4">
                  <label for="placa">Placa</label>
                  <input id="placa" name="placa" placeholder="HHH-2222" class="form-control input-md"  type="text" maxlength="15" oninput="handleInput(event)" value="<?php echo $placa;?>" >
                  </div>
                  <div class="col-3">
                  <label for="Nome">Modelo</label>  
                  <input id="modelo" name="modelo" placeholder="" class="form-control input-md"  type="text" onkeypress="return ApenasLetras(event,this);" oninput="handleInput(event)" value="<?php echo $modelo;?>">
                  </div>
                  
                  </div>

                  <div class="row">

                  <div class="col-4">
                  <label for="cor">Cor</label>  
                  <input id="cor" name="cor" placeholder="" class="form-control input-md"  type="text"  value="<?php echo $cor;?>">
                  </div>

                  <div class="col-4">
                  <label for="vaga">Vaga</label> 
                  <?php
                    $select = "SELECT * FROM garagem WHERE `arquivo` = 'Nao' AND `id_garagem` = $id";
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
                  <select required="required" id="situacao" name="situacao" class="form-control" type="text">
                    <option selected><?php echo $situacao;?></option>
                    <option value="VAZIA">VAZIA</option>
                      <option value="DEFINITIVA">DEFINITIVA</option>
                      <option value="PROVISORIA">PROVISÓRIA</option>
                      <option value="TEMPORARIA">TEMPORÁRIA</option>
                    </select>
                  </div>

                  <div class="col-4"  hidden>
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

                                     
                      $update = "UPDATE garagem SET id_permiss=:id_permiss,placa=:placa,modelo=:modelo,cor=:cor,situacao=:situacao WHERE id_garagem = $id";
                     
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
                          
                          //atualiza o campo arquivo pra SIM 
                          $sql = "UPDATE `garagem_espera` SET `data_arquivo_fila`= CURRENT_DATE(), `arquivo`='Sim' WHERE id_permiss = $id_permiss";
                          $busca = mysqli_query($conn,$sql);

                          //atualiza as posiçoes da fila 
                          $sql = "UPDATE garagem_espera SET `posicao_fila` = `posicao_fila` - 1 WHERE id_permiss > $id_permiss";
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
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados atualizado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 5, ?acao=relatorio_garagem");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não atualizados !!!
                                    </div>
                                  </div>';
                                 header("Refresh: 5, ?acao=editar_garagem&id=$id");

                        

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
 