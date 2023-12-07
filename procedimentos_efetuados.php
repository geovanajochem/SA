<?php
include('conexao.php');
session_start();


$id_paciente = $_SESSION['id_paciente'];

$aspiração = isset($_POST['aspiração']) ? 1 : 0;
$avaliacao_inicial = isset($_POST['avaliacao_inicial']) ? 1 : 0;
$avaliacao_dirigida = isset($_POST['avaliacao_dirigida']) ? 1 : 0;
$avaliacao_continuada = isset($_POST['avaliacao_continuada']) ? 1 : 0;
$chave_rautek = isset($_POST['chave_rautek']) ? 1 : 0;
$canula_guedel = isset($_POST['canula_guedel']) ? 1 : 0;
$desobstrucao_v_a = isset($_POST['desobstrucao_v_a']) ? 1 : 0;
$emprego_d_e_a = isset($_POST['emprego_d_e_a']) ? 1 : 0;
$gerenciamento_riscos = isset($_POST['gerenciamento_riscos']) ? 1 : 0;
$limpeza_ferimento = isset($_POST['limpeza_ferimento']) ? 1 : 0;
$curativos = isset($_POST['curativos']) ? 1 : 0;
$compressivo = isset($_POST['compressivo']) ? 1 : 0;
$encravamento = isset($_POST['encravamento']) ? 1 : 0;
$ocular = isset($_POST['ocular']) ? 1 : 0;
$queimadura = isset($_POST['queimadura']) ? 1 : 0;
$simples = isset($_POST['simples']) ? 1 : 0;
$tres_pontas = isset($_POST['3_pontas']) ? 1 : 0;
$imobilizacoes = isset($_POST['imobilizacoes']) ? 1 : 0;
$membro_INF_DIR = isset($_POST['membro_INF_DIR']) ? 1 : 0;
$membro_INF_ESQ = isset($_POST['membro_INF_ESQ']) ? 1 : 0;
$membro_SUP_DIR = isset($_POST['membro_SUP_DIR']) ? 1 : 0;
$membro_SUP_ESQ = isset($_POST['membro_SUP_ESQ']) ? 1 : 0;
$quadril = isset($_POST['quadril']) ? 1 : 0;
$cervical = isset($_POST['cervical']) ? 1 : 0;
$maca_sobre_rodas = isset($_POST['maca_sobre_rodas']) ? 1 : 0;
$maca_rigida = isset($_POST['maca_rigida']) ? 1 : 0;
$ponte = isset($_POST['ponte']) ? 1 : 0;
$retirado_capacete = isset($_POST['retirado_capacete']) ? 1 : 0;
$R_C_P = isset($_POST['R_C_P']) ? 1 : 0;
$rolamento_90° = isset($_POST['rolamento_90°']) ? 1 : 0;
$rolamento_180° = isset($_POST['rolamento_180°']) ? 1 : 0;
$tomada_decisao = isset($_POST['tomada_decisao']) ? 1 : 0;
$tratado_choque = isset($_POST['tratado_choque']) ? 1 : 0;
$uso_canula = isset($_POST['uso_canula']) ? 1 : 0;
$uso_colar = isset($_POST['uso_colar']) ? 1 : 0;
$uso_ked = isset($_POST['uso_ked']) ? 1 : 0;
$uso_ttf = isset($_POST['uso_ttf']) ? 1 : 0;
$ventilacao_suporte = isset($_POST['ventilacao_suporte']) ? 1 : 0;
$oxigenioterapia = isset($_POST['oxigenioterapia']) ? 1 : 0;
$reanimador = isset($_POST['reanimador']) ? 1 : 0;

// ----------

$sql = "INSERT INTO procedimentos_efetuados  VALUES ('$id_paciente','$aspiração', '$avaliacao_inicial', 
'$avaliacao_dirigida', '$avaliacao_continuada', '$chave_rautek', '$canula_guedel', '$desobstrucao_v_a', '$emprego_d_e_a', 
'$gerenciamento_riscos', '$limpeza_ferimento', '$curativos', '$compressivo', '$encravamento', '$ocular', '$queimadura', 
'$simples', '$tres_pontas', '$imobilizacoes', '$membro_INF_DIR', '$membro_INF_ESQ', '$membro_SUP_DIR', '$membro_SUP_ESQ', 
'$quadril', '$cervical', '$maca_sobre_rodas', '$maca_rigida', '$ponte', '$retirado_capacete', '$R_C_P', '$rolamento_90°', 
'$rolamento_180°', '$tomada_decisao', '$tratado_choque', '$uso_canula', '$uso_colar', '$uso_ked', '$uso_ttf', 
'$ventilacao_suporte', '$oxigenioterapia', '$reanimador')";

if ($conn->query($sql) === TRUE) {
    header("Location: enviado.html");
} else {
 echo "Erro ao cadastrar informações " . $conn->error;
}
// }
?>
