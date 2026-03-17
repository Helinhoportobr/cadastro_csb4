<head>
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
</script>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Dependentes</h1>
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
                <h3 class="card-title">Cadastrar Dependentes</h3>
              </div>
              <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  
                  <div class="col-4">
                  <label for="Nome">Nome<h11>*</h11></label>  
                  <input id="nomedepend" name="nomedepend" value=" " placeholder="" class="form-control input-md" required="required" type="text"  onkeypress="return handleInput(event,this);" value="<?php echo $nome;?>">
                  </div>
                  
                  <div class="col-4">
                  <label>vinculo</label>
                        <select class="form-control" name="vinculo" type="text" id="categoria_contato" required>
                          <option disabled selected>Selecione</option>
                          <option value="Pai">Pai</option>
                          <option value="Mãe">Mãe</option>
                          <option value="Conjugê">Conjugê</option>
                          <option value="Filho">Filho(a)</option>
                          <option value="Enteado">Enteado(a)</option>
                        </select>
                  </div>
             
                  <div class="col-4">
                    <label for="Nome">Permissionário</label>
                    <select name="id_permiss" class="form-control">
					            <option>Selecione</option>
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios'];?>"><?php echo $row_perm['apt']; echo " "; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                    
                  </div>

                  <div class="col-4">
                  <label for="Nome">Nascimento</label> 
                  <input type="date" placeholder="DD/MM/AAAA"  name="datanascdepend"  class="form-control input-md" required="" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()" >
                  </div>
                  <div class="col-4">
                  <label for="radios">Sexo</label>
                  <select required="required" id="sexodepend" name="sexodepend" class="form-control">
                    <option selected>Seleicione</option>
                      <option value="FEMININO">FEMININO</option>
                      <option value="MASCULINO">MASCULINO</option>
                  </select>
                  </div>

                  <div class="col-4" hidden></div>
                 
                  <div class="col-4">
                  <label for="prependedtext">Celular</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telcel" name="telcel"  type="text" class="form-control" placeholder="XX XXXXX-XXXX" required="" maxlength="15" onkeyup="handlePhone(event)">
                  </div>
                  </div>
                  
                  <div class="col-12">
                  <label class="col-md-2 control-label" for="prependedtext">Email <h11>*</h11></label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email_depend" name="email_depend" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
                  </div>
                  </div>
                  <br>
                  
                  <div class="col-3"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="Nao">
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
                             
                      $nomedepend = $_POST['nomedepend'];
                      $vinculo = $_POST['vinculo'];
                      $datanascdepend = $_POST['datanascdepend'];
                      
                      $id_permiss = $_POST['id_permiss'];
                      
                      $sexodepend = $_POST['sexodepend'];
                      $telcel = $_POST['telcel'];
                      $email_depend = $_POST['email_depend'];
                      $arquivo = $_POST['arquivo'];

                      //echo $nomedepend."<br>";
                      //echo $vinculo."<br>";
                      //echo $datanascdepend."<br>";
                      //echo $id_permiss."<br>";
                      //echo $sexodepend."<br>";
                      //echo $telcel."<br>";
                      //echo $email_depend."<br>";
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
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dependente cadastrado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=relatorio_dependente");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dependente não Cadastrado !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 5, ?acao=cadastro_permissionario");

                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                        dependente não Cadastrado erro !!!
                                    </div>
                                  </div>';

                                  
                      }

                      

                };


                
              ?>
             
            </div>
          </div> <!-- /.card -->
          
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 