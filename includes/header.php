<?php
  ob_start();
  session_start();
  if(!isset($_SESSION['loginUser'])&&(!isset($_SESSION['senhaUser']))){
    header("Location: ../index.php?acao=negado");
    exit;
  }else{
   // $adm  = $_SESSION["adm"];
}
  include_once('sair.php');
?>
<!-- limite de usuario nos menus 0 nao acessa e o 1 acessa o menu -->
<?php

    if(isset($_SESSION["usuario"]) && is_array($_SESSION["usuario"])){
        

        $adm  = $_SESSION["usuario"][1];
        $nome = $_SESSION["usuario"][0];
		
		//echo $adm;
		//echo $nome;
    }else{
        echo "<script>window.location = 'index.html'</script>";
    }
?>
<!DOCTYPE html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/x-icon" href="http://localhost/admin/paginas/imprimir/termo_resp/imagens/logo.png">  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CSB4 | Home</title>
  
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <link rel="stylesheet" href="../dist/css/estilo.css">
<!-- DataTables -->
<link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- AdminLTE App -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>

<!-- Mascara para os fomularios -->
<script>
//somente numeros
function somenteNumeros(e) {
        var charCode = e.charCode ? e.charCode : e.keyCode;
        // charCode 8 = backspace   
        // charCode 9 = tab
        if (charCode != 8 && charCode != 9) {
            // charCode 48 equivale a 0   
            // charCode 57 equivale a 9
            if (charCode < 48 || charCode > 57) {
                return false;
            }
        }
    }

//telefone
//* Máscaras ER */
function tel(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}
function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}
function mtel(v){
    v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
    v=v.replace(/^(\d{2})(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    v=v.replace(/(\d)(\d{4})$/,"$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
    return v;
}
function id( el ){
	return document.getElementById( el );
}
window.onload = function(){
	id('telefone').onkeyup = function(){
		tel( this, mtel );
	}
}



//somente letras sem espaco
function ApenasLetras(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        } else if (e) {
            var charCode = e.which;
        } else {
            return true;
        }
        if (
            (charCode > 64 && charCode < 91) || 
            (charCode > 96 && charCode < 123) ||
            (charCode > 191 && charCode <= 255) // letras com acentos
        ){
            return true;
        } else {
            return false;
        }
    } catch (err) {
        alert(err.Description);
    }
}



//confirmação pra sair
$(function(){
  $('#sair').on('click', function(event){
    
    if (!confirm('Pressione "OK" se deseja realmente sair.'))
        event.preventDefault();
  });
});

//cpf
function mascara(i){
   
   var v = i.value;
   
   if(isNaN(v[v.length-1])){ // impede entrar outro caractere que não seja número
      i.value = v.substring(0, v.length-1);
      return;
   }
   
   i.setAttribute("maxlength", "14");
   if (v.length == 3 || v.length == 7) i.value += ".";
   if (v.length == 11) i.value += "-";

}

</script>

<!--somente letras e espaços-->
<script language="javascript1.2">
function soLetras(e){
if (document.all){var evt=event.keyCode;}
else{var evt = e.charCode;}
var chr = String.fromCharCode(evt);
// var re = /[A-Za-z]/; // permite apenas de A-Z e de a-z
var re = /[A-Za-z\s-ÃÕÑÁÉÍÓÚÀÜÇãõñáéíóúàçü]/; // permite de A-Z, a-z, espaços,
// hífens e caracteres acentuados. Mais caracteres podem ser adicionados a Lista
return (re.test(chr) || evt<20); // com evt<20 permitimos <ENTER>,<TAB>,<BACKSPACE>
}
</script> 
<!-- Fim Mascara para os fomularios -->

<style>
  #myInput {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 100%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
}
</style> 
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>



</head>

<!--`body` tag options: Apply one or more of the following classes to to the body tag to get the desired effect * sidebar-collapse * sidebar-mini -->

<body class="hold-transition sidebar-mini">
<div class="wrapper">
<?php

include_once('../config/conexao.php');
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
    }
  }else{
    echo '<div class="alert alert-danger"> <strong>Aviso!</strong> Não há dados com de perfil :(</div>';
  }
}catch (PDOException $e){
    echo "ERRO DE LOGIN DO PDO : ".$e->getMessage();
}



?>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
     <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="home.php" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contato</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
          
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#" title="Perfil e Saída">
          <i class="fa fa-user-circle"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          
          <div class="dropdown-divider"></div>
          <a href="home.php?acao=perfil" class="dropdown-item">
            <i class="fas fa-user-edit mr-2"></i> Alterar Perfil
            
          </a>
          <div class="dropdown-divider"></div>
          <a href="?sair" class="dropdown-item">
          <i class="fas fa-sign-out-alt mr-2"></i> Sair
            
          </a>
          
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="home.php" class="brand-link">
      <img src="../dist/img/logo-csb4.png" alt="Admin CSB4" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Admin CSB4</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../dist/img/usuarios/<?php echo $foto_user; ?>" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block"><?php echo $nome_user; ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      
      <nav class="mt-2">
        
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="falsetrue">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
           <li class="nav-item menu-close">
            <?php if($adm): ?><a href="#" class="nav-link active">
              <i class="fa fa-address-card"></i>
              <p>
                Administração
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="home.php?acao=cadastro_usuarios" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Usuários</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=editar_usuarios" class="nav-link active">
                  <i class="fas fa-user-edit"></i>
                  <p>Editar Usuários</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_recadastramento" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Recadastramento</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_servicos" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Serviços</p>
                </a>
              </li>
             </ul>
          </li>
          <!--  -->
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="falsetrue">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
           <li class="nav-item menu-close">
            <?php if($adm): ?><a href="#" class="nav-link active">
              <i class="fa fa-address-card"></i>
              <p>
                Agenda
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
            <?php if($adm): ?><li class="nav-item">
                <a href="home.php?acao=cadastro_contato" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Contatos</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=editar_contato_header" class="nav-link active">
                  <i class="fas fa-user-edit"></i>
                  <p>Editar Contatos</p>
                </a>
              </li><?php endif; ?>
              <li class="nav-item">
                <a href="home.php?acao=relatorio" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
             </ul>
          </li>
           <!--inicio menu permissionarios -->
          <li class="nav-item menu-close">
           <?php if($adm): ?> <a href="#" class="nav-link active">
              <i class="fa fa-address-book"></i>
              <p>
                Permissionários
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=cadastro_permissionario" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Permissionários</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=editar_permissionario_header" class="nav-link active">
                <i class="fas fa-user-edit"></i>
                  <p>Editar Permissionários</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_permissionario" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu permissionarios -->
           <!--inicio menu Dependentes -->
           <li class="nav-item menu-close">
            <?php if($adm): ?><a href="#" class="nav-link active">
              <i class="fa fa-address-book"></i>
              <p>
                Dependentes
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=cadastro_dependente" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Dependentes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=editar_dependentes_header" class="nav-link active">
                <i class="fas fa-user-edit"></i>
                  <p>Editar Dependentes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_dependente" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
            
          </li>
          <!--fim menu dependentes -->

          <!--inicio menu Biclicletario -->
          <li class="nav-item menu-close">
            <a href="#" class="nav-link active">
              <i class="fa fa-bicycle"></i>
              <p>
                Bicicletário
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=cadastro_bicicleta" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Bicicletas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_bicicleta" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu Bicicletario -->

          <!--inicio menu Garagem -->
          <li class="nav-item menu-close">
            <?php if($adm): ?><a href="#" class="nav-link active">
              <i class="fa fa-car"></i>
              <p>
                Garagem Carros
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <?php if($adm): ?><li class="nav-item">
                <a href="home.php?acao=cadastro_fila_espera" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar na Fila</p>
                </a>
              </li><?php endif; ?>
             <?php if($adm): ?> <li class="nav-item">
                <a href="home.php?acao=cadastro_fila_troca" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Fila Troca</p>
                </a>
              </li><?php endif; ?>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_garagem" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu Garagem -->

          <!--inicio menu Garagem Motos-->
          <li class="nav-item menu-close">
           <?php if($adm): ?> <a href="#" class="nav-link active">
              <i class="fa fa-motorcycle"></i>
              <p>
                Garagem Motos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=cadastro_garagem_moto" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar na Fila</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=cadastro_fila_troca_moto" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Fila Troca</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_garagem_motos" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu Garagem Motos-->

          <!--inicio menu animais-->
          <li class="nav-item menu-close">
           <?php if($adm): ?><a href="#" class="nav-link active">
              <i class="fa fa-paw"></i>
              <p>
                Animais
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=cadastro_animais" class="nav-link active">
                  <i class="fa fa-plus"></i>
                  <p>Cadastrar Animal</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=editar_animais" class="nav-link active">
                <i class="fa fa-eraser" aria-hidden="true"></i>
                  <p>Editar Animais</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=relatorio_animais" class="nav-link active">
                  <i class="fa fa-print"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu animais-->

          <!--inicio menu Documentos-->
          <li class="nav-item menu-close">
           <?php if($adm): ?> <a href="#" class="nav-link active">
            <i class="fa fa-print" aria-hidden="true"></i>
              <p>
                Documentos
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=documentos_nadaconsta" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Nada Consta</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=documentos_termoresp" class="nav-link active">
                <i class="fa fa-file" aria-hidden="true"></i>
                  <p>Termo de Responsabilidade(menor)</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=gerar_termotrocagaragem" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Requeriemento Troca de Garagem</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=gerar_cautedamaterial" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Cautela de Material</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?acao=gerar_notificacao" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Notificação Infração(morador)</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu Documentos-->

          <!--inicio menu Controle material-->
          <li class="nav-item menu-close">
           <?php if($adm): ?><a href="#" class="nav-link active">
            <i class="fa fa-th-list" aria-hidden="true"></i>

              <p>
                Controle de Material
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=relatorio_cautela_material" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Cautela de Material (Aberto)</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=relatorio_cautela_material_fechado" class="nav-link active">
                  <i class="fa fa-file"></i>
                  <p>Cautela de Material (Recebido)</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu Controle material-->

          <!--inicio menu material carga-->
          <li class="nav-item menu-close">
          <?php if($adm): ?> <a href="#" class="nav-link active">
            <i class="fa fa-th-list" aria-hidden="true"></i>

              <p>
               Material Carga
                <i class="right fas fa-angle-left"></i>
              </p>
            </a><?php endif; ?>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=material_carga" class="nav-link active">
                <i class="fa fa-file"></i>
                  <p>Material Carga</p>
                </a>
              </li>
            </ul>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?acao=relatorio_material_carga" class="nav-link active">
                <i class="fa fa-file"></i>
                  <p>Relatório</p>
                </a>
              </li>
            </ul>
          </li>
          <!--fim menu material carga-->
              
        </ul>
        
      </nav>
      
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>