<!DOCTYPE html>
<head>
  <!-- Bootstrap CSS -->
<link rel="icon" href="imagens/icon/favicon.png">

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="estilo.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
<!-- Mascara de telefone -->

<script type="text/javascript">$("#telefone").mask("(00) 0000-00009");</script>


<script>
$(function(){
  $('#sair').on('click', function(event){
    
    if (!confirm('Pressione "OK" se deseja realmente sair.'))
        event.preventDefault();
  });
});
</script>
</head>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Contatos</h1>
          </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
<?php
  include('../config/conexao.php');
  if(!isset($_GET['id'])){
    header("Location: home.php?acao=cadastro_contato");
    exit();  
  }
  $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);
  //echo $id;
  
  $select = "SELECT * FROM contato WHERE id = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          $idCont = $show->id;
          $nome = $show->nome;
          $telefone = $show->telefone;
          $email = $show->email;
          $categoria = $show->categoria;

          //echo $idCont;
          //echo $nome;
          //echo $telefone;


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
                <h3 class="card-title">Editar Contatos</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--../paginas/method/adicionar_contato.php(ADICIONAR EXECUÇÃO EXTERNA-->
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="card-body">
                <div class="form-group">
                    <label for="nome_contato">Nome</label>
                    <input  class="form-control" id="nome_contato" name="nome_contato" required value="<?php echo $nome;?>">
                  </div>
                  <div class="form-group">
                    <label >Telefone</label>
                    <input name="telefone" class="form-control" placeholder="XX XXXXX-XXXX" id="telefone"  pattern="\([0-9]{2}\)[\s][0-9]{4}-[0-9]{4,5}" value="<?php echo $telefone;?>">
                  </div>
                  <div class="form-group">
                    <label for="email_contato">Endereço de E-mail</label>
                    <input type="email" class="form-control" id="email_contato" name="email_contato" required value="<?php echo $email;?>">
                  </div>
                  <div class="form-group">
                        <label>Categoria</label><select class="form-control" name="categoria_contato" type="text" id="categoria_contato" required>
                          <option selected><?php echo $categoria;?></option>
                          <option>Vidraçaria</option>
                          <option>Serralheiro</option>
                          <option>Chaveiro</option>
                          <option>CFTV/Portão</option>
                          <option>Extintores</option>
                          <option>Eletricista</option>
                          <option>Encanador</option>
                          <option>Caça Vazamentos</option>
                        </select>
                       
                  </div>    
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="upcontato" class="btn btn-primary">Salvar Edição contato</button>
                </div>
              </form>
              
              <?php
                
                if(isset($_POST['upcontato'])) {
                      
                  $nome = $_POST['nome_contato'];
                  $telefone_up = $_POST['telefone'];
                  $email = $_POST['email_contato'];
                  $categoria = $_POST['categoria_contato'];
                    
                      $update = "UPDATE contato SET id=:id,nome=:nome,telefone=:telefone_up,email=:email,categoria=:categoria  WHERE id = $id";
                       
                      try{
                        
                        $result = $conect ->prepare($update);
                        $result->bindParam(':id', $id,PDO::PARAM_INT);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':telefone_up', $telefone_up,PDO::PARAM_STR);
                        $result->bindParam(':email', $email,PDO::PARAM_STR);
                        $result->bindParam(':categoria', $categoria,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;" >
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Contato atualizado com sucesso !
                                  </div>
                                </div>';
                                header("Refresh: 1, ");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Contato não atualizado !
                                    </div>
                                  </div>';
                                  header("Refresh: 5, ?acao=editar_contato&id=$id");

                        

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

             <div class="card">
              <div class="card-header">
                <h3 class="card-title">Dados do Contato</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" style="text-align:center; margin-bottom:55px">
                <img src="../dist/img/user-avatar-contact.webp" alt="avatar.jpg" style="width:200px; border-radius:100%; margin-top:30px">
                
              <h1><?php echo $nome;?></h1>
              <strong><?php echo $telefone;?></strong>
              <p><?php echo $email;?></p>
              <p> Categoria: <?php echo $categoria;?></p>
              </div>
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 