<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Permissionários</h1>
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
                <h3 class="card-title">Cadastrar Permissionários</h3>
              </div>
              <div class="card-body">
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="row">
                  

                  <div class="col-4">
                    <label for="Nome">Apt</label>
                    <select name="apt" class="form-control">
					            <option>Selecione</option>
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
                  <label for="postoesp">Entrada</label>
                  <input type="date" class="form-control date-mask" value="" name="dataentr" placeholder="Ex.: dd/mm/aaaa"  maxlength="10" autocomplete="off" required>
                  </div>
                  
                  <div class="col-4">
                  <label for="postoesp">Posto/Grad</label>
                  <input id="postoesp" name="postoesp" placeholder="2S QSS SIN" class="form-control input-md" required="" type="text" maxlength="15" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);">
                  </div>
                  <div class="col-8">
                  <label for="Nome">Nome</label>  
                  <input id="nome" name="nome" placeholder="" class="form-control input-md" required="required" type="text" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);">
                  </div>
                  
                  <div class="col-4">
                  <label for="cpf">CPF</label>  
                  <input id="cpf" name="cpf" placeholder="Apenas números" class="form-control input-md" required="" type="text" class="form-control cpf-mask" type="text" oninput="mascara(this)">
                  </div>
                  <div class="col-4">
                  <label for="Nome">Nascimento</label> 
                  <input id="dtnasc" name="datanasc" placeholder="DD/MM/AAAA" class="form-control input-md" required="" type="date" maxlength="10" OnKeyPress="formatar('##/##/####', this)" onBlur="showhide()">
                  </div>
                  <div class="col-4">
                  <label for="radios">Sexo</label>
                  <select name="sexo" id="sexo" class="form-control input-md">
                  <option value="">Selecione</option>
                  <option value="Feminino">Feminino</option>
                  <option value="Masculino">Masculino</option>
                  </select>
                  
                  </div>

                  <div class="col-4">
                  <label for="prependedtext">Celular <h11>*</h11></label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-phone-square fa-2x"></i></span>
                  <input id="telefone" name="telcel" class="form-control" placeholder="XX XXXXX-XXXX" required  maxlength="15" pattern="\(\d{2}\)\s*\d{5}-\d{4}">
                  </div>
                  </div>
                  <div class="col-3">
                  <label for="prependedtext">Unidade</label> 
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-suitcase fa-2x"></i></span>
                  <input id="secaotrab" name="secaotrab" class="form-control" placeholder="Ex:GABAER" type="text" maxlength="13" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);">
                  </div>
                  </div>
                  <div class="col-3">
                  <label for="prependedtext">Saram</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-check fa-2x"></i></span>
                  <input id="saram" name="saram" class="form-control" placeholder="Ex:000000-0" type="text" maxlength="13" onkeypress="return somenteNumeros(event)">
                  </div>
                  </div>
                 
                  <div class="col-6">
                    <label for="prependedtext">Estado (Cv)</label>
                    <select required id="estadocv" name="estadocv" class="form-control">
                    <option value="">Selecione</option>
                    <option value="Solteiro(a)">Solteiro(a)</option>
                    <option value="Casado(a)">Casado(a)</option>
                    <option value="Divorciado(a)">Divorciado(a)</option>
                    <option value="Viuvo(a)">Viuvo(a)</option>
                    </select>
                  </div>
                  <div class="col-4">
                  <label for="Filhos">Nº Filhos</label>
                  <input id="filhos_qtd" name="filhos_qtd" class="form-control" type="text" placeholder="Quantos?" onkeypress="return somenteNumeros(event)" >
                  </div>

                  <div class="col-8">
                  <label class="col-md-2 control-label" for="prependedtext">Email</label>
                  <div class="input-group">
                  <i class="fa fa-envelope fa-2x"></i>
                  <input id="email" name="email" class="form-control" placeholder="email@email.com" required="" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" >
                  </div>
                  </div>
                  <br>

                  <div class="col-8"  hidden>
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
                      $filhos_qtd = $_POST['filhos_qtd'];
                      $arquivo = $_POST['arquivo'];

                      //echo $nome."<br>";
                      //echo $telefone."<br>";
                      //echo $email."<br>";
                      //echo $categoria."<br>";
                      //echo $filhos_qtd;

                      if (!$filhos_qtd or $filhos_qtd == 0){

                        //atualiza o campo filhos SIM se tiver preenchido o campo e Não se estiver vazio na tabela permissionarios  
                        $filhos = 'NAO';
                              
                        }
                      else
                      {
                        //atualiza o campo filhos SIM se tiver preenchido o campo e Não se estiver vazio na tabela permissionarios  
                        $filhos = 'SIM';
                          
                      }

                    
                      $cadastro = "INSERT INTO permissionarios (apt,dataentr,postoesp,nome,cpf,datanasc,sexo,telcel,secaotrab,saram,email,estadocv,filhos,arquivo) VALUES (:apt,:dataentr,:postoesp,:nome,:cpf,:datanasc,:sexo,:telcel,:secaotrab,:saram,:email,:estadocv,:filhos,:arquivo)";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        
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
                        $result->bindParam(':filhos', $filhos,PDO::PARAM_STR);
                        $result->bindParam(':arquivo', $arquivo,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();

                         //atualiza o campo situacao do apartamento ocupado na tabela apartamentos 
                          $atualiza_antigo = "UPDATE `apartamentos` SET `situacao`='ocupado' WHERE `unidade` = '$apt'";
                          $resultados_apt_antigo = mysqli_query($conn, $atualiza_antigo);

                          //atualiza o campo situacao do apartamento ocupado na tabela apartamentos 
                          $atualiza_antigo = "UPDATE `permissionarios` SET `arquivo`='Sim' WHERE `apt` = '$apt' and nome = 'PREFEITURA AERONAUTICA DE BRASILIA'";
                          $resultados_apt_antigo = mysqli_query($conn, $atualiza_antigo);

                          
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center"><i class="icon fas fa-check"></i> OK!</h5>
                                    Permissionário cadastrado com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 1, ?acao=editar_permissionario_header");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Permissioário não Cadastrado !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1, ?acao=cadastro_permissionario");

                        }

                        }catch(PDOException $e){
                          //echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                          echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5><i class="icon fas fa-check"></i> Erro!</h5>
                                        Permissioário não Cadastrado CPF duplicado !!!
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
 