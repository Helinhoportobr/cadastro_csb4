<!DOCTYPE html>
<html lang="pt_br">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CSB4 | Cadastro de Usuários</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="cad_user.php" style="font-size: 25px"><b>Registro Permissionários - CSB4</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Cadastre todos os dados para ter acesso ao Sistema</p>

      <form action="" method="post" enctype="multipart/form-data">
      <div class="form-group">
      
               
      <div class="input-group mb-3">
          <input type="text" name="nome" class="form-control" placeholder="Digite seu Nome...">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fa fa-user-circle"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <select name="cargo" class="form-control" >
					            <option>Permissionario</option>
                      		          
				  </select>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Digite seu E-mail...">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        
        <div class="input-group mb-3">
          <input type="password" name="senha" class="form-control" placeholder="Digite sua Senha...">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>

        <input type="hidden" name="ativo" class="form-control" value='S'>

        <div class="row">
          <div class="col-8">
            
          </div>
          <!-- /.col -->
          <div class="col-12" style="margin-bottom: 25px">
            <button type="submit" name="botao" class="btn btn-primary btn-block">Finalizar Cadastro</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                  $nome = $_POST['nome'];
                  $email = $_POST['email'];
                  $senha = base64_encode($_POST['senha']);
                  $cargo = $_POST['cargo'];
                  $ativo = $_POST['ativo'];

                  //seleciona o email dos permissionarios
                  $sql = "SELECT `email` FROM permissionarios WHERE `email` = '$email';";
                  $result = mysqli_query($conn, $sql);
                  $row = $result->fetch_assoc();
        
                  
                    //se o email existir ele faz o cadastro do usuario no login.              
                    if($row > 0){
                        $cadastro = "INSERT INTO usuarios (nome_user,email_user,senha_user,cargo_user,ativo_user) VALUES (:nome,:email,:senha,:cargo,:ativo)";

                        try{
                          $result = $conect->prepare($cadastro);
                          $result->bindParam(':nome',$nome,PDO::PARAM_STR);
                          $result->bindParam(':email',$email,PDO::PARAM_STR);
                          $result->bindParam(':senha',$senha,PDO::PARAM_STR);
                          $result->bindParam(':cargo',$cargo,PDO::PARAM_STR);
                          $result->bindParam(':ativo',$ativo,PDO::PARAM_STR);
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados inseridos com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 1, index.php");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não inseridos !!!
                                      </div>
                                  </div>';
                                 
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                    }else{
                      echo "Erro, não foi possível fazer o cadastro não permissionário!";
                      header("Refresh: 1, index.php");
                    }
               

                }
              ?>
     
      <!-- /.social-auth-links -->

      
      <p style="text-align: center;">
        <a href="index.php" class="text-center">Voltar para o Login!</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

</body>
</html>