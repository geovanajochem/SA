<?php
include('conexao.php');
session_start();


$id_paciente = $_SESSION['id_paciente'];

$causado_por_animais = isset($_POST['causado_por_animais']) ? 1 : 0;
$com_meio_transporte = isset($_POST['com_meio_transporte']) ? 1 : 0;
$desmoronamento_deslizamento = isset($_POST['desmoronamento_deslizamento']) ? 1 : 0;
$emergencia_medica = isset($_POST['emergencia_medica']) ? 1 : 0;
$queda_altura_2m = isset($_POST['queda_altura_2m']) ? 1 : 0;
$tentativa_suicidio = isset($_POST['tentativa_suicidio']) ? 1 : 0;
$queda_propria_altura = isset($_POST['queda_propria_altura']) ? 1 : 0;
$afogamento = isset($_POST['afogamento']) ? 1 : 0;
$agressao = isset($_POST['agressao']) ? 1 : 0;
$atropelamento = isset($_POST['atropelamento']) ? 1 : 0;
$choque_eletrico = isset($_POST['choque_eletrico']) ? 1 : 0;
$desabamento = isset($_POST['desabamento']) ? 1 : 0;
$domestico = isset($_POST['domestico']) ? 1 : 0;
$esportivo = isset($_POST['esportivo']) ? 1 : 0;
$intoxicao = isset($_POST['intoxicao']) ? 1 : 0;
$queda_bicicleta = isset($_POST['queda_bicicleta']) ? 1 : 0;
$queda_moto = isset($_POST['queda_moto']) ? 1 : 0;
$queda_maior_2m = isset($_POST['queda_maior_2m']) ? 1 : 0;
$trabalho = isset($_POST['trabalho']) ? 1 : 0;
$transaferencia = isset($_POST['transaferencia']) ? 1 : 0;
$outro = isset($_POST['outro']) ? $_POST['outro'] : "";


$sql = "INSERT INTO tipo_ocorrencia  VALUES ('$id_paciente','$causado_por_animais', '$com_meio_transporte', 
'$desmoronamento_deslizamento', '$emergencia_medica', '$queda_altura_2m', '$tentativa_suicidio', 
'$queda_propria_altura', '$afogamento', '$agressao', '$atropelamento', '$choque_eletrico', '$desabamento', '$domestico', 
'$esportivo', '$intoxicao', '$queda_bicicleta', '$queda_moto', '$queda_maior_2m', '$trabalho', '$transaferencia', '$outro')";//21

if ($conn->query($sql) === TRUE) {
    header("Location: transporte.html");
} else {
 echo "Erro ao cadastrar informações " . $conn->error;
}
// }
?>
