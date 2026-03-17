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
            <h1>Editar Usuário</h1>
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
  
  $select = "SELECT * FROM usuarios WHERE `id_user` = :id";
  
  try{

    $resultado = $conect->prepare($select);
    $resultado->bindValue(':id',$id, PDO::PARAM_INT);
    $resultado->execute();

    $contar = $resultado->rowCount();
    if($contar>0){

      while($show = $resultado->FETCH(PDO::FETCH_OBJ)){
          
          $id_user = $show->id_user;
          $nome_user  = $show->nome_user;
          $cod_boleto = $show->cod_boleto;
          $adm = $show->adm;
          $ativo_user = $show->ativo_user;
          
           if( $adm == 0){
                          
                         $adm = 'Não';
                         
                      }else{
                          
                          $adm = 'Sim';
                      } 
          
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
                <h3 class="card-title">Editar Usuário</h3>
              </div>
              <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  
                  <div class="col-6">
                  <label for="Nome">Nome de Usuário</label>  
                  <input id="nomeuser" name="nomeuser" value="<?php echo $nome_user;?>" placeholder="" class="form-control input-md" required="required" type="text" onkeypress="return ApenasLetras(event,this);" oninput="handleInput(event)">
                  </div>
                  
                  <div class="col-6">
                  <label for="Nome">Código boleto</label>  
                  <input id="codbol" name="codbol" value="<?php echo $cod_boleto;?>" placeholder="" class="form-control input-md" required="required" type="text"  oninput="handleInput(event)">
                  </div>

                 
                </div>
                
                <div class="row">
                  <div class="col-4">
                  <label>Adminstrador</label>
                        <select required="required" id="adm" name="adm" class="form-control">
                          <option selected><?php echo  $adm;?></option>
                          <option value="1">Sim</option>
                          <option value="0">Não</option>
                          
                        </select>
                  </div>                 

                   <div class="col-6">
                  <label for="Nome">Status</label>  
                  <select required="required" id="status" name="status" class="form-control">
                          <option selected><?php echo  $ativo_user;?></option>
                          <option value="Sim">Sim</option>
                          <option value="Nao">Não</option>
                          
                        </select>
                  </div>
                
                </div>
                <!-- /.card-header -->
              
                <div class="card-footer"  style="text-align: center;">
                  <button type="submit" name="botao" class="btn btn-primary">Salvar Cadastro</button>
                </div>
              </form>
              
              <?php
                
                if(isset($_POST['botao'])) {
                    
                    
                    $adm= $_POST['adm'];
                    
                     if( $adm == 'Não'){
                          
                         $adm = '0';
                         
                      }else{
                          
                          $adm = '1';
                      } 
                      
                  $nomeuser = $_POST['nomeuser'];
                  $codbol = $_POST['codbol'];
                  $status = $_POST['status'];

                  //echo $nomeuser;
                  //echo $codbol;
                  //echo $adm;
                  //echo $status;
                  
                    
                     $update = "UPDATE usuarios SET id_user=:id,nome_user=:nomeuser,cod_boleto=:codbol,adm=:adm,ativo_user=:status WHERE `id_user` = :id";
                       
                      try{
                        
                        $result = $conect ->prepare($update);
                        $result->bindParam(':id', $id,PDO::PARAM_INT);
                        $result->bindParam(':nomeuser', $nomeuser,PDO::PARAM_STR);
                        $result->bindParam(':codbol', $codbol,PDO::PARAM_STR);
                        $result->bindParam(':adm', $adm,PDO::PARAM_STR);
                        $result->bindParam(':status', $status,PDO::PARAM_STR);
                        $result->bindParam(':sexo', $sexo,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                   Usuário atualizados com sucesso !!!
                                  </div>
                                </div>';
                                
                                header("Refresh: 1, ?acao=editar_usuarios");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                       Usuário sem alteração nos dados !
                                    </div>
                                  </div>';
                                  
                                  header("Refresh: 1, ?acao=editar_usuarios&id=$id");

                        

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
 