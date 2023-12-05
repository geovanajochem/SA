<?php
include('conexao.php');

// ----------------------------------------------------------------------

// Verifica a conexão
if (isset($_POST['data_ocorrido'], $_POST['sexo_f'], $_POST['sexo_m'], $_POST['nome_hospital'], $_POST['nome_vitima'], 
$_POST['idade_vitima'], $_POST['cpf_vitima'], $_POST['telefone_vitima'], $_POST['nome_acompanhante'], $_POST['idade_acompanhante'], 
$_POST['local_ocorrencia'], $_POST['n_usb'], $_POST['n_ocorr'], $_POST['cod_ir'], $_POST['cod_ps'])) {
    // Coleta os dados do formulário

    $data_ocorrido = $_POST['data_ocorrido'];
    $sexo_f = $_POST['sexo_f']=="on" ? 1 : 0 ;
    $sexo_m = $_POST['sexo_m']=="on" ? 1 : 0 ;
    $nome_hospital = $_POST['nome_hospital'];
    $nome_vitima = $_POST['nome_vitima'];
    $idade_vitima = $_POST['idade_vitima'];
    $cpf_vitima = $_POST['cpf_vitima'];
    $telefone_vitima = $_POST['telefone_vitima'];
    $nome_acompanhante = $_POST['nome_acompanhante'];
    $idade_acompanhante = $_POST['idade_acompanhante'];
    $local_ocorrencia = $_POST['local_ocorrencia'];
    $n_usb = $_POST['n_usb'];
    $n_ocorr = $_POST['n_ocorr'];
    $cod_ir = $_POST['cod_ir'];=="on" ? 1 : 0 ;
    $cod_ps = $_POST['cod_ps'];=="on" ? 1 : 0 ;

// Insere os dados na tabela de usuários
$sql = "INSERT INTO dados_pessoais (id_usuario, data_ocorrido, sexo_f, sexo_m, nome_hospital, nome_vitima, idade_vitima, cpf_vitima, telefone_vitima, nome_acompanhante, idade_acompanhante, local_ocorrencia, n_usb, n_ocorr, cod_ir, cod_ps) 
VALUES (NULL, '$data_ocorrido', '$sexo_f', '$sexo_m', '$nome_hospital', '$nome_vitima', '$idade_vitima', '$cpf_vitima', '$telefone_vitima', '$nome_acompanhante', '$idade_acompanhante', '$local_ocorrencia', '$n_usb', '$n_ocorr', '$cod_ir', '$cod_ps')";

if ($conn->query($sql) === TRUE) {
 echo "Usuário cadastrado com sucesso!";
} else {
 echo "Erro ao cadastrar o usuário: " . $conn->error;
}
}

// Fecha a conexão com o banco de dados
//$conn->close();
?>
