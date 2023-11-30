<?php
// Conexão com o banco de dados
include('conexao.php');

// Verifica a conexão
if (isset($_POST['nome_usuario'], $_POST['senha'], $_POST['funcao'], $_POST['unidade'], $_POST['registro_abvesc'], $_POST['validade'], $_POST['cpf'], $_POST['data_nasc'])) {
    // Coleta os dados do formulário

$nome_usuario = $_POST['nome_usuario'];
$senha =$_POST['senha'];
$funcao = $_POST['funcao'];
$unidade =$_POST['unidade'];
$registro_abvesc =$_POST['registro_abvesc'];
$validade =$_POST['validade'];
$cpf =$_POST['cpf'];
$data_nasc =$_POST['data_nasc'];

// Insere os dados na tabela de usuários
$sql = "INSERT INTO usuario (id_usuario, nome_usuario, funcao, senha, unidade, registro_abvesc, validade, cpf, data_nasc) 
VALUES (NULL, '$nome_usuario', '$funcao', '$senha', '$unidade', '$registro_abvesc', '$validade', '$cpf', '$data_nasc')";

if ($conn->query($sql) === TRUE) {
 echo "Usuário cadastrado com sucesso!";
} else {
 echo "Erro ao cadastrar o usuário: " . $conn->error;
}
}

// Fecha a conexão com o banco de dados
//$conn->close();
?>
