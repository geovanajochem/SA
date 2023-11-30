<?php
        include('conexao.php'); /*arquivo de conexão com o bando de dados*/

        if(isset($_POST['button'])) {
            $nome_usuario = $_POST['nome_usuario']; /*name do email-input*/
            $senha = $_POST['senha']; /*name do password-input*/
            
            $sql = "SELECT nome_usuario, senha FROM usuario WHERE nome_usuario = '$nome_usuario' && senha = '$senha'"; /*informações de tabela e campos de acordo como seu BD*/
            $result = mysqli_query($conn, $sql);
    
            if (mysqli_num_rows($result) > 0) { 
                $login=$result->fetch_assoc();
                session_start();
                $_SESSION["nome_usuario"]=$login["nome_usuario"];
                $_SESSION["senha"]=$login["senha"];
                header("Location: menu.html"); /*local para onde deseja redirecionar o usuário*/
            } else {
                header("Location: https://www.google.com"); /*local para onde deseja redirecionar o usuário*/
                /*echo "<script>document.querySelector('#form-text').innerText = 'E-mail ou senha inválidos'</script>";*/
            }
        }
        
        //mysqli_close($conn);
    ?>
