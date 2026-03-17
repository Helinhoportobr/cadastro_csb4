<?php
 SESSION_start();
 
?>
 <!DOCTYPE html>
<html lang="pt_br">
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CSB4 | Login</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">

<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>Recadastramento Permissionários - CSB4</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Faça o Login para dar início a sessão</p>

      <form action="" method="post">
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Digite seu Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="senha" placeholder="Digite sua senha">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Relembre-me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-12" style="margin-bottom: 5px">
            <button type="submit" name="login" class="btn btn-primary btn-block">Acessar Sistema</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
      <?php
      include_once('conexao.php');
      //Método de acesso a ação negada
      if(isset($_GET['acao'])){
        $acao = $_GET['acao'];
        if($acao == 'negado'){
          echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Erro ao Acessar o sistema!</strong> Efetue o login </div>';
          header("Refresh: 5, index.php");
        }else if($acao == 'sair'){
          echo '<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert">×</button>
          <strong>Você saiu do Sisdema de Admistração da CSB4!</strong> Esperamos que você volte </div>';
          header("Refresh: 5, index.php");
        }
      }
      
      //Criação da seção de login
      if(isset($_POST['login'])){
        $login = filter_input(INPUT_POST,'email', FILTER_DEFAULT);
        $senha = base64_encode(filter_input(INPUT_POST,'senha', FILTER_DEFAULT));
        $select = "SELECT * FROM usuarios WHERE email_user=:emailLogin AND senha_user=:senhaLogin AND ativo_user='Sim' AND cargo_user != 'Portaria' AND cargo_user != 'Limpeza' ";

        try{
          $resultLogin = $conect->prepare($select);
          $resultLogin->bindParam(':emailLogin',$login, PDO::PARAM_STR);
          $resultLogin->bindParam(':senhaLogin',$senha, PDO::PARAM_STR);
          
          $resultLogin->execute();

          $verificar = $resultLogin->rowCount();
          if($verificar>0){
                      
            $login = $_POST['email'];
            $senha = $_POST['senha'];
                        
            //CRIAR SESSÂO:
            $_SESSION['loginUser'] = $login;
            $_SESSION['senhaUser'] = $senha;
           
            //echo $_SESSION['loginUser'];
            //echo $_SESSION['senhaUser'];

                        echo '<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Logado com sucesso!</strong> Você será redirecionado para a dashboard </div>';

            $sql = "SELECT `id_permissionarios` FROM permissionarios WHERE `email` = '$login'";

            $result = mysqli_query($conn, $sql);
            $row = $result->fetch_assoc();
            $idpermissionario = $row['id_permissionarios'];


            //header("location: recadastramento.php?idpermiss=$idpermissionario");
            header("location: recadastramento.php");
                                
          }else{

            unset ($_SESSION['login']);
            unset ($_SESSION['senha']);

            echo '<div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Erro!</strong> login ou senha incorretos, digite outro login ou 
            faça o cadastro se ainda não tiver </div>';
            header("Refresh: 7, index.php");
            
          }
               

        }catch (PDOException $e){
          echo "ERRO DE LOGIN DO PDO : ".$e->getMessage();
        }
        
      }
      
      ?>

       
<!-- Modal inicio-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel" style="color:blue;">Atenção Permissionário</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Clique em "Registrar novo usuário", e utilize o email de cadastro na Administração o qual vc recebe o boleto.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
		
		<?php
			$situacao_usuario = "pendente";
			if($situacao_usuario == "pendente"){ ?>
				<script>
					$(document).ready(function(){
						$('#myModal').modal('show');
					});
				</script>
			<?php } ?>
      <!-- Fiim Modal -->


      
      <!-- /.social-auth-links -->


      <p class="mb-1">
        <a href="forgot-password.php">resertar password</a>
      <p class="mb-0">
        <a href="cad_user_recadastr.php" class="text-center">Registrar novo usuário</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>


</body>
</html>
