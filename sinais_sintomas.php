<?php
include('conexao.php');
session_start();


$id_paciente = $_SESSION['id_paciente'];

$abdomem_sensivel_rigido = isset($_POST['abdomem_sensivel_rigido']) ? 1 : 0;
$afundamento_cranio = isset($_POST['afundamento_cranio']) ? 1 : 0;
$agitacao = isset($_POST['agitacao']) ? 1 : 0;
$amnesia = isset($_POST['amnesia']) ? 1 : 0;
$angina_peito = isset($_POST['angina_peito']) ? 1 : 0;
$apineia = isset($_POST['apineia']) ? 1 : 0;
$bradicardia = isset($_POST['bradicardia']) ? 1 : 0;
$bradipneia = isset($_POST['bradipneia']) ? 1 : 0;
$bronco_aspirando = isset($_POST['bronco_aspirando']) ? 1 : 0;
$cefaleia = isset($_POST['cefaleia']) ? 1 : 0;
$cianose_labios = isset($_POST['cianose_labios']) ? 1 : 0;
$cianose_extremidades = isset($_POST['cianose_extremidades']) ? 1 : 0;
$convulsao = isset($_POST['convulsao']) ? 1 : 0;
$decorticacao = isset($_POST['decorticacao']) ? 1 : 0;
$deformidade = isset($_POST['deformidade']) ? 1 : 0;
$descerebracao = isset($_POST['descerebracao']) ? 1 : 0;
$desmaio = isset($_POST['desmaio']) ? 1 : 0;
$desvio_traqueia = isset($_POST['desvio_traqueia']) ? 1 : 0;
$despneia = isset($_POST['despneia']) ? 1 : 0;
$dor_local = isset($_POST['dor_local']) ? 1 : 0;
$edema_localizado = isset($_POST['edema_localizado']) ? 1 : 0;
$edema_generalizado = isset($_POST['edema_generalizado']) ? 1 : 0;
$enfisema_subcutaneo = isset($_POST['enfisema_subcutaneo']) ? 1 : 0;
$face_palida = isset($_POST['face_palida']) ? 1 : 0;
$hemorragia_interna = isset($_POST['hemorragia_interna']) ? 1 : 0;
$hemorragia_externa = isset($_POST['hemorragia_externa']) ? 1 : 0;
$hipertensao = isset($_POST['hipertensao']) ? 1 : 0;
$hipotencao = isset($_POST['hipotencao']) ? 1 : 0;
$nausea_vomitos = isset($_POST['nausea_vomitos']) ? 1 : 0;
$nasoragia = isset($_POST['nasoragia']) ? 1 : 0;
$obito = isset($_POST['obito']) ? 1 : 0;
$otorreia = isset($_POST['otorreia']) ? 1 : 0;
$otorragia = isset($_POST['otorragia']) ? 1 : 0;
$o_v_a_c_e = isset($_POST['o_v_a_c_e']) ? 1 : 0;
$parada_cardiaca = isset($_POST['parada_cardiaca']) ? 1 : 0;
$parada_respiratoria = isset($_POST['parada_respiratoria']) ? 1 : 0;
$priapismo = isset($_POST['priapismo']) ? 1 : 0;
$prurido_pele = isset($_POST['prurido_pele']) ? 1 : 0;
$pupilas_anisocoria = isset($_POST['pupilas_anisocoria']) ? 1 : 0;
$pupilas_isocoria = isset($_POST['pupilas_isocoria']) ? 1 : 0;
$pupilas_midriase = isset($_POST['pupilas_midriase']) ? 1 : 0;
$pupilas_miose = isset($_POST['pupilas_miose']) ? 1 : 0;
$pupilas_reagente = isset($_POST['pupilas_reagente']) ? 1 : 0;
$pupilas_nao_reagente = isset($_POST['pupilas_nao_reagente']) ? 1 : 0;
$sede = isset($_POST['sede']) ? 1 : 0;
$sinal_battle = isset($_POST['sinal_battle']) ? 1 : 0;
$sinal_guaxinim = isset($_POST['sinal_guaxinim']) ? 1 : 0;
$sudorese = isset($_POST['sudorese']) ? 1 : 0;
$taquipneia = isset($_POST['taquipneia']) ? 1 : 0;
$taquicardia = isset($_POST['taquicardia']) ? 1 : 0;
$tontura = isset($_POST['tontura']) ? 1 : 0;
$outro = isset($_POST['outro']) ? $_POST['outro'] : "";

// ----------

$sql = "INSERT INTO sinais_sintomas  VALUES ('$id_paciente','$abdomem_sensivel_rigido', '$afundamento_cranio', 
'$agitacao', '$amnesia', '$angina_peito', '$apineia', '$bradicardia', '$bradipneia', '$bronco_aspirando', '$cefaleia', 
'$cianose_labios', '$cianose_extremidades', '$convulsao', '$decorticacao', '$deformidade', '$descerebracao', 
'$desmaio', '$desvio_traqueia', '$despneia', '$dor_local', '$edema_localizado', '$edema_generalizado', 
'$enfisema_subcutaneo', '$face_palida', '$hemorragia_interna', '$hemorragia_externa', '$hipertensao', '$hipotencao', 
'$nausea_vomitos', '$nasoragia', '$obito', '$otorreia', '$otorragia', '$o_v_a_c_e', '$parada_cardiaca', 
'$parada_respiratoria', '$priapismo', '$prurido_pele', '$pupilas_anisocoria', '$pupilas_isocoria', '$pupilas_midriase', 
'$pupilas_miose', '$pupilas_reagente', '$pupilas_nao_reagente', '$sede', '$sinal_battle', '$sinal_guaxinim', '$sudorese', 
'$taquipneia', '$taquicardia', '$tontura', '$outro')";

if ($conn->query($sql) === TRUE) {
    header("Location: tipo_ocorrencia.html");
} else {
 echo "Erro ao cadastrar informações " . $conn->error;
}
// }
?>
