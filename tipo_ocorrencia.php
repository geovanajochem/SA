<?php
include('conexao.php');

if (isset($_POST['causado_por_animais'], $_POST['com_meio_transporte'], $_POST['desmoronamento_deslizamento'], 
$_POST['emergencia_medica'], $_POST['queda_altura_2m'], $_POST['tentativa_suicidio'], $_POST['queda_propria_altura'], 
$_POST['afogamento'], $_POST['agressao'], $_POST['atropelamento'], $_POST['choque_eletrico'], $_POST['desabamento'], 
$_POST['domestico'], $_POST['intoxicao'], $_POST['queda_bicicleta'], $_POST['queda_moto'], $_POST['queda_maior_2m'], 
$_POST['trabalho'], $_POST['transaferencia'], $_POST['outro'])) {
    // Coleta os dados do formulário

    $causado_por_animais = $_POST['causado_por_animais']=="on" ? 1 : 0 ;
    $com_meio_transporte = $_POS['com_meio_transporte']=="on" ? 1 : 0 ;
    $desmoronamento_deslizamento = $_POST['desmoronamento_deslizamento']=="on" ? 1 : 0 ;
    $emergencia_medica = $_POST['emergencia_medica']=="on" ? 1 : 0 ;
    $queda_altura_2m = $_POST['queda_altura_2m']=="on" ? 1 : 0 ;
    $tentativa_suicidio = $_POST['tentativa_suicidio']=="on" ? 1 : 0 ;
    $queda_propria_altura = $_POST['queda_propria_altura']=="on" ? 1 : 0 ;
    $afogamento = $_POST['afogamento']=="on" ? 1 : 0 ;
    $agressao = $_POST['agressao']=="on" ? 1 : 0 ;
    $atropelamento = $_POST['atropelamento']=="on" ? 1 : 0 ;
    $choque_eletrico = $_POST['choque_eletrico']=="on" ? 1 : 0 ;
    $desabamento = $_POST['desabamento']=="on" ? 1 : 0 ;
    $domestico = $_POST['domestico']=="on" ? 1 : 0 ;
    $intoxicao = $_POST['intoxicao']=="on" ? 1 : 0 ;
    $queda_bicicleta = $_POST['queda_bicicleta']=="on" ? 1 : 0 ;
    $queda_moto = $_POST['queda_moto']=="on" ? 1 : 0 ;
    $queda_maior_2m = $_POST['queda_maior_2m']=="on" ? 1 : 0 ;
    $trabalho = $_POST['trabalho']=="on" ? 1 : 0 ;
    $transaferencia  = $_POST['transaferencia']=="on" ? 1 : 0 ;
    $outro = $_POST['outro'];

// Insere os dados na tabela de usuários
$sql = "INSERT INTO tipo_ocorrencia (id_tipo_ocorrencia, causado_por_animais, com_meio_transporte, 
desmoronamento_deslizamento, emergencia_medica, queda_altura_2m, tentativa_suicidio, queda_propria_altura, afogamento, 
agressao, atropelamento, choque_eletrico, desabamento, domestico, intoxicao, queda_bicicleta, queda_moto, 
queda_maior_2m, trabalho, transaferencia, outro) VALUES (null, '$causado_por_animais', '$com_meio_transporte', 
'$desmoronamento_deslizamento', '$emergencia_medica', '$queda_altura_2m', '$tentativa_suicidio', 
'$queda_propria_altura', '$afogamento', '$agressao', '$atropelamento', '$choque_eletrico', '$desabamento', '$domestico', 
'$intoxicao', '$queda_bicicleta', '$queda_moto', '$queda_maior_2m', '$trabalho', '$transaferencia', '$outro')";//21

if ($conn->query($sql) === TRUE) {
    header("Location: transporte.html"); 
} else {
 echo "Erro ao cadastrar informações " . $conn->error;
}
}
?>
