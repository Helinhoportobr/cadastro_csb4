<?php
 
 session_destroy();
 $_SESSION['loginUser'] ;
 $_SESSION['senhaUser'] ;
 
 echo 'You have cleaned session';
 header('location: index.php');
?>