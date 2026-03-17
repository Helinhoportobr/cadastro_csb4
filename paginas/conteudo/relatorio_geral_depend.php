  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
        <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Relatório Dependentes/Permissionário</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Relatório Dependentes/Permissionário</li>
              <?php
              $id = $_GET['idPerm'];
                    //echo $id;
                    ?>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="callout callout-info">
              <h5><i class="fas fa-info"></i> Permissionário:</h5>
              Dependentes cadastrados mediante termo de responsabilidade assinado pelo responsável legal.
            </div>


            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12">
                  <h4>
                    <i class="fas fa-users"></i> Dependentes relacionados.
                    <small class="float-right">Data Ultíma atualização: 2/10/2014</small>
                  </h4>
                </div>
                <!-- /.col -->
              </div>
              <!-- info row -->
        
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Nome</th>
                      <th>Vinculo</th>
                      <th>Telefone</th>
                      <th>E-mail</th>
                      <th>Data Nascimento</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                   

                    $select = "SELECT * FROM depententes INNER JOIN permissionarios ON permissionarios.id_permissionarios = depententes.id_permiss WHERE depententes.arquivo = 'Nao' AND `id_permiss` = $id";
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
                      <td><?php echo $show->nomedepend;?></td>
                      <td><?php echo $show->vinculo;?></td>
                      <td><?php echo $show->tel_depend;?></td>
                      <td><?php echo $show->email_depend;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datanascdepend));?><td>
                      <div class="btn-group">
                      <a href="home.php?acao=update_dependente&id=<?php echo $show->id_dependentes;?>" class="btn btn-success" title="Editar Dependentes"><i class="fas fa-user-edit"></i></a>
                      <a href="../paginas/method/delet_dependente.php?idDel=<?php echo $show->id_dependentes;?>" onclick="return confirm('Deseja realmente remover o Dependentes ?')";  class="btn btn-danger" title="Remover Dependente"><i class="fas fa-user-times"></i></a>
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
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Atenção:</p>
                  <img src="../dist/img/credit/atencao.jpg" alt="Visa">
                  

                  <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    Fazer o cadastramento dos depententes no Sistemas de Segurança do condomínio somente após a apresentação de documento comprobatório e se menor de idade, assinatura de termo de responsabildiade pelo permissíonario. 
                  </p>
                </div>
                <!-- /.col
                <div class="col-6">
                  <p class="lead">Amount Due 2/22/2014</p>

                  <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td>$250.30</td>
                      </tr>
                      <tr>
                        <th>Tax (9.3%)</th>
                        <td>$10.34</td>
                      </tr>
                      <tr>
                        <th>Shipping:</th>
                        <td>$5.80</td>
                      </tr>
                      <tr>
                        <th>Total:</th>
                        <td>$265.24</td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <a href="invoice-print.html" rel="noopener" target="_blank" class="btn btn-default"><i class="fas fa-print"></i> Print</a>
                  <button type="button" class="btn btn-success float-right"><i class="far fa-credit-card"></i> Submit
                    Payment
                  </button>
                  <button type="button" class="btn btn-primary float-right" style="margin-right: 5px;">
                    <i class="fas fa-download"></i> Generate PDF
                  </button>
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  