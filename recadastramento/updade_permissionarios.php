<?php
include('conexao.php');
                if(isset($_POST['upcontato'])) {

                  $id_permiss = $_POST['idPermiss'];                     
                  $aptpermiss = $_POST['aptPermiss'];
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
                  $atualizado = $_POST['atualizado'];
//echo $aptpermiss;
//echo  $saram;
//echo  $id_permiss;
                                     
                      $update = "UPDATE permissionarios SET apt=:aptpermiss,dataentr=:dataentr,postoesp=:postoesp,nome=:nome,cpf=:cpf,datanasc=:datanasc,sexo=:sexo,telcel=:telcel,secaotrab=:secaotrab,saram=:saram,email=:email,estadocv=:estadocv,filhos=:filhos_qtd,atualizado=:atualizado WHERE id_permissionarios = $id_permiss";
                     
                    try{
                        
                        $result = $conect ->prepare($update);
                        
                        $result->bindParam(':aptpermiss', $aptpermiss,PDO::PARAM_STR);
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
                        $result->bindParam(':filhos_qtd', $filhos_qtd,PDO::PARAM_STR);
                        $result->bindParam(':atualizado', $atualizado,PDO::PARAM_STR);
                        $result->execute();
                        $contar = $result->rowCount();
                        
                        if($contar > 0){
                         
                          echo '<script> location.replace("recadastramento.php?atualizado"); </script>';
                                                
                              
                          }else{
                           
                            echo '<script> location.replace("recadastramento.php?naoatualizado"); </script>';

                        

                        }

                        }catch(PDOException $e){
                          echo "<strong>ERRO DE PDO = </strong>".$e->getMessage(); 
                      }

                    };
                    
            ?>