<?php
include('conexao.php');
session_start();
// ----------------------------------------------------------------------
$id_paciente = $_SESSION['id_paciente'];

    $aereo = isset($_POST['aereo']) ? 1 : 0;
    $clinico = isset($_POST['clinico']) ? 1 : 0;
    $emergencial = isset($_POST['emergencial']) ? 1 : 0;
    $pos_trauma = isset($_POST['pos_trauma']) ? 1 : 0;
    $samu = isset($_POST['samu']) ? 1 : 0;
    $outro = isset($_POST['outro']) ? $_POST['outro'] : "";
    $sem_remocao = isset($_POST['sem_remocao']) ? 1 : 0;
    $forma_conducao_deitada = isset($_POST['forma_conducao_deitada']) ? 1 : 0;
    $forma_conducao_sentada = isset($_POST['forma_conducao_sentada']) ? 1 : 0;
    $forma_conducao_semi_sentada = isset($_POST['forma_conducao_semi_sentada']) ? 1 : 0;
    $decisao_transporte_critico = isset($_POST['decisao_transporte_critico']) ? 1 : 0;
    $decisao_transporte_instavel = isset($_POST['decisao_transporte_instavel']) ? 1 : 0;
    $decisao_transporte_potencialmente_instavel = isset($_POST['decisao_transporte_potencialmente_instavel']) ? 1 : 0;
    $decisao_transporte_estavel = isset($_POST['decisao_transporte_estavel']) ? 1 : 0;


    $sql = "INSERT INTO transporte  VALUES ('$id_paciente','$aereo', '$clinico', '$emergencial', '$pos_trauma', 
    '$samu', '$outro', '$sem_remocao', '$forma_conducao_deitada', '$forma_conducao_sentada', '$forma_conducao_semi_sentada', 
    '$decisao_transporte_critico', '$decisao_transporte_instavel', '$decisao_transporte_potencialmente_instavel', 
    '$decisao_transporte_estavel')";

    if ($conn->query($sql) === TRUE) {
    header("Location: vitima_era.html");
        } else {
            echo "Erro ao cadastrar informações " . $conn->error;
                }
// }
?>
