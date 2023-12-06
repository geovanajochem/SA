<?php
include('conexao.php');
session_start();
// ----------------------------------------------------------------------

// Verifica a conexão
// if (isset($_POST['data_ocorrido'], $_POST['sexo_f'], $_POST['sexo_m'], $_POST['nome_hospital'], $_POST['nome_vitima'], 
// $_POST['idade_vitima'], $_POST['cpf_vitima'], $_POST['telefone_vitima'], $_POST['nome_acompanhante'], $_POST['idade_acompanhante'], 
// $_POST['local_ocorrencia'], $_POST['n_usb'], $_POST['n_ocorr'], $_POST['cod_ir'], $_POST['cod_ps'])) {
    // Coleta os dados do formulário

    $data_ocorrido = $_POST['data_ocorrido'];
    $sexo = $_POST['sexo'];
    // $sexo_m = $_POST['sexo_m']=="on" ? 1 : 0 ;
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
    $cod_ir = $_POST['cod_ir']=="on" ? 1 : 0 ;
    $cod_ps = $_POST['cod_ps']=="on" ? 1 : 0 ;

// Insere os dados na tabela de usuários
$sql = $conn->prepare("INSERT INTO dados_pessoais VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$sql->bind_param("ssssssssss", $data_ocorrido, $sexo, $nome_hospital, $nome_vitima, $idade_vitima, $cpf_vitima, $telefone_vitima, $nome_acompanhante, $idade_acompanhante, $local_ocorrencia);

// 3. Execute a consulta
if ($sql->execute()) {
    // 4. Atribua o último ID inserido à variável de sessão
    $_SESSION['id_paciente'] = $conn->insert_id;
    $id_paciente = $_SESSION['id_paciente'];
    
    $sqlOcorrencia = "INSERT INTO informacao_ocorrencia (id_paciente, N_usb, n_ocorrencia, cod_ir, cod_ps )  
    VALUES ('$id_paciente','$n_usb', '$n_ocorr', '$cod_ir', '$cod_ps')";
    // print_r($id_paciente);
    //         print_r($sqlOcorrencia);
    //         die();
    if ($conn->query($sqlOcorrencia) === TRUE) {
        
        
        header("Location: problemas_encontrados.html");
    }

} else {
 echo "Erro ao cadastrar paciente: " . $conn->error;
}
// }

// Fecha a conexão com o banco de dados
//$conn->close();
?>
