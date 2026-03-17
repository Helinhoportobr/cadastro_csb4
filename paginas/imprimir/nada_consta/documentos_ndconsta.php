<style>
  #myInput {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 100%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
}

#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  border: 1px solid #ddd; /* Add a grey border */
  font-size: 18px; /* Increase font-size */
}

#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  /* Add a grey background color to the table header and on hover */
  background-color: #f1f1f1;
}
</style> 
<script>
function myFunction() {
  // Declare variables
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[3];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <link href=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
         rel="stylesheet">
   <script src=
"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js">
     </script>
   <script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js">
    </script>
</head>
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Nada Cosnta</h1>
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
          
          </div> <!-- /.card -->
          <div class="col-md-12">
             <!-- /.card -->

             <div class="card">
              <div class="card-header">
                <h3 class="card-title">Documentos gerados</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              
              <table class="table table-bordered table-striped"  id="example7" >
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>APT</th>
                      <th>Posto/Esp</th>
                      <th>Nome</th>
                      <th>Telefone</th>
                      <th>Seçao</th>
                      <th>Data_Saída</th>
                      <th>Upload</th>
                      <th>Downlaod</th>
                      <th style="width: 40px">Acões</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $select = "SELECT * FROM `permissionarios` WHERE `arquivo` = 'Sim' ORDER BY `id_permissionarios` DESC";
                    try{
                      $result = $conect ->prepare($select);
                      $cont = 1; 
                      $result->execute();

                      $contar = $result->rowCount();
                      if($contar > 0){
                          while($show = $result->FETCH(PDO::FETCH_OBJ)){

                            $teste = $show->nada_consta;
                            $id_permiss = $show->id_permissionarios;
                                                
                    ?>
                    <tr>
                      <td><?php echo $cont ++;?></td>
                      <td><?php echo $show->apt;?></td>
                      <td><?php echo $show->postoesp;?></td>
                      <td><?php echo $show->nome;?></td>
                      <td><?php echo $show->telcel;?></td>
                      <td><?php echo $show->secaotrab;?></td>
                      <td><?php echo date('d/m/Y',  strtotime($show->datasaida));?></td>
                      
                      <?php  
                      if(($teste) == ''){ ?>

                        <td>
                        <div class="height-100 d-flex justify-content-center align-items-center">
                        </div>
                        
                        <div class="form-container">
                          <form action="" method="post"	name="frm-edit" enctype="multipart/form-data" >
                        </div>
                        
                        <div class="input-group ">
                          <input type="file" class="form-control" id="foto" name="foto"> 
                          <input type="hidden" class="form-control" id="foto" name="id_permiss" value = "<?php echo $id_permiss;?>"> 
                          <input type="submit" class="btn btn-primary" name="botao_reque" class="btn-link" value="Save">
                        </div>
                                                                
                        </td>
                    <?php }else{
                      echo "<td>
                      
                      </td>";
                    }
                   ?>
                    
                    <?php      
                                  include('../config/conexao.php');
                                  if(isset($_POST['botao_reque'])) {

                                    $id_permiss = $_POST['id_permiss'];
                                    
                                    $formatP = array("png","jpg","jpeg","JPG","gif","pdf");
                                    $extensao = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);
                                    
                                    if(in_array($extensao, $formatP)){
                                      $pasta = "../dist/img/documentos/nada_consta/";
                                      $temporario = $_FILES['foto']['tmp_name'];
                                      $novoNome = uniqid().".$extensao";

                                      if(move_uploaded_file($temporario, $pasta.$novoNome)){
                                          $cadastro = "UPDATE permissionarios SET nada_consta=:foto WHERE arquivo = 'Sim'  AND id_permissionarios = $id_permiss";

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
                                                  echo "<meta http-equiv='refresh' content='0; home.php?acao=documentos_nadaconsta'>";
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

                      <td>
                      <?php
                      if(($teste) != ''){
                          
                           echo "<a href='../dist/img/documentos/nada_consta/$show->nada_consta' class='btn btn-info'  Download><i class='fa fa-download'></i>Download</a>";
                        
                                  
                          
                        }else{
                            echo "Faça o Download da notificação assinada"."<br>";
                            echo "<b>DOWNLOAD PENDENTE</b>";
                        }?>
                    </td>
                              
                      <td>
                        <?php
                      if(($teste) != ''){  
                       
                    }else{
                      echo "<div class='btn-group'>
                        <a href='imprimir/nada_consta/imprime_nada_consta.pdf.php?id=$show->id_permissionarios' class='btn btn-primary' title='Imprime Nada Consta'><i class='fa fa-print'></i></a>
                        </div>";

                    }?>
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
      $("#example7").DataTable({
        "responsive": true, 
        "lengthChange": false, 
        "autoWidth": false,
        
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
      
    });
  </script>