<?php
      include('conexao.php');

      $email = $_POST['email'];
      $senha1 = $_POST['password1'];
      $senha2 = $_POST['password2'];

      //echo $senha1;
      //echo $senha2;
      //echo $email; 

  



      if (!empty($email) and ($senha1 == $senha2)) {    
        //echo "<h2>O email informado foi  " . $email . "</h2>";    

        $senha1 = base64_encode($senha1);

        $update = "UPDATE usuarios SET senha_user=:senha1  WHERE email_user = :email";
                            
        try{
          
          $result = $conect ->prepare($update);
          $result->bindParam(':senha1', $senha1,PDO::PARAM_STR);
          $result->bindParam(':email', $email,PDO::PARAM_STR);
          $result->execute();
          $contar = $result->rowCount();
          if($contar > 0){
          
            echo ("<script>
                    window.alert('Senha Atualizada com sucesso!')
                    window.location.href='index.php';
                  </script>");
            }else{

                echo ("<script>
                window.alert('Senha não batem, verifique e tente novamente')
                 window.location.href='forgot-password.php';
                </script>");
                header("location: recover-password.php");
          }

          }catch(PDOException $e){
            echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
        }
    
        }else{
        echo ("<script>
                window.alert('Senha erro, tente novamente')
                window.location.href='forgot-password.php';
                </script>");  

        }
?>
