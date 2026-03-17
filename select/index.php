<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Completar proximos campos</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
	</head>
	<body>
		<script type='text/javascript'>
			$(document).ready(function(){
				$("select[name='permiss']").blur(function(){
					var $apt = $("input[name='apt']");
					var $cpf = $("input[name='cpf']");
					$.getJSON('function.php',{ 
						permiss: $( this ).val() 
					},function( json ){
						$apt.val( json.apt );
						$cpf.val( json.cpf );
					});
				});
			});
		</script>
		<h1>Aluno</h1>
		<form method="POST" action="">
		
		<label>Permissionario</label>
						<select name="permiss" class="form-control">
					            <option>Selecione</option>
					          <?php
							  include_once("conexao.php");
						          $result_permissioanario = "SELECT * FROM `permissionarios` WHERE `arquivo` = 'Nao'";
						          $resultado_permissionario = mysqli_query($conn, $result_permissioanario);
						          while($row_perm = mysqli_fetch_assoc($resultado_permissionario)){ ?>
						    	    <option value="<?php echo $row_perm['nome'];?>"><?php echo $row_perm['nome'];?></option> <?php
						          }
					          ?>
				          </select>
								<br><br>
			
			<label>Nome_Aluno</label>
			<input type="text" class="form-control" name="apt"><br><br>
			
			<label>Rg</label>
			<input type="text" class="form-control" name="cpf"><br><br>
			
			<input type="submit" value="Editar">
		</form>
	</body>
</html>