<?php header('Content-type: text/html; charset=utf-8');
ini_set('default_charset', 'utf-8')
?>
<script>
function preencheCampo(el){
    let value = $(el).val();

    $('input[name="ATEND_USU"]').val(value);
	
};

function preenche(el){
    let value = $(el).val();

   	$('input[name="ATEND_USU2"]').val(value);
};

  
 
</script>


  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Preencher Termo troca de garagem</h1>
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
                <h3 class="card-title">Selecionar Permissioários</h3>
              </div>
              <div class="card-body">

              <h4 style='text-align: center'>TERMO DE PERMUTA DE VAGA DE GARAGEM ENTRE PERMISSIONÁRIOS</h4>

                                                <div style='text-align: right'>Brásilia, <?php setlocale(LC_ALL, 'pt_BR.utf8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
echo utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today'))); ?>.</div>
                                               
              <form action="imprimir/troca_garagem/gerar_termotrocagaragem_pdf.php" method="POST" name="btn-gerar">
                

            <div class="row">
              PERMUTANTE(A): 
                  <div class="col-3">
                    <select name="id_permiss" class="form-control" onchange="preencheCampo(this); ">
					            <option>Selecione</option>
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['id_permissionarios']; echo ' - '; echo $row_perm['nome'];?>"><?php echo $row_perm['apt']; echo ' - '; echo $row_perm['nome']; ?></option> <?php
						          $id = $row_perm['id_permissionarios'];
                    }
					          ?>
				          </select>
                  </div>                  
            </div>      
            <br><br>
            <div class="row">
              PERMUTANTE(B): 
                  <div class="col-3">
                    <select name="id_permiss2" class="form-control" onchange="preenche(this);">
					            <option>Selecione</option>
					          <?php
						          $result_permissioanario = "SELECT `apt`, `nome`, id_permissionarios FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	     <option value="<?php echo $row_perm['id_permissionarios']; echo ' - '; echo $row_perm['nome'];?>"><?php echo $row_perm['apt']; echo ' - '; echo $row_perm['nome']; ?></option> <?php
						          }
					          ?>
				          </select>
                  </div>
            </div>
            
            <br>
                  <p>As partes acima identificadas têm, entre si, justo e acertado o presente Contrato de Permuta de vaga por vaga,  que se regerá pelas regras de troca definidas em regimento interno da Associação de Permissionários da CSB4 e pelas condições descritas no presente.</p>
                  <br>
                  <h5><b>DO OBJETO DO CONTRATO</b></h5> 
                  <br>        
                  <p>        O presente contrato tem o Objeto, a permuta das vagas pertencentes ao PERMUTANTE(A), cujo o mesmo possua permissão de uso e que não prejudique as vagas adjacentes, e a vaga do PERMUTANTE(B) igulmente não prejuicando as vagas adjacentes, e de acordo com todas as regras em vigor.</p>                                                       
                  <b>        O PERMUTANTE (A) transfere ao PERMUTANTE(B), a partir da assinatura deste instrumento, a posse e direito de uso das vagas em questão um para o outro, assumindo assim toda a reponsabilidade dai por diante.</b>
                </div>
                
  
  <!--PERMISSIONARIOS -->  
                <table style='margin-top:100px; width:100%;  '>
    <tr>
      <td style='text-align:center; ' >
      ____________________________________<br><input name="ATEND_USU" type="text" style="border: 0 none; width: 450px; text-align: center"></td>
      <td style='text-align: center;'>
      ____________________________________<br><input name="ATEND_USU2" type="text" style="border: 0 none; width: 450px; text-align: center"></td>
    </tr>
    <tr>
      <td style='text-align:center;'>PERMUTANTE (A)</td>
      <td style='text-align: center;'>PERMUTANTE (B)</td>
    </tr>
  </table>
  <!-- FIM -PERMISSIONARIOS -->     
  
  <!--ASSINATURA ADMINSTRACAO-->
  <table style='margin-top:10px; width:100%;  '>
    <tr>
    <td style='text-align: center;'>
     ____________________________________<br>ALEXSANDRO SANTOS DE MORAIS</td>
    </tr>
    <tr>
      <td style='text-align: center;'>Presidente da Administração de Compossuidores</td>
    </tr>
  
  </table>
  <!-- FIM - ASSINATURA ADMINSTRACAO--> 

  <div class="col-8"  hidden>
                  <label for="campo3">Arquivado padrão N</label>
                  <input type="text" name="arquivo" value="<?php echo $_POST['id_permiss2']?>" required>

                  </div>


                                                              <div class="card-footer"  style="text-align:center">
                                                                <button class="btn btn-primary" type="submit" name="btn-gerar" value="Gerar PDF">
                                                                  <i class="fas fa-download"></i> Generate PDF
                                                                </button>
                                                              </div>
                                              
                                                              </div>
                                                              <!-- /.card-header -->
                       

               </form>
              
              
             
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
 