  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Cadastro Contatos</h1>
          </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-4">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Cadastrar Contatos</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <!--../paginas/method/adicionar_contato.php(ADICIONAR EXECUÇÃO EXTERNA-->
              <form role="form" action=" " method="post" enctype="multipart/form-data">
                <div class="card-body">
                <div class="form-group">
                    <label for="nome_contato">Nome</label>
                    <input type="text" class="form-control" id="nome_contato" name="nome_contato" required placeholder="Digite o nome do contato" style="text-transform: uppercase;" onkeypress="return soLetras(event,this);">
                  </div>
                  <div class="form-group">
                    <label for="telefone_contato">Telefone</label>
                    <input type="text" class="form-control" id="telefone" name="telefone_contato" required placeholder="(00) 00000-0000"  maxlength="15" pattern="\(\d{2}\)\s*\d{5}-\d{4}">
                  </div>
                  <div class="form-group">
                    <label for="email_contato">Endereço de E-mail</label>
                    <input type="email" class="form-control" id="email_contato" name="email_contato" required placeholder="Digite um e-mail">
                  </div>
                  <div class="form-group">
                        <label>Categoria</label>
                        <select class="form-control" name="categoria_contato" type="text" id="categoria_contato" required>
                          <option disabled selected>Selecione</option>
                          <option>Vidraçaria</option>
                          <option>Serralheiro</option>
                          <option>Chaveiro</option>
                          <option>CFTV/Portão</option>
                          <option>Extintores</option>
                          <option>Eletricista</option>
                          <option>Encanador</option>
                          <option>Caça Vazamentos</option>
                        </select>
                      </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" name="botao" class="btn btn-primary">Salvar</button>
                </div>
              </form>
              
              <?php
                include('../config/conexao.php');
                if(isset($_POST['botao'])) {
                      $nome = $_POST['nome_contato'];
                      $telefone = $_POST['telefone_contato'];
                      $email = $_POST['email_contato'];
                      $categoria = $_POST['categoria_contato'];

                      //echo $nome."<br>";
                      //echo $telefone."<br>";
                      //echo $email."<br>";
                      //echo $categoria."<br>";
                    
                      $cadastro = "INSERT INTO contato (nome,telefone,email,categoria) VALUES (:nome,:telefone,:email,:categoria)";
                       
                      try{
                        
                        $result = $conect ->prepare($cadastro);
                        $result->bindParam(':nome', $nome,PDO::PARAM_STR);
                        $result->bindParam(':telefone', $telefone,PDO::PARAM_STR);
                        $result->bindParam(':email', $email,PDO::PARAM_STR);
                        $result->bindParam(':categoria', $categoria,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        if($contar > 0){
                         
                          echo '<div class="container">
                                    <div class="alert alert-success alert-dismissible" style="text-align: center;">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h5 style="text-align: center;"><i class="icon fas fa-check"></i> OK!</h5>
                                    Contato inserido com sucesso !!!
                                  </div>
                                </div>';
                                header("Refresh: 1, ?acao=cadastro_contato");
                          }else{
                            echo '<div class="container">
                                      <div class="alert alert-danger alert-dismissible" style="text-align: center;">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                      <h5 style="text-align: center;"><i class="icon fas fa-check"></i> Erro!</h5>
                                      Dados não inseridos !!!
                                    </div>
                                  </div>';
                                  header("Refresh: 1, ?acao=cadastro_contato");

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

             <div class="card">
              <div class="card-header">
                <h3 class="card-title">Contatos Recentes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped" id="example5">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>E-mail</th>
                      <th>Categoria</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM `contato` ORDER BY `id` DESC LIMIT 6 ";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){
                            


                         
                    ?>
                    <tr>
                      <td><?php echo $cont ++;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->telefone;?></td>
                      <td><?php echo $show->email;?></td>
                      <td><?php echo $show->categoria;?></td>
                      <td>
                      <div class="btn-group">
                      <a href="home.php?acao=editar_contato&id=<?php echo $show->id;?>" class="btn btn-success" title="Editar Contato"><i class="fas fa-user-edit"></i></a>
                      <a href="home.php?acao=delet_contatos&idDel=<?php echo $show->id;?>" onclick="return confirm('Deseja realmente romover o Contato?')"; class="btn btn-danger" title="Remover Contato"><i class="fas fa-user-times"></i></a>
                      </div>
                    </td>
                    </tr>
                    <?php
                     }
                    }else{


                    }
                  }catch(PDOException $e){
                       echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                    }


                    ?>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
          </div>

        </div>      
        <!-- /.row -->

        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <script>
    $(function () {
      $("#example5").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        "searching": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>
  