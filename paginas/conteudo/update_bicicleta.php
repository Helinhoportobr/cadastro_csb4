  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Bicicleta</h1>
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
            header("Location: home.php");
            exit;
        }
        $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);

        $select = "SELECT * FROM bicicletario INNER JOIN permissionarios ON permissionarios.id_permissionarios = bicicletario.id_permiss WHERE bicicletario.arquivo = 'Nao' AND id_bike=:id";
        try{
            $resultado = $conect->prepare($select);
            $resultado->bindParam(':id',$id, PDO::PARAM_INT);
            $resultado->execute();

            $contar = $resultado->rowCount();
            if($contar>0){
                while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
                    $modelo = $show->modelo;
                    $codigo = $show->codigo_registro;
                    $foto = $show->foto_bike;
                    $dataent = $show->dataentradabike;
                    $idPermiss = $show->id_permiss;
                    $nome = $show->nome;
                    $apt = $show->apt;
                   
                }
            }else{
                echo '<div class="alert alert-danger">Não há dados com o id informado!</div>';
            }
        }catch(PDOException $e){
            echo "<strong>ERRO DE SELECT NO PDO: </strong>".$e->getMessage();
        }
      ?>
        <div class="row">
          <!-- left column -->
          <div class="col-md-6">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Editar Bicicleta</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Permissionário</label>
                    <input type="int" class="form-control" value="<?php echo $apt; echo $nome; ?>" disabled="" />
                    <input type="int" class="form-control" name="idpermiss" id="idpermiss" value="<?php echo $idPermiss; ?>" hidden />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Código Etiqueta</label>
                    <input type="int" class="form-control" name="codEtiqueta" id="codEtiqueta" value="<?php echo $codigo;?>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Modelo</label>
                    <input type="text" class="form-control" name="modelo" id="modelo" value="<?php echo $modelo;?>">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Data Entrada</label>
                    <input type="date" class="form-control" name="dataEntr" id="dataEntr" value="<?php echo $dataent;?>">
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
                        <input type="file" class="custom-file-input" name="foto" id="foto" >
                        <label class="custom-file-label" for="exampleInputFile">Arquivo de imagem</label>
                      </div>
                      
                    </div>
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="upContato" class="btn btn-primary">Cadastrar Bicicleta</button>
                </div>
              </form>
              <?php
                 if(isset($_POST['upContato'])){
                
                $idpermiss = $_POST['idpermiss'];    
                $modelo = $_POST['modelo'];  
                $codigo = $_POST['codEtiqueta'];
                $dataEntr = $_POST['dataEntr'];
                               
                //Verificar se existe imagem para fazer o upload
                if(!empty($_FILES['foto']['name'])) {
                  $formatP = array("png", "jpg", "jpeg", "gif");
                  $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);

                  if (in_array($extensao, $formatP)) {
                    $pasta = "../dist/img/bicicletas/";
                    $temporario = $_FILES['foto']['tmp_name'];
                    $novoNome = uniqid() . ".{$extensao}";

                    if (move_uploaded_file($temporario, $pasta . $novoNome)) {

                    } else {
                      $mensagem = "Erro, não foi possivel fazer o upload do arquivo!";
                    }
                  } else {
                    echo "Formato inválido";
                  }
                }else{
                  $novoNome = $foto;
                }
                

                $update = "UPDATE bicicletario SET id_permiss=:idpermiss,modelo=:modelo,codigo_registro=:codigo,foto_bike=:foto,dataentradabike=:dataEntr WHERE id_bike=$id";
                
                try{
                  $result = $conect->prepare($update);
                  $result->bindParam(':idpermiss',$idpermiss,PDO::PARAM_STR);
                  $result->bindParam(':modelo',$modelo,PDO::PARAM_STR);
                  $result->bindParam(':codigo',$codigo,PDO::PARAM_STR);
                  $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                  $result->bindParam(':dataEntr',$dataEntr,PDO::PARAM_STR);
                  $result->execute();
                  // alerte abaixo
                  $contar = $result->rowCount();
                  if($contar>0){
                    echo '<div class="container">
                                <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                  <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Ok !!!</h5>
                                 Dados da bicicleta atualizados com sucesso.
                                </div>
                                </div>';
                                header("Refresh: 2, ?acao=update_bicicleta&id=$id");

                  }else{
                    echo '<div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                  <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro !!!</h5>
                                  Não foi possível atualizar os dados da bicicleta.
                                </div>';
                                header("Refresh: 2, ?acao=update_bicicleta&id=$id");
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
            
            <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Dados da Bicicleta</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" style="text-align: center; margin-bottom: 98px">
                <img src="../dist/img/bicicletas/<?php echo $foto; ?>" alt="<?php echo $foto; ?>" title="<?php echo $foto; ?>" style="width: 200px;  margin-top: 30px">
                <h1><?php echo $modelo; ?></h1>
                <strong><?php echo $codigo; ?></strong>
                <p> Data de Entrada: <?php echo $dataent; ?></p>
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
  