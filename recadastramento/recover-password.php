<?php
if (!empty($_POST['email'] AND $_POST['codigo'])) {    
  $email = $_POST['email'];
  $codigo = $_POST['codigo'];

  //echo $codigo;

  //echo "chegou email";
  //echo "Email:" . $email;

  include('conexao.php');
  
 $select = "SELECT * FROM usuarios WHERE email_user = :email AND cod_boleto = :codigo";
  
  try{

      $resultado = $conect->prepare($select);
      $resultado->bindValue(':email',$email, PDO::PARAM_STR);
      $resultado->bindValue(':codigo',$codigo, PDO::PARAM_STR);
      $resultado->execute();

      $contar = $resultado->rowCount();
if($contar > 0){

  //echo $email;

}else{
  echo ("<script>
  window.alert('email inexistente, tente novamente')
  window.location.href='forgot-password.php';
</script>");          

}

}catch(PDOException $e){
echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
}
}

include('conexao.php');

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CSB4 | Recover Password</title>

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
    <a href="index.php"><b>CSB4</b><br>recover-password</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Você está apenas um passo de sua nova senha, recupere sua senha agora.</p>

      <form action="update_senha.php " method="post" name="upcontato">
        <div class="input-group mb-3">
          <input type="password" class="form-control" name="password1" placeholder="Senha"  required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password2" class="form-control" placeholder="Confirm senha"  required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <!--inserir estatus aquivado não -->
        <div class="col-3"  hidden>
                          <label for="campo3">email</label>
                          <input type="email" name="email"  value="<?php echo $email;?>">
                          </div>
        <div class="row">
          <div class="col-12">
            <button type="submit" name="upcontato" class="btn btn-primary btn-block">Salvar password</button>
          </div>
          <!-- /.col -->
        </div>         

      </form>

      
      <p class="mt-3 mb-1">
        <a href="index.php">Login</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
