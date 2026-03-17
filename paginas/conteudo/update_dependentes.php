  <!-- Content Wrapper. Contains page content -->
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



  
</script>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Editar Dependentes</h1>
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
  
  $select = "SELECT * FROM depententes WHERE id_dependentes = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          $id_dependentes = $show->id_dependentes;
          $nomedepend = $show->nomedepend;
          $vinculo = $show->vinculo;
          $datanascdepend = $show->datanascdepend;
          $sexodepend = $show->sexodepend;
          $tel_depend = $show->tel_depend;
          $email_depend = $show->email_depend;
          
          

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
                <h3 class="card-title">Editar Dependentes</h3>
              </div>
              <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  
                  <div class="col-6">
                  <label for="Nome">Nome</label>  
                  <input id="nomedepend" name="nomedepend" value="<?php echo $nomedepend;?>" placeholder="" class="form-control input-md" required="required" type="text" onkeypress="return ApenasLetras(event,this);" oninput="handleInput(event)">
                  </div>

                  <div class="col-6">
                    <label for="Nome">Permissionário</label>
                    <?php
                    $select = "SELECT * FROM depententes INNER JOIN permissionarios ON permissionarios.id_permissionarios = depententes.id_permiss WHERE depententes.arquivo = 'Nao' AND `id_dependentes` =  $id";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                                                
                    ?>
                                       
                     
                    <input id="id_permiss" name="id_permiss"  type="text" class="form-control" value="<?php echo $show->nome;?>"  disabled=""> 
                    <?php
                  }
                    }else{


                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }
                    ?>
                 </div>
                </div>
                
                <div class="row">
                  <div class="col-4">
                  <label>vinculo</label>
                        <select required="required" id="vinculo" name="vinculo" class="form-control">
                          <option selected><?php echo $vinculo;?></option>
                          <option value="Pai">Pai</option>
                          <option value="Mãe">Mãe</option>
                          <option value="Conjugê">Conjugê</option>
                          <option value="Filho">Filho</option>
                          <option value="Enteado">Enteado</option>
                        </select>
                  </div>                 

                  <div class="col-4">
                  <label for="Nome">Nascimento</label> 
                  <input type="date" class="form-control date-mask" id="datanascdepend"  name="datanascdepend" required value="<?php echo $datanascdepend;?>">
                  </div>
                  <div class="col-4">
                   <label for="radios">Sexo</label>
                    <select required="required" id="sexodepend" name="sexodepend" class="form-control">
                    <option selected><?php echo $sexodepend;?></option>
                      <option value="Feminino">Feminino</option>
                      <option value="Masculino">Masculino</option>
                    </select>
                  </div> 
                </div>           

                  
                <div class="row">
                               
                  <div class="col-6">
                  <label for="prependedtext">Celular</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telcel" name="telcel"  type="text" class="form-control" placeholder="XX XXXXX-XXXX" required="" maxlength="15" onkeyup="handlePhone(event)" value="<?php echo $tel_depend;?>">
                  </div>
                  </div>
                  
                  <div class="col-6">
                  <label class="col-md-2 control-label" for="prependedtext">Email <h11>*</h11></label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email_depend" name="email_depend" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<?php echo $email_depend;?>">
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
                
                if(isset($_POST['botao'])) {
                      
                  $nome = $_POST['nomedepend'];
                  $vinculo = $_POST['vinculo'];
                  $datanasc= $_POST['datanascdepend'];
                  $sexo = $_POST['sexodepend'];
                  $telcel = $_POST['telcel'];
                  $email = $_POST['email_depend'];
                  $arquivo = $_POST['arquivo'];

                  //echo $nome;
                  //echo $vinculo;
                  //echo $datanasc;
                  //echo $sexo;
                  //echo $telcel;
                  //echo $email;
                  //echo $arquivo;
                    
                      $update = "UPDATE depententes SET id_dependentes=:id,nomedepend=:nome,vinculo=:vinculo,datanascdepend=:datanasc,sexodepend=:sexo,tel_depend=:telcel,email_depend=:email,arquivo=:arquivo  WHERE id_dependentes = $id";
                       
                      try{
                        
                        $result = $conect ->prepare($update);
                        $result->bindParam(':id', $id,PDO::PARAM_INT);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':vinculo', $vinculo,PDO::PARAM_STR);
                        $result->bindParam(':datanasc', $datanasc,PDO::PARAM_STR);
                        $result->bindParam(':sexo', $sexo,PDO::PARAM_STR);
                        $result->bindParam(':telcel', $telcel,PDO::PARAM_STR);
                        $result->bindParam(':email', $email,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dependente atualizados com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 2, ?acao=editar_dependentes_header");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                       Dependente sem alteração nos dados !
                                    </div>
                                  </div>';
                                  header("Refresh: 2, ?acao=update_dependente&id=$id");

                        

                        }

                        }catch(PDOException $e){
                          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
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
 