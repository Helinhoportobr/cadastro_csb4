<?php

$usuarioLogado = $_SESSION['loginUser'];
  $senhaDoUsuario = base64_encode($_SESSION['senhaUser']);
  $selectUser = "SELECT * FROM usuarios WHERE email_user=:emailUserLogado AND senha_user=:senhaUserLogado";

try{
  $resultadoUser = $conect->prepare($selectUser);
  $resultadoUser->bindParam(':emailUserLogado', $usuarioLogado, PDO::PARAM_STR);
  $resultadoUser->bindParam(':senhaUserLogado', $senhaDoUsuario, PDO::PARAM_STR);
  $resultadoUser->execute();

  $contar = $resultadoUser->rowCount();
  if($contar > 0){
    while($show = $resultadoUser->FETCH(PDO::FETCH_OBJ)){
      $id_user = $show->id_user;
      $foto_user = $show->foto_user;
      $nome_user = $show->nome_user;
      $email_user = $show->email_user;
      $senha_user = $show->senha_user;
      $ativo_user = $show->ativo_user;
      $cargo = $show->cargo_user;

    }
  }else{
    echo '<div class="alert alert-danger"> <strong>Aviso!</strong> Não há dados com de perfil :(</div>';
  }
}catch (PDOException $e){
    echo "ERRO DE LOGIN DO PDO : ".$e->getMessage();
}
?>
 <!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<?php
 $id = $_GET['id'];
 //echo $id;
 

 $select = "SELECT * FROM permissionarios INNER JOIN usuarios  WHERE permissionarios.arquivo = 'Nao' AND permissionarios.id_permissionarios = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          
          $apt = $show->apt;
          $dataentr = $show->dataentr;
          $postoesp = $show->postoesp;
          $nome = $show->nome;
          $cpf = $show->cpf;
          $datanasc = $show->datanasc;
          $sexo = $show->sexo;
          $telcel = $show->telcel;
          $secaotrab = $show->secaotrab;
          $saram = $show->saram;
          $email = $show->email;
          $estadocv = $show->estadocv;
          $filhos = $show->filhos;
          $foto_user = $show->foto_user;
         

      }
    }else{
      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }

  
?>
<!DOCTYPE html>
<html lang="pt-BR">
  
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" 
          content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
         rel="stylesheet">
   <script src=
"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js">
     </script>
   <script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js">
    </script>
</head>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Relatório Geral</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Relatório Geral</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">

                <?php
                  $select = "SELECT * FROM permissionarios INNER JOIN usuarios ON permissionarios.email = usuarios.email_user  WHERE permissionarios.arquivo = 'Nao' AND permissionarios.id_permissionarios = :id";
                      try{

                      $resultado = $conect->prepare($select);
                      $resultado->bindValue(':id',$id, PDO::PARAM_INT);
                      $resultado->execute();
                      $contar = $resultado->rowCount();
                      if($contar>0){

                      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
                      $foto_user = $show->foto_user;

                      }
                      }

                      }catch(PDOException $e){
                           echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                      }?>

              <?php   if(empty($foto_user)){ 
                        //echo "$foto_user";
                        echo "<img class='profile-user-img img-fluid img-circle'
                        src='../dist/img/usuarios/padrao_usuario.jpeg' alt='padrao_usuario' title='padrao_usuario'
                        alt='User profile picture'>";

                      }
                      if($foto_user){
                        echo "<img class='profile-user-img img-fluid img-circle' src='../dist/img/usuarios/$foto_user' alt='$foto_user;' title='$foto_user;' alt='User profile picture'>";
                        //echo "$foto_user";
                      } ?>
              
                </div>
                
                <h3 class="profile-username text-center"><?php echo $nome;?></h3>

                <p class="text-muted text-center">Permissionário - <?php echo $apt;?> (<?php echo $secaotrab;?>)</p>

                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>Dependentes</b> <a class="float-right">
                    <?php

                   $select = "SELECT COUNT(*) as qnd FROM depententes WHERE `arquivo` = 'nao'  AND `id_permiss` = $id";
                    
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
                    </a>
                  </li>
                  <li class="list-group-item">
                    <b>Bicletário</b> <a class="float-right">
                    <?php

                        $select = "SELECT COUNT(*) as qnd FROM bicicletario WHERE `arquivo` = 'nao'  AND `id_permiss` = $id";
                        
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
                    </a>
                  </li>
                  <li class="list-group-item">
                    <b>Veiculos</b> <a class="float-right">
                    <?php

                        $select = "SELECT COUNT(*) as qnd FROM garagem WHERE `arquivo` = 'nao'  AND `id_permiss` = $id";

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
                    </a>
                  </li>
                  <li class="list-group-item">
                    <b>Animais</b> <a class="float-right">
                    
                    <?php

                      $select = "SELECT COUNT(*) as qnd FROM animais WHERE `arquivo` = 'nao'  AND `id_permiss` = $id";

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
                    </a>
                  </li>
                  <li class="list-group-item">
                    <b>Notificações</b> <a class="float-right">
                    
                    <?php

                      $select = "SELECT COUNT(*) as qnd FROM documentos_notificacao WHERE `arquivo` = 'nao'  AND `id_permiss` = $id";

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
                    </a>
                  </li>
                </ul>

                <a href="#" class="btn btn-primary btn-block"><b>Imprimir</b></a>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Sobre</h3>
              </div>
              <!-- /.card-header -->
              <div class="form-group">
              <form aaction="" method="post" enctype="multipart/form-data">
          
        <label for="foto">Selecione o arquivo:</label>
        <input type="file" id="foto" name="foto" />
        <br /><br />
        <div style="text-align:center"> 
        <button type="submit" name="botao" class="btn btn-primary">Upload</button>
                      </div>
    </form>
    <!--recebe os dados do upload -->
    <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                  
                  $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                  $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                  
                  if(in_array($extensao, $formatP)){
                    $pasta = "../dist/img/carta_apresent/";
                    $temporario = $_FILES['foto']['tmp_name'];
                    $novoNome = uniqid().".$extensao";

                    if(move_uploaded_file($temporario, $pasta.$novoNome)){
                        $cadastro = "UPDATE permissionarios SET carta_apresent=:foto WHERE id_permissionarios = $id";

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
                                    Carta de Apresendação salva com sucesso!
                                  </div>
                                </div>';
                                header("Refresh: 5, ");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Falha no upload !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 5, home.php");
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                      
                      }
                                                        }    
                                                                                      };                                /*echo $nome."<br>";
                  echo $telefone."<br>";
                  echo $email."<br>";
                  var_dump($_FILES['foto']);*/

                
              ?>

                <p class="text-muted">
                  Fazer upload da carta de apresentação enviada pela PABR.
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i>Ocorrências</strong>

                <p class="text-muted">Malibu, California</p>

                <hr>

                <strong><i class="fas fa-pencil-alt mr-1"></i> Requerimentos</strong>

                <p class="text-muted">
                  <span class="tag tag-danger">UI Design</span><br>
                  <span class="tag tag-success">Coding</span><br>
                  <span class="tag tag-info">Javascript</span><br>
                  <span class="tag tag-warning">PHP</span><br>
                  <span class="tag tag-primary">Node.js</span>
                </p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Notificações</strong>

                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card">
              <div class="card-header p-1">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Dependentes</a></li>
                  <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">Bicicletário</a></li>
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Veículos</a></li>
                  <li class="nav-item"><a class="nav-link" href="#animais" data-toggle="tab">Animais</a></li>
                  <li class="nav-item"><a class="nav-link" href="#carta" data-toggle="tab">Carta Apresentação</a></li>
                  <li class="nav-item"><a class="nav-link" href="#Documentos" data-toggle="tab">Documentos</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                    <!-- tabela dependentes -->
                    <div class="card-body p-0">
                   
                    <?php
                    $select = "SELECT * FROM depententes INNER JOIN permissionarios ON permissionarios.id_permissionarios = depententes.id_permiss WHERE depententes.arquivo = 'Nao' AND `id_permiss` = $id";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){

                        echo "<table class='table table-striped'  id='example1' class='table table-bordered table-striped'>";
                        echo "<thead>";
                        echo "<tr>";
                          echo "<th style='width: 10px'>#</th>";
                          echo "<th>Nome</th>";
                          echo "<th>Vinculo</th>";
                          echo "<th>Telefone</th>";
                          echo "<th>Nasc</th>";
                          echo "<th>Acões</th>";
                        echo "</tr>";
                      echo "</thead>";
                      echo "<tbody>";     
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                                           
                    ?>
                    <tr>
                      <td><?php echo $cont ++;?></td>
                      <td><?php echo $show->nomedepend;?></td>
                      <td><?php echo $show->vinculo;?></td>
                      <td><?php echo $show->tel_depend;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datanascdepend));?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=update_dependente&id=<?php echo $show->id_dependentes;?>" class="btn btn-success" title="Editar Dependentes"><i class="fas fa-user-edit"></i></a>
                      <a href="../paginas/method/delet_dependente.php?idDel=<?php echo $show->id_dependentes;?>" onclick="return confirm('Deseja realmente remover o Dependentes ?')";  class="btn btn-danger" title="Remover Dependente"><i class="fas fa-user-times"></i></a>
                      </div>
                    </td>
                    </tr>
                    <?php
                     }
                    }else{

                      echo "<div style='text-align: center';> Permissionário não possui dependente cadastrado. </div>";

                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }


                    ?>
                  </tbody>
                </table>
                </div>
                <!-- fim tabela dependentes -->
              </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="timeline">
                    <!-- The timeline -->
                    <!-- tabela dependentes -->
                    <div class="card-body p-0">
                    <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Código</th>
                      <th>Modelo</th>
                      <th>Data de Entrada</th>
                      <th>Foto Bicicleta</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM bicicletario INNER JOIN permissionarios ON permissionarios.id_permissionarios = bicicletario.id_permiss WHERE bicicletario.arquivo = 'Nao' AND `id_permiss` = $id";
                      
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
                      <td><?php echo $show->codigo_registro;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentradabike));?></td>
                      <td><img src="../dist/img/bicicletas/<?php echo $show->foto_bike; ?>" alt="<?php echo $show->foto_bike; ?>" title="<?php echo $show->foto_bike; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>
                      <div class="btn-group">
                        <a href="home.php?acao=update_bicicleta&id=<?php echo $show->id_bike;?>" class="btn btn-success" title="Editar Bicicleta"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_bicicleta.php?idDel=<?php echo $show->id_bike;?>" onclick="return confirm('Deseja remover a Bicicleta')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
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
                <!-- fim tabela dependentes -->

                  </div>
                  <!-- /inicio tabela veiculos -->
                  <div class="tab-pane" id="settings">
                  <h3><b> Carros </b></h3>
                  <div class="card-body p-0">
                    <table  class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Placa</th>
                      <th>Modelo</th>
                      <th>Cor</th>
                      <th>Vaga</th>
                      <th>Situação</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM garagem INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem.id_permiss WHERE garagem.arquivo = 'Nao' AND garagem.id_permiss = $id";
                      
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
                      <td><?php echo $show->placa;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo $show->cor;?></td>
                      <td><?php echo $show->vaga;?></td>
                      <td><?php echo $show->situacao;?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=editar_garagem&id=<?php echo $show->id_garagem;?>" class="btn btn-success" title="Editar Fila"><i class="fas fa-user-edit"></i></button>
                      <a href="method/delet_garagem.php?idDel=<?php echo $show->id_garagem;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
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
                <h3><b> Motos </b></h3>
             
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Placa</th>
                      <th>Modelo</th>
                      <th>Cor</th>
                      <th>Vaga</th>
                      <th>Situação</th>
                      <th style="width: 40px">Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM garagem_moto INNER JOIN permissionarios ON permissionarios.id_permissionarios = garagem_moto.id_permiss WHERE garagem_moto.arquivo = 'Nao' AND garagem_moto.id_permiss = $id";
                      
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
                      <td><?php echo $show->placa;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo $show->cor;?></td>
                      <td><?php echo $show->vaga;?></td>
                      <td><?php echo $show->situacao;?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=editar_garagem_motos&id=<?php echo $show->id_garagem_moto;?>" class="btn btn-success" title="Editar Fila"><i class="fas fa-user-edit"></i></button>
                        <a href="method/delet_garagem.php?idDel=<?php echo $show->id_garagem;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover Bicicleta"><i class="fas fa-user-times"></i></a>
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

                </div>
                  <!-- /.fim tabela veiculos -->

                  <!-- /.inicio tabela animais-->
                  <div class="tab-pane" id="animais">
                  <table id="example"  class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Tipo</th>
                      <th>Sexo</th>
                      <th>Raça</th>
                      <th>Nome</th>
                      <th>Data Entrada</th>
                      
                      <th>Ações</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM animais WHERE arquivo = 'Nao'  AND id_permiss = $id";
                      
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
                        <a href="method/delet_fila_espera.php?idDel=<?php echo $show->id_animais;?>" onclick="return confirm('Deseja remover da Fila')" class="btn btn-danger" title="Remover da Fila"><i class="fas fa-user-times"></i></a>
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
                <!-- /.fim tabela animais -->

                <!--inicio carta -->
                <div class="tab-pane" id="carta">
                <table class="table table-striped">
                  
                    <?php
                      
                      $select = "SELECT * FROM permissionarios WHERE id_permissionarios = '$id' AND `carta_apresent` != ' ';";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                           echo "<thead>";
                            echo "<tr>";
                              echo "<th>Permissioário</th>";
                              echo "<th>Documento</th>";
                              echo "<th style='width: 40px'>Ações</th>";
                            echo "</tr>";
                          echo "</thead>";
                          echo "<tbody>";

                            echo "<tr>";
                            echo  "<td>".$show->nome."</td>";
                            echo '<td><a href="../dist/img/carta_apresent/'.$show->carta_apresent.'" class="btn btn-info" Download>Download</a></td>';
                            echo '<td><a href="method/delet_carta_apresent.php?idDel='. $id.'" class="btn btn-danger" Delete>Delete</a></td>';
                            echo "</tr>";

                    ?>
                                  
                    
                    <?php

                            }

                          }else{

                            echo "<div style='text-align: center';> Permissionário sem carta de apresentação. </div>";

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
                 
                </div>
                <!-- /.fim tabela carta -->

                <!--inicio notificacao -->
                <div class="tab-pane" id="Documentos">

                <h6><b> Notificações </b></h6>
                  <div class="card-body p-0">
                    <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Infração</th>
                      <th>Data</th>
                      <th>Upload</th>
                      <th style='text-align:center'>Download</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_notificacao INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_notificacao.id_permiss WHERE documentos_notificacao.id_permiss = $id and documentos_notificacao.arquivo = 'Nao' ";
                      
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
                      <td><?php echo $show->infracao;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_registro));?></td>
                      <?php if(($teste) == ''){?>
                      <td>                     
                        <div class="height-100 d-flex justify-content-center align-items-center">
                        </div>
                        
                        <div class="form-container">
                          <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
                        </div>
                        
                        <div class="input-group ">
                          <input type="file" class="form-control" id="foto" name="foto"> 
                          <input type="hidden" class="form-control" id="foto" name="id_permiss" value = "<?php echo $id_doc;?>">
                          <input type="submit" class="btn btn-primary" name="botao_notifi" class="btn-link" value="Save">
                        </div>			                    
                      </td>
                      <?php }else{
                      echo "<td>
                      
                      </td>";
                    }
                   ?>
                      <td>                       
                          <?php
                          
                                include('../config/conexao.php');
                                  if(isset($_POST['botao_notifi'])) {

                                    $id_permiss = $_POST['id_permiss'];
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/notificacoes/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE documentos_notificacao SET arquivo_pdf=:foto WHERE id_documentos_not = $id_permiss";

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
                            echo "<div style='text-align: center';> Permissionário não possue notificações. </div>";
                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>

                    
                                       
                  </tbody>
                </table><br>
                <h6><b> Cautelas </b></h6>
                 <table class="table table-striped">
                  <thead>
                    <tr>
                    <th>#</th>
                      <th>Objeto</th>
                      <th>situação</th>
                      <th>Upload</th>
                      <th style='text-align:center'>Download</th>                      
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_cautela INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_cautela.id_permiss WHERE documentos_cautela.id_permiss = $id";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            $teste = $show->arquivo_pdf;
                            $id_docscaut = $show->id_documentos;
                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->desc_objeto;?></td>
                      <td><?php echo $show->situacao_doc;?></td>
                      <?php if(($teste) == ''){?>
                      <td>                     
                        <div class="height-100 d-flex justify-content-center align-items-center">
                        </div>
                        
                        <div class="form-container">
                          <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
                        </div>
                        
                        <div class="input-group ">
                          <input type="file" class="form-control" id="foto" name="foto"> 
                          <input type="hidden" class="form-control" id="foto" name="docs_caultela" value = "<?php echo $id_docscaut;?>">
                          <input type="submit" class="btn btn-primary" name="botao_cautela" class="btn-link" value="Save">
                        </div>			                    
                      </td>
                      <?php }else{
                      echo "<td>
                      
                      </td>";
                    }
                   ?>                     
                    </tr>
                    <?php

                            }

                          }else{
                            echo "<div style='text-align: center';> Permissionário sem cautela de material. </div>";
                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }

                        include('../config/conexao.php');
                        if(isset($_POST['botao_cautela'])) {

                          $docs_id = $_POST['docs_caultela'];
                          
                          $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                          $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                          
                          if(in_array($extensao, $formatP)){
                            $pasta = "../dist/img/documentos/cautela_material/";
                            $temporario = $_FILES['foto']['tmp_name'];
                            $novoNome = uniqid().".$extensao";

                            if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                $cadastro = "UPDATE documentos_cautela SET arquivo_pdf=:foto WHERE id_documentos = $docs_id";

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
                                            cautela salva com sucesso!
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
                                       
                  </tbody>
                 </table>



                </div>
                <!-- /.cautelas -->
                <br>        
                <h6><b> Termo Responsabilidade </b></h6>
                  <div class="card-body p-0">
                    <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Dependente</th>
                      <th>Data</th>
                      <th>Upload</th>
                      <th style='text-align:left'>Download</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM documentos_termo_resp INNER JOIN permissionarios ON permissionarios.id_permissionarios = documentos_termo_resp.id_permiss WHERE documentos_termo_resp.id_permiss = $id and documentos_termo_resp.arquivo = 'Nao' ";
                      
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
                            echo "<div style='text-align: center';> Permissionário não possue termo de respondabilidede menor de idade. </div>";
                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>

                    
                                       
                  </tbody>
                </table>
                <br>
                  <!-- /.tab-temo de responsabilidade -->
                <h6><b> Requerimento troca de Garagem </b></h6>
                  <div class="card-body p-0">
                    <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>De</th>
                      <th>para</th>
                      <th>data_troca</th>
                      <th>Upload</th>
                      <th style='text-align:left'>Download</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM `documentos_troca_garagem` WHERE `id_permiss1` = '$id' OR `id_permiss2` = '$id'";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                            $teste = $show->arquivo_pdf;
                            $id_doc = $show->id_doc_troc_garagem;
                            //echo $id_doc;
                            //echo $teste;
                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->id_permiss1;?></td>
                      <td><?php echo $show->id_permiss2;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_doc_troca));?></td>
                      <td>
                      <div class="height-100 d-flex justify-content-center align-items-center">
                      </div>
                      
                      <div class="form-container">
				                <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
			                </div>
			                
			                <div class="input-group ">
                        <input type="file" class="form-control" id="foto" name="foto"> 
                        <input type="submit" class="btn btn-primary" name="botao_reque" class="btn-link" value="Save">
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
                                  if(isset($_POST['botao_reque'])) {
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/termo_troca_garagem/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE `documentos_troca_garagem` SET arquivo_pdf=:foto WHERE id_doc_troc_garagem = '$id_doc'";

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
                                                      Requerimento salvo com sucesso!
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
                                echo "<a href='../dist/img/documentos/termo_troca_garagem/$show->arquivo_pdf' class='btn btn-info'><i class='fa fa-download'></i></a>";
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
                            echo "<div style='text-align: center';> Permissionário possue requerimento de troca de garagem. </div>";
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
  