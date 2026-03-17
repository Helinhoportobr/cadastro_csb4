<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Usuário</h1>
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
                <h3 class="card-title">Cadastrar Usuário</h3>
              </div>
              <div class="card-body">
              <form action="" method="post" enctype="multipart/form-data">
                <div class="row">
                  
                    <div class="col-4">
                    <label for="Nome">Foto<h11>*</h11></label>  
                    <div class="custom-file">
                    <input type="file" class="custom-file-input" name="foto" id="foto" required>
                    <label class="custom-file-label" for="exampleInputFile">Arquivo de imagem</label>
                    </div>
                    </div>
                  
                    <div class="col-4">
                    <label>Nome</label>
                       <input type="text" name="nome" class="form-control" placeholder="Digite seu Nome...">
                    </div>
             
                    <div class="col-4">
                        <label for="Nome">Tipo</label>
                        <select name="cargo" class="form-control" >
					        <option>Selecione</option>
                            <option>Sindico</option>
                            <option>Subsindico</option>
                            <option>Portaria</option>
                            <option>Limpeza</option>					          
				        </select>
                    
                    </div>

                </div>
                
                <div class="row">
                  <div class="col-4">
                      <label class="col-md-2 control-label" for="prependedtext">Email</label>
                      <div class="input-group">
                      <i class="fa fa-envelope fa-2x"></i>
                      <input id="email" name="email" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
                      </div>
                  </div>

                  <div class="col-4">
                      <label >Senha</label>
                      <div class="input-group-append">
                        <div class="input-group-text">
                          <span class="fas fa-lock"></span>
                       </div>
                       <input type="password" name="senha" class="form-control" placeholder="Digite sua Senha...">
                    </div>
                  </div>
                  
                  
                  <br>
            </div>
                
                <input type="hidden" name="ativo" class="form-control" value='Nao'>
                <!-- /.card-header -->
              
                <div class="card-footer"  style="text-align: center;">
                  <button type="submit" name="botao" class="btn btn-primary">Salvar Cadastro</button>
                </div>
              </form>
              
              <?php
                include('../../config/conexao.php');
                if(isset($_POST['botao'])) {
                  $nome = $_POST['nome'];
                  $email = $_POST['email'];
                  $senha = base64_encode($_POST['senha']);
                  $cargo = $_POST['cargo'];
                  $ativo = $_POST['ativo'];
                  
                  $formatP = array("png","jpg","jpeg","JPG","gif");
                  $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);

                  if(in_array($extensao, $formatP)){
                    $pasta = "../dist/img/usuarios/";
                    $temporario = $_FILES['foto']['tmp_name'];
                    $novoNome = uniqid().".$extensao";
                    

                    if(move_uploaded_file($temporario, $pasta.$novoNome)){
                        $cadastro = "INSERT INTO usuarios (foto_user,nome_user,email_user,senha_user,cargo_user,ativo_user,data_entr,arquivo) VALUES (:foto,:nome,:email,:senha,:cargo,:ativo,NOW(),'Nao')";

                        try{
                          $result = $conect->prepare($cadastro);
                          $result->bindParam(':nome',$nome,PDO::PARAM_STR);
                          $result->bindParam(':email',$email,PDO::PARAM_STR);
                          $result->bindParam(':senha',$senha,PDO::PARAM_STR);
                          $result->bindParam(':cargo',$cargo,PDO::PARAM_STR);
                          $result->bindParam(':ativo',$ativo,PDO::PARAM_STR);
                          $result->bindParam(':foto',$novoNome,PDO::PARAM_STR);
                          
                          $result->execute();
                          $contar = $result->rowCount();
                          if($contar > 0){
                            echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Dados inseridos com sucesso !!!
                                  </div>
                                </div>';
                                     
                                      header("Refresh: 1, ?acao=editar_usuarios");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não inseridos !!!
                                    </div>
                                  </div>';
                                   header("Refresh: 1, ?acao=editar_usuarios");
                          }
                        }catch (PDOException $e){
                          echo "<strong>ERRO DE PDO= </strong>".$e->getMessage();
                        }
                    }else{
                      echo "Erro, não foi possível fazer o upload do arquivo!";
                    }

                  }else{
                    echo "Formato Inválido";
                  }

                }
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
 