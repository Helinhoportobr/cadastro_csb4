<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-12">
          <div class="col-sm-12">
            <h1>Cadastro Material Carga</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastro Material Carga</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  

                <div class="col-4">
                  <label for="material">Material <h11>*</h11></label>
                  <input id="material" name="material" placeholder="Descrever o material a ser cadastrado" class="form-control input-md" required="" type="text" maxlength="15" oninput="handleInput(event)">
                  </div>
                  
                  
                  <div class="col-4">
                  <label for="datacompra">Data da Compra <h11>*</h11></label>
                  <input type="date" class="form-control date-mask" value="" name="datacompra"  required>
                  </div>
                  
                  <div class="col-4">
                  <div><label for="foto">Foto <h11>*</h11></label></div>
                      <div class="form-control">
                       
                        
                        <input id="files" name="foto" type='file' multiple>
                        
                      </div>
                        
                  </div>

                  <div class="col-8">
                  <label for="localalocado">Local alocado <h11>*</h11></label>  
                  <input id="localalocado" name="localalocado" value=" " placeholder="" class="form-control input-md" required="required" type="text" >
                  </div>
                  
                  <div class="col-4">
                  <label for="valor">Valor R$ <h11>*</h11></label>  
                  <input id="dinheiro" name="valor"  required="" type="text"  class="form-control" onKeyPress="return(MascaraMoeda(this,'.',',',event))">
                  </div>
                  <div class="col-4">
                  <label for="localcompra">Local de Compra<h11>*</h11></label> 
                  <input id="localcompra" name="localcompra" class="form-control input-md" required="" type="text" >
                  </div>
                  
                  <div class="col-4">
                  <label for="prependedtext">telefone Loja <h11>*</h11></label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telloja" name="telloja" class="form-control" placeholder="XX XXXXX-XXXX" required="" maxlength="15" onkeyup="handlePhone(event)">
                  </div>
                  </div>
                  
                  <br>
                  <div class="col-4">
                    <label for="prependedtext">Tipo <h11>*</h11></label>
                    <select required id="tipomaterial" name="tipomaterial" class="form-control">
                    <option value=""></option>
                    <option value="Uso Duradouro">Uso Duradouro</option>
                    <option value="Uso diário">Uso diário</option>
                    <option value="Uso estrutural">Uso estrutural</option>
                    
                    </select>
                  </div>

                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>
                  
                                    
                </div>
                
                </div>
                <!-- /.card-header -->
              
                <div class="card-footer"  style="text-align: center;">
                  <button type="submit" name="botao" class="btn btn-primary">Salvar Cadastro</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                  $material = $_POST['material'];
                  $datacompra = $_POST['datacompra'];
                  $formatP = array("png","jpg","jpeg","JPG","gif");
                  $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                  $localalocado = $_POST['localalocado'];
                  $valor = $_POST['valor'];
                  $localcompra = $_POST['localcompra'];
                  $telloja = $_POST['telloja'];
                  $tipomaterial = $_POST['tipomaterial'];
                  $arquivo = $_POST['arquivo'];

                  if(in_array($extensao, $formatP)){
                    $pasta = "../dist/img/material_carga/";
                    $temporario = $_FILES['foto']['tmp_name'];
                    $novoNome = uniqid().".$extensao";

                    if(move_uploaded_file($temporario, $pasta.$novoNome)){
                        $cadastro = "INSERT INTO material_carga (material,data_compra,foto,local_alocado,valor,localcompra,telloja,tipomaterial,arquivo) VALUES (:material,:datacompra,:foto,:localalocado,:valor,:localcompra,:telloja,:tipomaterial,:arquivo)";

                        try{
                          $result = $conect->prepare($cadastro);
                          $result->bindParam(':material',$material,PDO::PARAM_STR);
                          $result->bindParam(':datacompra',$datacompra,PDO::PARAM_STR);
                          $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                          $result->bindParam(':localalocado',$localalocado,PDO::PARAM_STR);
                          $result->bindParam(':valor',$valor,PDO::PARAM_STR);
                          $result->bindParam(':localcompra',$localcompra,PDO::PARAM_STR);
                          $result->bindParam(':telloja',$telloja,PDO::PARAM_STR);
                          $result->bindParam(':tipomaterial',$tipomaterial,PDO::PARAM_STR);
                          $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5><i class="icon fas fa-check"></i> OK!</h5>
                                    Material cadastrado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 1, ");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Erro Material não inseridos !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1, home.php");
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


                  /*echo $nome."<br>";
                  echo $telefone."<br>";
                  echo $email."<br>";
                  var_dump($_FILES['foto']);*/

                }
              ?>
            </div>
              
</div>
            
            

          </div>
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
        <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Materias cadastrados recentemente </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Material</th>
                      <th>Data Compra</th>
                      <th>Local</th>
                      <th>Valor</th>
                      <th>Foto</th>
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT `id_matcarga`, `material`, `data_compra`, `foto`, `local_alocado`, `valor`, `localcompra`, `telloja`, `tipomaterial`, `data_descarga`, `arquivo` FROM `material_carga` WHERE `arquivo` = 'nao' ORDER BY `id_matcarga` DESC LIMIT 6;";
                      
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
                      <td><?php echo $show->material; ?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_compra));?></td>
                      <td><?php echo $show->local_alocado;?></td>
                      <td><?php echo $show->valor;?></td>
                      <td><img src="../dist/img/material_carga/<?php echo $show->foto; ?>" alt="<?php echo $show->foto; ?>" title="<?php echo $show->foto; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                        <a href="home.php?acao=delet_material_carga&idDel=<?php echo $show->id_matcarga;?>" onclick="return confirm('Deseja remover este material')" class="btn btn-danger" title="Remover Material"><i class="fa fa-trash"></i></a>
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
      </div><!-- /.container-fluid -->
      
    </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  