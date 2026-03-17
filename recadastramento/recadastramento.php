<?php
ob_start();
session_start();
?>

<!DOCTYPE html>

<head>
<link rel="icon" type="image/x-icon" href="http://localhost/admin/paginas/imprimir/termo_resp/imagens/logo.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CSB4 | Home</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/jquery.maskedinput.js"></script><!--Necessário para as mascaras dos inputs-->
<script type="text/javascript" src="assets/jquery.js"></script><!--Necessário para as mascaras dos inputs-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>

<script>
  //somente letras no campo
  function ApenasLetras(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        } else if (e) {
            var charCode = e.which;
        } else {
            return true;
        }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
            return true;
        else
            return false;
    } catch (err) {
        alert(err.Description);
    }
}

//somente letras maiusculas
function handleInput(e) {
   var ss = e.target.selectionStart;
   var se = e.target.selectionEnd;
   e.target.value = e.target.value.toUpperCase();
   e.target.selectionStart = ss;
   e.target.selectionEnd = se;
}


// validador CPF
function is_cpf (c) {

if((c = c.replace(/[^\d]/g,"")).length != 11)
  return false

if (c == "00000000000")
  return false;

var r;
var s = 0;

for (i=1; i<=9; i++)
  s = s + parseInt(c[i-1]) * (11 - i);

r = (s * 10) % 11;

if ((r == 10) || (r == 11))
  r = 0;

if (r != parseInt(c[9]))
  return false;

s = 0;

for (i = 1; i <= 10; i++)
  s = s + parseInt(c[i-1]) * (12 - i);

r = (s * 10) % 11;

if ((r == 10) || (r == 11))
  r = 0;

if (r != parseInt(c[10]))
  return false;

return true;
}


function fMasc(objeto,mascara) {
obj=objeto
masc=mascara
setTimeout("fMascEx()",1)
}

function fMascEx() {
obj.value=masc(obj.value)
}

//formatar cpf
function mCPF(cpf){
cpf=cpf.replace(/\D/g,"")
cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
cpf=cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
return cpf
}

cpfCheck = function (el) {
  document.getElementById('cpfResponse').innerHTML = is_cpf(el.value)? '<span style="color:green">válido</span>' : '<span style="color:red">inválido</span>';
  if(el.value=='') document.getElementById('cpfResponse').innerHTML = '';
}

//fomatar telefone 
const handlePhone = (event) => {
  let input = event.target
  input.value = phoneMask(input.value)
}

const phoneMask = (value) => {
  if (!value) return ""
  value = value.replace(/\D/g,'')
  value = value.replace(/(\d{2})(\d)/,"($1) $2")
  value = value.replace(/(\d)(\d{4})$/,"$1-$2")
  return value
}

//mascara somente numeros
function somenteNumeros(num) {
        var er = /[^0-9.]/;
        er.lastIndex = 0;
        var campo = num;
        if (er.test(campo.value)) {
          campo.value = "";
        }
    }

//mascara somente letra minuscula  
$(document).on('keyup', function(e) {
    $("#email").val($("#email").val().toLowerCase());
});

$(document).on('keyup', function(e) {
    $("#email2").val($("#email2").val().toLowerCase());
});
</script>
<script>
$(function(){
  $('#sair').on('click', function(event){
    
    if (!confirm('Pressione "OK" se deseja realmente sair.'))
        event.preventDefault();
  });
});


//somente letras e espaços
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
<?php
  include('conexao.php');
  
  //recebe o id do permissionario 
  if(isset($_SESSION['loginUser'])){

    //$id = $_GET['idpermiss'];
    $login = $_SESSION['loginUser'];
  
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
   
    //Editar Permissionarios
    $filtro = $_SESSION['loginUser'] ;
    //$select = "SELECT * FROM permissionarios WHERE id_permissionarios = :id";
    $select = "SELECT * FROM permissionarios INNER JOIN garagem WHERE permissionarios.email = :filtro";
    try{

    $resultado = $conect->prepare($select);
    //$resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->bindValue(':filtro',$filtro, PDO::PARAM_STR);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          $id_permiss = $show->id_permissionarios;
          $apt_up = $show->apt;
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
          $filhos_qtd = $show->filhos;
          
          
          

      }
      //inicio da pagina 
?>
      <div class="container">
<div class="card card-primary" style="margin-top:10px; text-align:center;">
              <div class="card-header">
                <h5 style="text-align: center;">Recadastramento anual de Permissionários<br> Seja bem vindo(a), <?php echo $nome; ?></h5>
                <div style="" class="alert alert-danger alert-dismissible" ><a id='sair' href='sair.php'> <i class="fas fa-sign-out-alt mr-2"></i></i>Sair</a></div>
</div>

<div class="contaniner">
          <!-- left column -->
          
            <!-- general form elements -->
            <div class="card card-primary"  style="margin-top:10px;">
              <div class="card-header">
                <h3 class="card-title">Editar Permissionário</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
            
              <form role="form" action="updade_permissionarios.php" method="post" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-4">
                  <label for="Nome">Apartamento</label>
                  <input  name="aptPermiss" class="form-control input-md" type="text" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);" readonly="readonly" value="<?php echo $apt_up;?>" >
                  </div>

                  <div class="col-4">
                  <label for="date">Data Entrada</label>
                  <input type="date" class="form-control date-mask" name="dataentr" placeholder="Ex.: dd/mm/aaaa" data-mask="00/00/0000" maxlength="10" autocomplete="off" required value="<?php echo $dataentr;?>">
                  </div>
                  
                  <div class="col-4">
                  <label for="postoesp">Posto/Grad/Esp</label>
                  <input id="postoesp" name="postoesp" placeholder="2S QSS SIN" class="form-control input-md" required="" type="text" maxlength="15"  style="text-transform: uppercase;" value="<?php echo $postoesp;?>" >
                  </div>
                  <div class="col-7">
                  <label for="Nome">Nome</label>  
                  <input id="nome" name="nome" placeholder="" class="form-control input-md" required="required" type="text" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);" value="<?php echo $nome;?>">
                  </div>
                  
                  <div class="col-5">
                  <label for="cpf">CPF</label>  
                  <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" onkeyup="cpfCheck(this)" maxlength="18" onkeydown="javascript: fMasc( this, mCPF );" value="<?php echo $cpf;?>">
                  </div>
                  <div class="col-4">
                  <label for="datanasc">Nascimento</label> 
                  <input id="datanasc" name="datanasc" placeholder="DD/MM/AAAA" class="form-control input-md" required type="date" data-mask="00/00/0000" maxlength="10" value="<?php echo $datanasc;?>">
                  </div>
                  <div class="col-4">
                  <label for="radios">Sexo</label>
                  <select required="required" id="sexo" name="sexo" class="form-control">
                    <option selected><?php echo $sexo;?></option>
                      <option value="FEMININO">FEMININO</option>
                      <option value="MASCULINO">MASCULINO</option>
                    </select>
                  </div>

                  <div class="col-4">
                  <label for="prependedtext">Celular</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telcel" name="telcel" class="form-control" placeholder="XX XXXXX-XXXX" required=""  maxlength="15" onkeyup="handlePhone(event)" value="<?php echo $telcel;?>">
                  </div>
                  </div>
                  <div class="col-4">
                  <label for="prependedtext">Unidade</label> 
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-suitcase fa-2x"></i></span>
                  <input id="secaotrab" name="secaotrab" class="form-control" placeholder="Ex:GABAER" type="text"  style="text-transform: uppercase;" onkeypress="return soLetras(event,this);" value="<?php echo $secaotrab;?>">
                  </div>
                  </div>
                  <div class="col-4">
                  <label for="prependedtext">Saram</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-check fa-2x"></i></span>
                  <input id="saram" name="saram" class="form-control" placeholder="Ex:000000-0" type="text" maxlength="13" onkeyup="somenteNumeros(this);" value="<?php echo $saram;?>">
                  </div>
                  </div>
                  <div class="col-4">
                    <label for="prependedtext">Estado Civil</label>
                    <select required id="estadocv" name="estadocv" class="form-control">
                    <option selected><?php echo $estadocv;?></option>
                    <option value="SOLTEIRO(A)">SOLTEIRO(A)</option>
                    <option value="CASADO(A)">CASADO(A)</option>
                    <option value="DIVORCIADO(A)">DIVORCIADO(A)</option>
                    <option value="VIUVO(A)">VIÚVO(A)</option>
                    <option value="SEPARADO(A)">SEPARADO(A)</option>
                    </select>
                  </div>
                  
              
                  <div class="col-8">
                  <label for="prependedtext">Email</label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email" name="email" class="form-control" placeholder="email@email.com" required="" type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<?php echo $email;?>">
                  </div>
                  </div>
                  <br>
                  <div class="col-3">
                  <label for="Filhos">Nº Filhos</label>
                  <input id="filhos_qtd" name="filhos_qtd" class="form-control" type="text" placeholder="Quantos?" onkeyup="somenteNumeros(this);" value="<?php echo $filhos_qtd;?>" required>
                  </div>
 				  <!--inserir estatus aquivado não -->
                  <br><br><br><br>
                  <div class="col-8"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="Nao">
                  </div>
            
                </div>

                 <!-- atualiza a data da ultima atualização -->
                 <div class="col-3"  hidden>
                  <label for="campo3">atualizado em</label>
                  <input type="date" name="atualizado" id="atualizado" value="<?php echo date('Y-m-d');?>">
                  </div>
                  
                  <!-- enviar id do permissionario via post -->
                 <div class="col-3"  hidden>
                  <label for="campo3">data da ultima atualizacao</label>
                  <input type="text"  class="form-control date-mask" name="idPermiss" value="<?php echo $id_permiss ?>">
                  </div>

                  <div class="card-footer"  style="text-align: center; margin-top:10px">
                  <button type="submit" name="upcontato" class="btn btn-primary m-3" id="btn">Salvar Edição Permissionário</button>
                </div>
                
                </div>
                <!-- /.card-header -->
                <?php
      if( count( $_GET ) > 0 ){

              if(isset($_GET['atualizado'])){
                         
                echo "<div class='alert alert-success alert-dismissible fade show' role='alert'>
                 <strong>Dados atualizados com sucesso!</strong><button type='button'  onClick='$(selector).click()' data-toggle='modal' data-target='#category' class='close' data-dismiss='alert' aria-label='Close'>
                 <span aria-hidden='true'>&times;</span>
                 </button>
                 </div>";}

                 if(isset($_GET['naoatualizado'])){
                         
                  echo "<div class='alert alert-danger alert-dismissible fade show' role='alert'>
                    <strong>Sem alteração nos dados!</strong><button type='button'  onClick='$(selector).click()' data-toggle='modal' data-target='#category' class='close' data-dismiss='alert' aria-label='Close'>
                    <span aria-hidden='true'>&times;</span>
                    </button>
                  </div>";}
    }else{

    
     echo "<div class='alert alert-warning' role='alert'>
     Altere os dados necessários!
   </div>";
    
    }
                       
                 

    ?>            
              </form>
            </div>  
                        
         
           <!--fim editar permissionario -->

          <!--inicio cadastro de depententes -->

          <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastrar Dependentes ( repita quantas vezes forem necessarias )</h3>
              </div>
          
          
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  
                  <div class="col-4">
                  <label for="Nome">Nome</label>  
                  <input id="nomedepend" name="nomedepend" value=" " placeholder="" class="form-control input-md" required="required" type="text" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);">
                  </div>
                  
                  <div class="col-4">
                  <label>vinculo</label>
                        <select class="form-control" name="vinculo" type="text" id="categoria_contato" required>
                          <option disabled selected>Selecione</option>
                          <option value="PAI">Pai</option>
                          <option value="MÃE">Mãe</option>
                          <option value="CONJUGÊ">Conjugê</option>
                          <option value="FILHO(A)">Filho(a)</option>
                          <option value="ENTEADO(A)">Enteado(a)</option>
                        </select>
                  </div>
             
                  <div class="col-4">
                    <label for="Nome">Permissionário</label>
                    <select name="id_permiss" class="form-control"  disabled="">
					           
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND id_permissionarios = $id_permiss";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>"><?php echo $row_perm['apt']; echo " - "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                    
                  </div>

                  <div class="col-4">
                  <label for="Nome">Nascimento</label> 
                  <input type="date" class="form-control date-mask" id="datanascdepend" value="" name="datanascdepend" placeholder="Ex.: dd/mm/aaaa" data-mask="00/00/0000" maxlength="10" autocomplete="off" required>
                  </div>
                  
                  
                  <div class="col-4">
                  <label for="radios">Sexo</label>
                  <select required="required" id="sexodepend" name="sexodepend" class="form-control">
                    <option selected>Seleicione</option>
                      <option value="FEMININO">FEMININO</option>
                      <option value="MASCULINO">MASCULINO</option>
                  </select>
                  </div>
                 
                  
                
                  <div class="col-4">
                  <label for="prependedtext">Celular</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telcel" name="telcel"  type="text" class="form-control" placeholder="XX XXXXX-XXXX" required="" maxlength="15" onkeyup="handlePhone(event)">
                  </div>
                  </div>
                  
                  <div class="col-12">
                  <label class="col-md-2 control-label" for="prependedtext">Email</label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email2" name="email_depend" class="form-control" placeholder="email@email.com" type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="" >
                  </div>
                  </div>
                  <br>
                  
                  <div class="col-0"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="Nao">
                  </div>
                  
                  <?php
					
									
				?>
                 
                  
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
                             
                      $nomedepend = $_POST['nomedepend'];
                      $vinculo = $_POST['vinculo'];
                      $datanascdepend = $_POST['datanascdepend'];
                      $sexodepend = $_POST['sexodepend'];
                      $telcel = $_POST['telcel'];
                      $email_depend = $_POST['email_depend'];
                      $arquivo = $_POST['arquivo'];

                      //echo $nomedepend."<br>";
                      //echo $vinculo."<br>";
                      //echo $datanascdepend."<br>";
                     // echo $id_permiss."<br>";
                      //echo $sexodepend."<br>";
                      //echo $telcel."<br>";
                     // echo $email_depend."<br>";
                      //echo $arquivo."<br>";
                                         
                      $cadastro = "INSERT INTO depententes (nomedepend,vinculo,datanascdepend,id_permiss,sexodepend,tel_depend,email_depend,arquivo) VALUES (:nomedepend,:vinculo,:datanascdepend,:id_permiss,:sexodepend,:telcel,:email_depend,:arquivo)";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        
                        $result->bindParam(':nomedepend', $nomedepend,PDO::PARAM_STR);
                        $result->bindParam(':vinculo', $vinculo,PDO::PARAM_STR);
                        $result->bindParam(':datanascdepend', $datanascdepend,PDO::PARAM_STR);
                        $result->bindParam(':id_permiss', $id_permiss,PDO::PARAM_STR);
                        $result->bindParam(':sexodepend', $sexodepend,PDO::PARAM_STR);
                        $result->bindParam(':telcel', $telcel,PDO::PARAM_STR);
                        $result->bindParam(':email_depend', $email_depend,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();                        

                          
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    
                                    Dependente cadastrado com sucesso !!!
                                  </div>
                                </div>';
                      

                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Permissioário não Cadastrado !!!
                                    </div>
                                  </div>';
                                 //echo '<script> location.replace("recadastramento.php"); </script>';


                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dependente não Cadastrado!!!
                                    </div>
                                  </div>';
                                 //echo '<script> location.replace("recadastramento.php"); </script>';
                                  
                      }

                      

                };


                
              ?>
             
                <div style="text-align: center;";> 
                  <b>Listar dependetes cadastrados:</b>
                </div>
              
               <?php
                    $select = "SELECT * FROM depententes INNER JOIN permissionarios ON permissionarios.id_permissionarios = depententes.id_permiss WHERE depententes.arquivo = 'Nao' AND id_permissionarios = $id_permiss ORDER BY datanascdepend DESC";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                        echo "<table class='table-striped' id='example1'>";
                        echo "<thead>";
                        echo "<tr>";
                          echo "<th style='width: 10px'>#</th>";
                          echo "<th>Nome</th>";
                          echo "<th>Vinculo</th>";
                          echo "<th>Telefone</th>";
                          echo "<th>E-mail</th>";
                          echo "<th>Data Nascimento</th>";
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
                      <td><?php echo $show->email_depend;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datanascdepend));?></td>
                      <td>
                      <div class="btn-group">
                        <a href="delet_dependente.php?idDel=<?php echo $show->id_dependentes;?>&idPermiss=<?php echo $show->id_permissionarios;?>" onclick="return confirm('Deseja realmente remover o Dependentes ?')";  class="btn btn-danger" title="Remover Dependente"><i class="fas fa-user-times"></i></a>
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
                </table></div>
               
            
            
            <!--Fim cadastro de dependentes -->
          
              <!-- /.inicio listar bicicletas  -->
              <div class="card card-primary">
                <div class="card-header">
                <h3 class="card-title">Listar Bicicletas <br>(cadastrado pela administração )</h3>
              </div>
              <!-- /.card-header -->
              
               
                
                    <?php
                      
                      $select = "SELECT * FROM bicicletario INNER JOIN permissionarios ON permissionarios.id_permissionarios = bicicletario.id_permiss WHERE bicicletario.arquivo = 'Nao'  AND id_permissionarios = $id_permiss";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                    echo "<table class='table-striped'>";
                    echo "<thead>";
                    echo "<tr>";
                       echo "<th>#</th>";
                       echo "<th>Código</th>";
                       echo "<th>Modelo</th>";
                       echo "<th>Entrada</th>";
                       echo "<th>Foto Bicicleta</th>";                      
                    echo "</tr>";
                    echo "</thead>";
                    echo "<tbody>";  
                   
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                    
                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->codigo_registro;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->dataentradabike));?></td>
                      <td><img src="../dist/img/bicicletas/<?php echo $show->foto_bike; ?>" alt="<?php echo $show->foto_bike; ?>" title="<?php echo $show->foto_bike; ?>" style="width: 100px; margin-top: 5px"></td>
                      <td>                      
                    </tr>
                    <?php

                            }

                          }else{

                            echo "<div style='text-align: center';> Permissionário não possui bicicletas cadastradas. </div>";

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
              
                      </div>
              <!-- /.card-body -->
            
             

             <!-- /.inicio listar bicicletas  -->
              <!-- /.inicio listar garagem -->
              <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Listar Garagem <br> ( cadastrado pela administração ) obrigatório do upload do comprovante de propriedade do veículo</h3>
              </div>
             
                <?php
                      
                      $select = "SELECT * FROM garagem WHERE arquivo = 'Nao' AND id_permiss = $id_permiss ORDER BY vaga + 0 ASC";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          echo "<table class='table-striped'>";
                    echo "<thead>";
                      echo "<tr>";
                      echo "<th>#</th>";
                      echo "<th>Placa</th>";
                      echo "<th>Modelo</th>";
                      echo "<th>cor</th>";
                      echo "<th>vaga</th>";
                      echo "<th>situação</th>";
                      echo "<th>doc update</th>";
                    echo "</tr>";
                  echo "</thead>";
                  echo "<tbody>";
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){   
                            
                            $vaga = $show->vaga;
                            $id_garagem = $show->id_garagem;
                            $doc_car = $show->upload_doc_car;

                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->placa;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo $show->cor;?></td>
                      <td><?php echo $show->vaga;?></td>
                      <td><?php echo $show->situacao;?></td>
                      <?php  
                      if($doc_car == ''){ ?>
                          
                        <td>
                        <div class="height-100 d-flex justify-content-center align-items-center">
                        </div>
                        
                        <div class="form-container">
                          <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
                        </div>
                        
                        <div class="input-group ">                        
                          <input type="file" class="form-control" id="foto" name="foto"> 
                          <input type="hidden" class="form-control" id="foto" name="id_permiss" value = "<?php echo $id_garagem;?>"> 
                          <input type="submit" class="btn btn-primary" name="botao_reque" class="btn-link" value="Save">
                        </div>
                                                                
                        </td>
                    <?php }else{
                      echo "<td>
                      <a href='../dist/img/documentos/doc_carros/$doc_car' class='btn btn-info'  Download><i class='fa fa-download'></i>Download</a>
                      </td>";
                    }
                   ?>
                   <?php      
                                  include('conexao.php');
                                  if(isset($_POST['botao_reque'])) {

                                    $id_garagem = $_POST['id_permiss'];
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/doc_carros/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE garagem SET upload_doc_car=:foto WHERE arquivo = 'Nao' AND id_garagem = $id_garagem";

                                          try{
                                            $result = $conect->prepare($cadastro);
                                            $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                                           
                                            $result->execute();
                                            
                                            $contar = $result->rowCount();
                                            if($contar > 0){
                                              echo '<div class="container">
                                                      <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                                      Documento salvo com sucesso!
                                                    </div>
                                                  </div>';
                                                  
                                                  //header("Refresh:0, home.php?acao=documentos_nadaconsta");
                                                  echo "<meta http-equiv='refresh' content='0; recadastramento.php'>";
                                            }else{
                                              echo '<div class="container">
                                                        <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                                        <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                                        Falha no upload !!!
                                                      </div>
                                                    </div>';
                                                    echo "<meta http-equiv='refresh' content='0;'>";
                                            }
                                          }catch (PDOException $e){
                                            echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                                            mysql_close($link);
                                          }
                                         
                                        }
                                                                          }    
                                                                                                        };             
                                ?>
                                </form>                      
                    </tr>
                    <?php

                            }

                          }else{

                            echo "<div style='text-align: center';> Permissionário não possui veículos cadastrados. </div>";

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
              
                      </div>
            <!-- /.fim listar garagem -->

            <!-- /.inicio listar garagem moto -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Listar Garagem Motos <br>( cadastrado pela administração )</h3>
              </div>
              
                <table class="table-striped"  id="example1">
                
                    <?php
                      
                      $select = "SELECT * FROM garagem_moto WHERE `arquivo` = 'Nao' AND id_permiss = $id_permiss ORDER BY `vaga` + 0 ASC";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          echo "<thead>";
                          echo "<tr>";
                            echo "<th>#</th>";
                            echo "<th>Placa</th>";
                            echo "<th>Modelo</th>";
                            echo "<th>cor</th>";
                            echo "<th>vaga</th>";
                            echo "<th>situação</th>";
                          echo "</tr>";
                        echo "</thead>";
                        echo "<tbody>";
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){                 

                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php echo $show->placa;?></td>
                      <td><?php echo $show->modelo;?></td>
                      <td><?php echo $show->cor;?></td>
                      <td><?php echo $show->vaga;?></td>
                      <td><?php echo $show->situacao;?></td>
                      
                    </tr>
                    <?php

                            }

                          }else{

                            echo "<div style='text-align: center';> Permissionário não possui Motocicletas cadastradas. </div>";

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
 
                      </div>
                      
             <!-- /.fim listar garagem moto -->

             <!-- /.inicio cadastro animais de estimação -->
             <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastro Animais</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                <div class="row">

                <div class="col-4">
                  <label>Tipo</label>
                        <select class="form-control" name="tipo" type="text" id="tipo" required>
                          <option disabled selected>Selecione</option>
                          <option value="Cachorro">Cachorro</option>
                          <option value="Gato">Gato</option>
                          <option value="Hamster">Hamster</option>
                          <option value="Peixe">Peixe</option>
                          <option value="Pássaros">Pássaros</option>
                        </select>
                  </div>

                  <div class="col-4"> 
                  <label>Sexo</label>
                  <select class="form-control" name="sexoanimal" type="text"id="sexoanimal" required>
                          <option disabled selected>Selecione</option>
                          <option value="Macho"> Macho</option>
                          <option value="Femêa">Femêa</option>
                  </select>
                  </div>
                  


                  <div class="col-4">
                  <label for="Nome">Raça<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="raca" value="" name="raca" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);" required>
                  </div>

                  <div class="col-8">
                  <label for="Nome">Nome<h11>*</h11></label> 
                  <input type="text" class="form-control date-mask" id="nome" value="" name="nome"  style="text-transform: uppercase;" onkeypress="return soLetras(event,this);" required>
                  </div>
                  
                  <div class="col-4">
                    <label for="exampleInputEmail1">Permissionário</label>
                    <select name="id_permiss2" class="form-control" readonly="readonly" >
					           
                      <?php
						         $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND email = '$filtro'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>" ><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
                  
                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>

                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="date" name="dataentr" id="dataentr" value="<?php echo $dataentrada = date("Y-m-d");?>">
                  </div>
                  
                  
                </div>
                    </div>
                <!-- /.card-body -->

                <div class="card-footer" style="text-align: center;">
                  <button type="submit" name="botao2" class="btn btn-primary">Salvar Animal</button>
                </div>
              </form>
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao2'])) {
                             
                      $tipo = $_POST['tipo'];
                      $sexoanimal = $_POST['sexoanimal'];
                      $raca = $_POST['raca'];
                      $nome = $_POST['nome'];                     
                      $id_permiss2 = $_POST['id_permiss2'];
                      $arquivo = $_POST['arquivo'];
                      $dataentr = $_POST['dataentr'];
                      

                      //echo $tipo."<br>";
                      //echo $sexoanimal."<br>";
                      //echo $raca."<br>";
                      //echo $nome."<br>";
                      //echo $id_permiss."<br>";
                      //echo $arquivo."<br>";
                      //echo $dataentr."<br>";
                                         
                      $cadastro = "INSERT INTO animais (tipo_animal,sexo,raca_animal,nome_animal,id_permiss,arquivo,data_entrada) VALUES (:tipo,:sexoanimal,:raca,:nome,:id_permiss2,:arquivo,:dataentr)";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        
                        $result->bindParam(':tipo', $tipo,PDO::PARAM_STR);
                        $result->bindParam(':sexoanimal', $sexoanimal,PDO::PARAM_STR);
                        $result->bindParam(':raca', $raca,PDO::PARAM_STR);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':id_permiss2', $id_permiss2,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->bindParam(':dataentr', $dataentr,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();                        

                          
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    Animal cadastrado com sucesso !!!
                                   
                                  </div>
                                </div>';
                                
                                //exit(header("Refresh: 5,"));
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      Animal não Cadastrado !!!
                                    </div>
                                  </div>';
                                  //header("Refresh: 5, ?acao=cadastro_animais");

                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                        Animal não Cadastrado !!!
                                    </div>
                                  </div>';

                                  
                      }

                      

                };


                
              ?>
           
            

  <!--Listar animais do permissioario -->
  <br>   
  <div style="text-align: center;"> 
    <b>Listar animais cadastrados:</b>
  </div>    
        
                    <?php
                      
                      $select = "SELECT * FROM animais WHERE animais.arquivo = 'Nao' AND id_permiss = $id_permiss";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
       
                    echo "<table class='table-striped' id='example4'>";      
                    echo "<thead>";
                    echo "<tr>";
                    echo "<th>#</th>";
                    echo "<th>Tipo</th>";
                    echo "<th>sexo</th>";
                    echo "<th>Raça</th>";
                    echo "<th>Nome</th>";
                    echo "<th>Data Entrada</th>";
                    echo "<th>Ações</th>";
                    echo "</tr>";
                  echo "</thead>";
                  echo "<tbody>";

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
                        <a href="delet_animal.php?idDel=<?php echo $show->id_animais;?>&idPermiss=<?php echo $show->id_permiss;?>" onclick="return confirm('Deseja remover animal?')" class="btn btn-danger" title="Remover da Fila"><i class="fas fa-user-times"></i></a>
                      </div>
                      </td>
                    </tr>
                    <?php

                            }

                          }else{

                            echo "<div style='text-align: center';> Permissionário não possui animal de estimação. </div>";

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
  </div>  
              
           <!-- /.fim cadastro animais de estimação -->
           
            <!-- /.inicio cadastro serviços-->
             <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Serviços Utilizados</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="" method="post" enctype="multipart/form-data">
                <div class="card-body">
                <div class="row">
                    
                  <div class="col-4">
                  <label>Tel Fixa</label>
                        <select class="form-control" name="telefonia" type="text" id="telefonia" required>
                            
                             <?php
						          $result_permissioanario = "SELECT * FROM `servicos` WHERE `arquivo` = 'Nao' AND id_permiss = $id_permiss";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option selected value="<?php echo $row_perm['telefonia'];?>"><?php echo $row_perm['telefonia'];?></option> <?php
						          }
					          ?>
                          
                          <option value="NENHUM">NÃO USO</option>
                           <option value="VIVO">VIVO</option>
                           <option value="CANAÃ">CANAÃ</option>
                          <option value="CLARO/NET">CLARO/NET</option>
                          <option value="OI">OI</option>
                          <option value="TIM">TIM</option>                         
                        </select>
                  </div>

                  <div class="col-4">
                  <label>Internet</label>
                  <select class="form-control" name="internet" type="text" id="internet" required>
                       <?php
						          $result_permissioanario = "SELECT * FROM `servicos` WHERE `arquivo` = 'Nao' AND id_permiss = $id_permiss";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option selected value="<?php echo $row_perm['internet'];?>"><?php echo $row_perm['internet'];?></option> <?php
						          }
					          ?>
                          <option value="NENHUM">NÃO USO</option>
                           <option value="VIVO">VIVO</option>
                           <option value="CANAÃ">CANAÃ</option>
                          <option value="CLARO/NET">CLARO/NET</option>
                          <option value="OI">OI</option>
                          <option value="TIM">TIM</option>
                          <option value="SPEEDNET">SPEEDNET</option>                          
                        </select>
                  </div>

                  <div class="col-4">
                  <label>Ant. Coletiva?</label>
                  <select class="form-control" name="tv_coletiva" type="text" id="tv_coletiva" required>
                      
                       <?php
						          $result_permissioanario = "SELECT * FROM `servicos` WHERE `arquivo` = 'Nao' AND id_permiss = $id_permiss";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option selected value="<?php echo $row_perm['tv_coletiva'];?>"><?php echo $row_perm['tv_coletiva'];?></option> <?php
						          }
					          ?>
                          <option value="SIM">SIM</option>
                          <option value="NÃO">NÃO</option>
                          
                        </select>
                  </div>

                  
                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" id="arquivo" value="Nao">
                  </div>

                  <!--inserir estatus aquivado não -->
                  <div class="col-3"  hidden>
                  <label for="campo3">atualizado em</label>
                  <input type="date" name="atualizado" id="atualizado" value="<?php echo date("Y-m-d");?>">
                  </div>
                  
                  
                </div>
                    </div>
                <!-- /.card-body -->

                <div class="card-footer" style="text-align: center;">
                  <button type="submit" name="botao3" class="btn btn-primary">Salvar</button>
                </div>
              </form>
              <?php
                include('conexao.php');
                if(isset($_POST['botao3'])) {
                    
                    
                           
                      $telefonia = $_POST['telefonia'];
                      $internet = $_POST['internet'];
                      $tv_coletiva = $_POST['tv_coletiva'];
                      $arquivo = $_POST['arquivo'];
                      $atualizado = $_POST['atualizado'];
                      

                      //echo $telefonia."<br>";
                      //echo $internet."<br>";
                      //echo $tv_coletiva."<br>";
                      //echo $arquivo."<br>";
                      //echo $id_permiss."<br>";
                      //echo $atualizado."<br>";
                      
                                         
                      $cadastro = "UPDATE servicos SET telefonia =:telefonia,internet=:internet,tv_coletiva=:tv_coletiva,arquivo=:arquivo,atualizado=:atualizado WHERE apt = '$apt_up' AND `arquivo` = 'Nao'";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        
                        $result->bindParam(':telefonia', $telefonia,PDO::PARAM_STR);
                        $result->bindParam(':internet', $internet,PDO::PARAM_STR);
                        $result->bindParam(':tv_coletiva', $tv_coletiva,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->bindParam(':atualizado', $atualizado,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();                        

                          
                        if($contar > 0){
                         
                          echo '<div class="container" style="text-align: center";>
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center";><i class="icon fas fa-check"></i> OK!</h5>
                                    Serviço cadastrado com sucesso !!!
                                   
                                  </div>
                                </div>';
                                
                                exit(header("Refresh: 1,"));
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                     Serviço não Cadastrado !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1");

                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                        Animal não Cadastrado !!!
                                    </div>
                                  </div>';

                                  
                      }

                      

                };


                
              ?>
            </div>
           </div>

           <!-- /.fim cadastro servicos -->
  
  
</div>

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

  <!-- jQuery -->
  <script src="../plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <!-- Bootstrap 4 -->
  <script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- ChartJS -->
  <script src="../plugins/chart.js/Chart.min.js"></script>
  <!-- Sparkline -->
  <script src="../plugins/sparklines/sparkline.js"></script>
  <!-- JQVMap -->
  <script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
  <!-- daterangepicker -->
  <script src="../plugins/moment/moment.min.js"></script>
  <script src="../plugins/daterangepicker/daterangepicker.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Summernote -->
  <script src="../plugins/summernote/summernote-bs4.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../dist/js/adminlte.js"></script>
  <!-- AdminLTE for demo purposes -->
  
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="../dist/js/pages/dashboard.js"></script>
  
  <!-- DataTables  & Plugins -->
  <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="../plugins/jszip/jszip.min.js"></script>
  <script src="../plugins/pdfmake/pdfmake.min.js"></script>
  <script src="../plugins/pdfmake/vfs_fonts.js"></script>
  <script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  <script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
        
      });
    });
  </script>
  <script>
    $(function () {
      $("#example3").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
       
       
      }).buttons().container().appendTo('#example3_wrapper .col-md-6:eq(0)');
      $('#example4').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
        
      });
    });
  </script>
   <?php
   }
   else{

      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

   }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage();
   }
  }else{
    echo '<script> Refresh: 10, location.replace("index.php"); </script>';
  }
?>