<?php
session_start();
unset($_SESSION["nome_usuario"]);

session_destroy();

header("Location: pg-login.html"); 
exit(); 
?>
