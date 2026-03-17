
<?php

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
      $cargo = $show->cargo_user;

    }
  }else{
    echo '<div class="alert alert-danger"> <strong>Aviso!</strong> Não há dados com de perfil :(</div>';
  }
}catch (PDOException $e){
    echo "ERRO DE LOGIN DO PDO : ".$e->getMessage();
}
?>
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Relatório Cautela de Material (Entregue) </h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>apt</th>
                      <th>Permissioário</th>
                      <th>Objeto</th>
                      <th>Entregue por</th>
                      <th>Data Saída</th>
                      <th>Data Devolução</th>
                      <th>situação</th>
                      
                      <!--<th style="width: 40px">Ações</th>-->
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                      
                      $select = "SELECT * FROM `documentos_cautela` WHERE `arquivo_doc` = 'SIM' ORDER BY `data_saida_doc` + 0 DESC";
                      
                      try{
                        $result = $conect->prepare($select);
                        $cont = 1;
                        $result->execute();

                        $contar = $result->rowCount();
                        if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                    ?>
                                      
                    <tr>
                      <td><?php echo $cont++;?></td>
                      <td><?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['apt'] . "\t";
                          
                        
                      }?></td>
                      <td>
                      <?php
                      $sql = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao' AND `id_permissionarios` = $show->id_permiss";
                      foreach ($conn->query($sql) as $row) {
                          print $row['nome'] . "\t";
                          
                        
                      }?>
                      </td>
                      <td><?php echo $show->desc_objeto;?></td>
                      <td><?php echo $show->entreg_por;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->data_saida_doc));?></td>
                      
                      <td><?php echo date('d/m/Y',  strtotime($show->data_entrega_doc));?></td>
                      <td><?php echo $show->situacao_doc;?></td>
                      <!--<td>
                      <div class="btn-group">
                       <a href="method/delet_objeto_cautelado.php?idDoc=<?php echo $show->id_documentos;?>&user=<?php echo $nome_user; echo '- '; echo $cargo;  ?>" onclick="return confirm('Deseja realmente confirmar o recebimento do objeto')" class="btn btn-success" title="Receber Objetos"><i class="fa fa-check-square" aria-hidden="true"></i>
</a>
                      </div>
                      </td>-->
                    </tr>
                    <?php

                            }

                          }else{

                          }
                        }catch (PDOException $e){
                            echo '<strong>ERRO DE PDO= </strong>'.$e->getMessage();
                        }
                    ?>
                                       
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  