<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "sa_bombeiros";

// cria a conexão
$conn = mysqli_connect($servername, $username, $password, $dbname);
// verifica a conexão
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
