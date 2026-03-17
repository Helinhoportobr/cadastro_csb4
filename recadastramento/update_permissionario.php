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
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Permissionário</h1>
          </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
<?php
  include('../config/conexao.php');
  if(!isset($_GET['id'])){
    header("Location: home.php?acao=cadastro_permissionario");
    exit();  
  }
  $id = filter_input(INPUT_GET,'id',FILTER_DEFAULT);
  
  $select = "SELECT * FROM permissionarios WHERE id_permissionarios = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          
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
    }else{
      echo '<div class="alert alert-danger">Não há dados informados!</div>';
    }

  }catch(PDOException $e){
    echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
  }
?>
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Editar Permissionário</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--../paginas/method/adicionar_contato.php(ADICIONAR EXECUÇÃO EXTERNA-->
            <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-4">
                  <label for="Nome">Apartamento<h11>*</h11></label><select name="apt" class="form-control">
					            <option><?php echo $apt_up;?></option>
                    
                    <?php
						          $result_apt_vazios = "SELECT * FROM `apartamentos` WHERE `situacao` = 'vazio'";
						          $resultado_apt = mysqli_query($conn, $result_apt_vazios);
						          while($row_apt = mysqli_fetch_assoc($resultado_apt)){ ?>
						    	    <option value="<?php echo $row_apt['unidade']; ?>"><?php echo $row_apt['unidade']; ?></option> <?php
						          }
                              
					          ?>
				          </select>
                  
                  </div>
                  <div class="col-4">
                  <label for="date">Data de Entrada <h11>*</h11></label>
                  <input type="date" class="form-control " name="dataentr" value="<?php echo $dataentr;?>">
                  </div>
                  
                  <div class="col-4">
                  <label for="postoesp">Posto/Grad <h11>*</h11></label>
                  <input id="postoesp" name="postoesp" placeholder="2S QSS SIN" class="form-control input-md" required="" type="text" maxlength="15" oninput="handleInput(event)" value="<?php echo $postoesp;?>" >
                  </div>
                  <div class="col-8">
                  <label for="Nome">Nome <h11>*</h11></label>  
                  <input id="nome" name="nome" placeholder="" class="form-control input-md" required="required" type="text" onkeypress="return handleInput(event,this);" value="<?php echo $nome;?>">
                  </div>
                  
                  <div class="col-4">
                  <label for="cpf">CPF <h11>*</h11></label>  
                  <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" onkeyup="cpfCheck(this)" maxlength="18" onkeydown="javascript: fMasc( this, mCPF );" value="<?php echo $cpf;?>">
                  </div>
                  <div class="col-4">
                  <label for="datanasc">Nascimento<h11>*</h11></label> 
                  <input id="datanasc" name="datanasc" class="form-control input-md" type="date" value="<?php echo $datanasc;?>">
                  </div>
                  <div class="col-4">
                  <label for="radios">Sexo <h11>*</h11></label>
                  <select required="required" id="sexo" name="sexo" class="form-control">
                    <option selected><?php echo $sexo;?></option>
                      <option value="Feminino">Feminino</option>
                      <option value="Masculino">Masculino</option>
                    </select>
                  </div>

                  <div class="col-4">
                  <label for="prependedtext">Celular <h11>*</h11></label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telcel" name="telcel" class="form-control" placeholder="XX XXXXX-XXXX" required="" maxlength="15" onkeyup="handlePhone(event)" value="<?php echo $telcel;?>">
                  </div>
                  </div>
                  <div class="col-4">
                  <label for="prependedtext">Unidade  Atual</label> 
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-suitcase fa-2x"></i></span>
                  <input id="secaotrab" name="secaotrab" class="form-control" placeholder="Ex:GABAER" type="text" maxlength="13" onkeypress="return ApenasLetras(event,this);" oninput="handleInput(event)" value="<?php echo $secaotrab;?>">
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
                  <label class="col-md-2 control-label" for="prependedtext">Email <h11>*</h11></label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email" name="email" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<?php echo $email;?>">
                  </div>
                  </div>
                  <br>
                  <div class="col-4">
                    <label for="prependedtext">Estado Civil <h11>*</h11></label>
                    <select required id="estadocv" name="estadocv" class="form-control">
                    <option selected><?php echo $estadocv;?></option>
                    <option value="Solteiro(a)">Solteiro(a)</option>
                    <option value="Casado(a)">Casado(a)</option>
                    <option value="Divorciado(a)">Divorciado(a)</option>
                    <option value="Viuvo(a)">Viuvo(a)</option>
                    </select>
                  </div>
                  <div class="col-8">
                  <label for="Filhos">Filhos<h11>*</h11></label>
                  <input id="filhos_qtd" name="filhos" class="form-control" type="text" placeholder="Quantos?" onkeyup="somenteNumeros(this);" value="<?php echo $filhos_qtd;?>">
                  </div>
                  <div class="col-8"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="Nao">
                  </div>
                  
                </div>
                
                </div>
                <!-- /.card-header -->
              
                <div class="card-footer"  style="text-align: center;">
                  <button type="submit" name="upcontato" class="btn btn-primary">Salvar Edição Permissionário</button>
                </div>
              </form>
            </div>  
              <?php
                
                if(isset($_POST['upcontato'])) {
                      
                                    
                  $apt = $_POST['apt'];
                  $dataentr = $_POST['dataentr'];
                  $postoesp = $_POST['postoesp'];
                  $nome = $_POST['nome'];
                  $cpf = $_POST['cpf'];
                  $datanasc = $_POST['datanasc'];
                  $sexo = $_POST['sexo'];
                  $telcel = $_POST['telcel'];
                  $secaotrab = $_POST['secaotrab'];
                  $saram = $_POST['saram'];
                  $email = $_POST['email'];
                  $estadocv = $_POST['estadocv'];
                  $filhos_qtd = $_POST['filhos'];

                                     
                      $update = "UPDATE permissionarios SET id_permissionarios=:id,apt=:apt,dataentr=:dataentr,postoesp=:postoesp,nome=:nome,cpf=:cpf,datanasc=:datanasc,sexo=:sexo,telcel=:telcel,secaotrab=:secaotrab,saram=:saram,email=:email,estadocv=:estadocv,filhos=:filhos_qtd WHERE id_permissionarios = $id";
                     
                    try{
                        
                        $result = $conect ->prepare($update);
                        $result->bindParam(':id', $id,PDO::PARAM_INT);
                        $result->bindParam(':apt', $apt,PDO::PARAM_STR);
                        $result->bindParam(':dataentr', $dataentr,PDO::PARAM_STR);
                        $result->bindParam(':postoesp', $postoesp,PDO::PARAM_STR);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':cpf', $cpf,PDO::PARAM_STR);
                        $result->bindParam(':datanasc', $datanasc,PDO::PARAM_STR);
                        $result->bindParam(':sexo', $sexo,PDO::PARAM_STR);
                        $result->bindParam(':telcel', $telcel,PDO::PARAM_STR);
                        $result->bindParam(':secaotrab', $secaotrab,PDO::PARAM_STR);
                        $result->bindParam(':saram', $saram,PDO::PARAM_STR);
                        $result->bindParam(':email', $email,PDO::PARAM_STR);
                        $result->bindParam(':estadocv', $estadocv,PDO::PARAM_STR);
                        $result->bindParam(':filhos_qtd', $filhos_qtd,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        
                        //atualiza o campo apartamento antigo para vazio(variavel $apt), e o apartamento novo para ocupado(variavel $apt_up)
                        if ($apt != $apt_up) {
                          //echo $apt;
                          $result_apt = "UPDATE `apartamentos` SET `situacao`='ocupado' WHERE `unidade` = '$apt'";
                          $resultados_apt = mysqli_query($conn, $result_apt);

                          $atualiza_antigo = "UPDATE `apartamentos` SET `situacao`='vazio' WHERE `unidade` = '$apt_up'";
                          $resultados_apt_antigo = mysqli_query($conn, $atualiza_antigo);
                          //echo $apt_up;
                        } elseif ($apt = $apt_up) {
                          $result_apt = "UPDATE `apartamentos` SET `situacao`='ocupado' WHERE `unidade` = '$apt'";
                          $resultados_apt = mysqli_query($conn, $result_apt);
                        }
                        //fim da atualizacao do campo apt

                      if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados atualizado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 1, home.php?acao=editar_permissionario&id=$id");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não atualizados !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1, ?acao=editar_permissionario&id=$id");

                        

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

             
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 