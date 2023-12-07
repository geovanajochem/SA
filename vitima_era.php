<?php
include('conexao.php');
session_start();
// ----------------------------------------------------------------------
$id_paciente = $_SESSION['id_paciente'];

    $ciclista = isset($_POST['ciclista']) ? 1 : 0;
    $condutor_moto = isset($_POST['condutor_moto']) ? 1 : 0;
    $gestante = isset($_POST['gestante']) ? 1 : 0;
    $passageiro_banco_frente = isset($_POST['passageiro_banco_frente']) ? 1 : 0;
    $passageiro_banco_tras = isset($_POST['passageiro_banco_tras']) ? 1 : 0;
    $condutor_carro = isset($_POST['condutor_carro']) ? 1 : 0;
    $clinico = isset($_POST['clinico']) ? 1 : 0;
    $trauma = isset($_POST['trauma']) ? 1 : 0;
    $passageiro_moto = isset($_POST['forma_conducao_sentada']) ? 1 : 0;
    $pedestre = isset($_POST['forma_conducao_semi_sentada']) ? 1 : 0;

    $sql = "INSERT INTO vitima_era  VALUES ('$id_paciente','$ciclista', '$condutor_moto', '$gestante', 
    '$passageiro_banco_frente', '$passageiro_banco_tras', '$condutor_carro', '$clinico', '$trauma', '$passageiro_moto', 
    '$pedestre')";

    if ($conn->query($sql) === TRUE) {
    header("Location: procedimentos_efetuados.html");
        } else {
            echo "Erro ao cadastrar informações " . $conn->error;
                }
// }
?>
