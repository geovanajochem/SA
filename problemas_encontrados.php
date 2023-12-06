<?php
include('conexao.php');
session_start();


$id_paciente = $_SESSION['id_paciente'];

$psiquiatrico = isset($_POST['psiquiatrico']) ? 1 : 0;
$DPOC = isset($_POST['DPOC']) ? 1 : 0;
$inalacao_fumaca = isset($_POST['inalacao_fumaca']) ? 1 : 0;
$hiperglicemia = isset($_POST['hiperglicemia']) ? 1 : 0;
$hipoglicemia = isset($_POST['hipoglicemia']) ? 1 : 0;
$parto_emergencia = isset($_POST['parto_emergencia']) ? 1 : 0;
$gestante = isset($_POST['gestante']) ? 1 : 0;
$hemorragia_excessiva = isset($_POST['hemorragia_excessiva']) ? 1 : 0;
$outro = isset($_POST['outro']) ? $_POST['outro'] : "";


$sql = "INSERT INTO problemas_encontrados  VALUES ('$id_paciente','$psiquiatrico', '$DPOC', '$inalacao_fumaca', 
'$hiperglicemia', '$hipoglicemia', '$parto_emergencia', '$gestante', '$hemorragia_excessiva', '$outro')";

if ($conn->query($sql) === TRUE) {
    header("Location: sinais_sintomas.html");
} else {
 echo "Erro ao cadastrar informações " . $conn->error;
}
// }
?>
