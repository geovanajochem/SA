<?php
include('conexao.php');
session_start();
// ----------------------------------------------------------------------

    $data_ocorrido = $_POST['data_ocorrido'];
    $sexo = $_POST['sexo'];
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


$sql = $conn->prepare("INSERT INTO dados_pessoais VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$sql->bind_param("ssssssssss", $data_ocorrido, $sexo, $nome_hospital, $nome_vitima, $idade_vitima, $cpf_vitima, $telefone_vitima, $nome_acompanhante, $idade_acompanhante, $local_ocorrencia);

if ($sql->execute()) {
    
    $_SESSION['id_paciente'] = $conn->insert_id;
    $id_paciente = $_SESSION['id_paciente'];
    
    $sqlOcorrencia = "INSERT INTO informacao_ocorrencia (id_paciente, N_usb, n_ocorrencia, cod_ir, cod_ps )  
    VALUES ('$id_paciente','$n_usb', '$n_ocorr', '$cod_ir', '$cod_ps')";
    
    if ($conn->query($sqlOcorrencia) === TRUE) {
        
        
        header("Location: problemas_encontrados.html");
    }

} else {
 echo "Erro ao cadastrar paciente: " . $conn->error;
}

?>
