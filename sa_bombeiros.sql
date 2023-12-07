-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/12/2023 às 03:31
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sa_bombeiros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_pessoais`
--

CREATE TABLE `dados_pessoais` (
  `id_paciente` int(11) NOT NULL,
  `data_ocorrido` date NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `nome_hospital` varchar(50) NOT NULL,
  `nome_vitima` varchar(50) NOT NULL,
  `idade_vitima` varchar(3) NOT NULL,
  `cpf_vitima` varchar(11) NOT NULL,
  `telefone_vitima` varchar(13) NOT NULL,
  `nome_acompanhante` varchar(50) NOT NULL,
  `idade_acompanhante` varchar(3) NOT NULL,
  `local_ocorrencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_pessoais`
--

INSERT INTO `dados_pessoais` (`id_paciente`, `data_ocorrido`, `sexo`, `nome_hospital`, `nome_vitima`, `idade_vitima`, `cpf_vitima`, `telefone_vitima`, `nome_acompanhante`, `idade_acompanhante`, `local_ocorrencia`) VALUES
(4, '2023-12-06', 'Masculino', 'A', 'B', '24', '12345678999', '47 99999-9999', 'C', '12', 'D'),
(5, '2023-12-13', 'Feminino', 'Dona Helena', 'Djeniffer', '31', '11111111111', '47 99999-9999', 'C', '12', 'D'),
(6, '2023-12-13', 'Feminino', 'Dona Helena2', 'Djeniffer2', '30', '11111111111', '47 99999-9999', 'C', '12', 'D'),
(7, '2023-12-07', 'Masculino', 'dq', 'wdq', '12', '11111111111', '11 99999-9999', 'fcfd', '52', 'sa');

-- --------------------------------------------------------

--
-- Estrutura para tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `id_paciente` int(11) NOT NULL,
  `critico` tinyint(1) NOT NULL,
  `instavel` tinyint(1) NOT NULL,
  `potencialmente_instavel` tinyint(1) NOT NULL,
  `estavel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_conducao`
--

CREATE TABLE `forma_conducao` (
  `id_paciente` int(11) NOT NULL,
  `deitada` tinyint(1) NOT NULL,
  `sentada` tinyint(1) NOT NULL,
  `semi_sentada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacao_ocorrencia`
--

CREATE TABLE `informacao_ocorrencia` (
  `id_paciente` int(11) NOT NULL,
  `N_usb` int(11) DEFAULT NULL,
  `n_ocorrencia` varchar(10) DEFAULT NULL,
  `desp` varchar(10) DEFAULT NULL,
  `h_ch` varchar(10) DEFAULT NULL,
  `km_final` varchar(10) DEFAULT NULL,
  `cod_ir` int(11) DEFAULT NULL,
  `cod_ps` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `informacao_ocorrencia`
--

INSERT INTO `informacao_ocorrencia` (`id_paciente`, `N_usb`, `n_ocorrencia`, `desp`, `h_ch`, `km_final`, `cod_ir`, `cod_ps`) VALUES
(4, 1, '2', NULL, NULL, NULL, 1, 1),
(5, 1, '2', NULL, NULL, NULL, 1, 1),
(6, 1, '2', NULL, NULL, NULL, 1, 1),
(7, 0, 'as', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas_encontrados`
--

CREATE TABLE `problemas_encontrados` (
  `id_paciente` int(11) NOT NULL,
  `psiquiatrico` tinyint(1) NOT NULL,
  `DPOC` tinyint(1) NOT NULL,
  `inalacao_fumaca` tinyint(1) NOT NULL,
  `hiperglicemia` tinyint(1) NOT NULL,
  `hipoglicemia` tinyint(1) NOT NULL,
  `parto_emergencia` tinyint(1) NOT NULL,
  `gestante` tinyint(1) NOT NULL,
  `hemorragia_excessiva` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `problemas_encontrados`
--

INSERT INTO `problemas_encontrados` (`id_paciente`, `psiquiatrico`, `DPOC`, `inalacao_fumaca`, `hiperglicemia`, `hipoglicemia`, `parto_emergencia`, `gestante`, `hemorragia_excessiva`, `outro`) VALUES
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `id_paciente` int(11) NOT NULL,
  `aspiracao` tinyint(1) NOT NULL,
  `avaliacao_inicial` tinyint(1) NOT NULL,
  `avaliacao_dirigida` tinyint(1) NOT NULL,
  `avaliacao_continuada` tinyint(1) NOT NULL,
  `chave_rautek` tinyint(1) NOT NULL,
  `canula_guedel` tinyint(1) NOT NULL,
  `desobstrucao_v_a` tinyint(1) NOT NULL,
  `emprego_d_e_a` tinyint(1) NOT NULL,
  `gerenciamento_riscos` tinyint(1) NOT NULL,
  `limpeza_ferimento` tinyint(1) NOT NULL,
  `curativos` tinyint(1) NOT NULL,
  `compressivo` tinyint(1) NOT NULL,
  `encravamento` tinyint(1) NOT NULL,
  `ocular` tinyint(1) NOT NULL,
  `queimadura` tinyint(1) NOT NULL,
  `simples` tinyint(1) NOT NULL,
  `3_pontas` tinyint(1) NOT NULL,
  `imobilizacoes` tinyint(1) NOT NULL,
  `membro_INF_DIR` tinyint(1) NOT NULL,
  `membro_INF_ESQ` tinyint(1) NOT NULL,
  `membro_SUP_DIR` tinyint(1) NOT NULL,
  `membro_SUP_ESQ` tinyint(1) NOT NULL,
  `quadril` tinyint(1) NOT NULL,
  `cervical` tinyint(1) NOT NULL,
  `maca_sobre_rodas` tinyint(1) NOT NULL,
  `maca_rigida` tinyint(1) NOT NULL,
  `ponte` tinyint(1) NOT NULL,
  `retirado_capacete` tinyint(1) NOT NULL,
  `R_C_P` tinyint(1) NOT NULL,
  `rolamento_90°` tinyint(1) NOT NULL,
  `rolamento_180°` tinyint(1) NOT NULL,
  `tomada_decisao` tinyint(1) NOT NULL,
  `tratado_choque` tinyint(1) NOT NULL,
  `uso_canula` tinyint(1) NOT NULL,
  `uso_colar` tinyint(1) NOT NULL,
  `uso_ked` tinyint(1) NOT NULL,
  `uso_ttf` tinyint(1) NOT NULL,
  `ventilacao_suporte` tinyint(1) NOT NULL,
  `oxigenioterapia` tinyint(1) NOT NULL,
  `reanimador` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `procedimentos_efetuados`
--

INSERT INTO `procedimentos_efetuados` (`id_paciente`, `aspiracao`, `avaliacao_inicial`, `avaliacao_dirigida`, `avaliacao_continuada`, `chave_rautek`, `canula_guedel`, `desobstrucao_v_a`, `emprego_d_e_a`, `gerenciamento_riscos`, `limpeza_ferimento`, `curativos`, `compressivo`, `encravamento`, `ocular`, `queimadura`, `simples`, `3_pontas`, `imobilizacoes`, `membro_INF_DIR`, `membro_INF_ESQ`, `membro_SUP_DIR`, `membro_SUP_ESQ`, `quadril`, `cervical`, `maca_sobre_rodas`, `maca_rigida`, `ponte`, `retirado_capacete`, `R_C_P`, `rolamento_90°`, `rolamento_180°`, `tomada_decisao`, `tratado_choque`, `uso_canula`, `uso_colar`, `uso_ked`, `uso_ttf`, `ventilacao_suporte`, `oxigenioterapia`, `reanimador`) VALUES
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_sintomas`
--

CREATE TABLE `sinais_sintomas` (
  `id_paciente` int(11) NOT NULL,
  `abdomem_sensivel_rigido` tinyint(1) NOT NULL,
  `afundamento_cranio` tinyint(1) NOT NULL,
  `agitacao` tinyint(1) NOT NULL,
  `amnesia` tinyint(1) NOT NULL,
  `angina_peito` tinyint(1) NOT NULL,
  `apineia` tinyint(1) NOT NULL,
  `bradicardia` tinyint(1) NOT NULL,
  `bradipneia` tinyint(1) NOT NULL,
  `bronco_aspirando` tinyint(1) NOT NULL,
  `cefaleia` tinyint(1) NOT NULL,
  `cianose_labios` tinyint(1) NOT NULL,
  `cianose_extremidades` tinyint(1) NOT NULL,
  `convulsao` tinyint(1) NOT NULL,
  `decorticacao` tinyint(1) NOT NULL,
  `deformidade` tinyint(1) NOT NULL,
  `descerebracao` tinyint(1) NOT NULL,
  `desmaio` tinyint(1) NOT NULL,
  `desvio_traqueia` tinyint(1) NOT NULL,
  `despneia` tinyint(1) NOT NULL,
  `dor_local` tinyint(1) NOT NULL,
  `edema_localizado` tinyint(1) NOT NULL,
  `edema_generalizado` tinyint(1) NOT NULL,
  `enfisema_subcutaneo` tinyint(1) NOT NULL,
  `face_palida` tinyint(1) NOT NULL,
  `hemorragia_interna` tinyint(1) NOT NULL,
  `hemorragia_externa` tinyint(1) NOT NULL,
  `hipertensao` tinyint(1) NOT NULL,
  `hipotencao` tinyint(1) NOT NULL,
  `nausea_vomitos` tinyint(1) NOT NULL,
  `nasoragia` tinyint(1) NOT NULL,
  `obito` tinyint(1) NOT NULL,
  `otorreia` tinyint(1) NOT NULL,
  `otorragia` tinyint(1) NOT NULL,
  `o_v_a_c_e` tinyint(1) NOT NULL,
  `parada_cardiaca` tinyint(1) NOT NULL,
  `parada_respiratoria` tinyint(1) NOT NULL,
  `priapismo` tinyint(1) NOT NULL,
  `prurido_pele` tinyint(1) NOT NULL,
  `pupilas_anisocoria` tinyint(1) NOT NULL,
  `pupilas_isocoria` tinyint(1) NOT NULL,
  `pupilas_midriase` tinyint(1) NOT NULL,
  `pupilas_miose` tinyint(1) NOT NULL,
  `pupilas_reagente` tinyint(1) NOT NULL,
  `pupilas_nao_reagente` tinyint(1) NOT NULL,
  `sede` tinyint(1) NOT NULL,
  `sinal_battle` tinyint(1) NOT NULL,
  `sinal_guaxinim` tinyint(1) NOT NULL,
  `sudorese` tinyint(1) NOT NULL,
  `taquipneia` tinyint(1) NOT NULL,
  `taquicardia` tinyint(1) NOT NULL,
  `tontura` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sinais_sintomas`
--

INSERT INTO `sinais_sintomas` (`id_paciente`, `abdomem_sensivel_rigido`, `afundamento_cranio`, `agitacao`, `amnesia`, `angina_peito`, `apineia`, `bradicardia`, `bradipneia`, `bronco_aspirando`, `cefaleia`, `cianose_labios`, `cianose_extremidades`, `convulsao`, `decorticacao`, `deformidade`, `descerebracao`, `desmaio`, `desvio_traqueia`, `despneia`, `dor_local`, `edema_localizado`, `edema_generalizado`, `enfisema_subcutaneo`, `face_palida`, `hemorragia_interna`, `hemorragia_externa`, `hipertensao`, `hipotencao`, `nausea_vomitos`, `nasoragia`, `obito`, `otorreia`, `otorragia`, `o_v_a_c_e`, `parada_cardiaca`, `parada_respiratoria`, `priapismo`, `prurido_pele`, `pupilas_anisocoria`, `pupilas_isocoria`, `pupilas_midriase`, `pupilas_miose`, `pupilas_reagente`, `pupilas_nao_reagente`, `sede`, `sinal_battle`, `sinal_guaxinim`, `sudorese`, `taquipneia`, `taquicardia`, `tontura`, `outro`) VALUES
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_ocorrencia`
--

CREATE TABLE `tipo_ocorrencia` (
  `id_paciente` int(11) NOT NULL,
  `causado_por_animais` tinyint(1) NOT NULL,
  `com_meio_transporte` tinyint(1) NOT NULL,
  `desmoronamento_deslizamento` tinyint(1) NOT NULL,
  `emergencia_medica` tinyint(1) NOT NULL,
  `queda_altura_2m` tinyint(1) NOT NULL,
  `tentativa_suicidio` tinyint(1) NOT NULL,
  `queda_propria_altura` tinyint(1) NOT NULL,
  `afogamento` tinyint(1) NOT NULL,
  `agressao` tinyint(1) NOT NULL,
  `atropelamento` tinyint(1) NOT NULL,
  `choque_eletrico` tinyint(1) NOT NULL,
  `desabamento` tinyint(1) NOT NULL,
  `domestico` tinyint(1) NOT NULL,
  `esportivo` tinyint(1) NOT NULL,
  `intoxicacao` tinyint(1) NOT NULL,
  `queda_bicicleta` tinyint(1) NOT NULL,
  `queda_moto` tinyint(1) NOT NULL,
  `queda_maior_2m` tinyint(1) NOT NULL,
  `trabalho` tinyint(1) NOT NULL,
  `transferencia` tinyint(1) NOT NULL,
  `outro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo_ocorrencia`
--

INSERT INTO `tipo_ocorrencia` (`id_paciente`, `causado_por_animais`, `com_meio_transporte`, `desmoronamento_deslizamento`, `emergencia_medica`, `queda_altura_2m`, `tentativa_suicidio`, `queda_propria_altura`, `afogamento`, `agressao`, `atropelamento`, `choque_eletrico`, `desabamento`, `domestico`, `esportivo`, `intoxicacao`, `queda_bicicleta`, `queda_moto`, `queda_maior_2m`, `trabalho`, `transferencia`, `outro`) VALUES
(6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte`
--

CREATE TABLE `transporte` (
  `id_paciente` int(11) NOT NULL,
  `aereo` tinyint(1) NOT NULL,
  `clinico` tinyint(1) NOT NULL,
  `emergencial` tinyint(1) NOT NULL,
  `pos_trauma` tinyint(1) NOT NULL,
  `samu` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL,
  `sem_remocao` tinyint(1) NOT NULL,
  `forma_conducao_deitada` tinyint(1) NOT NULL,
  `forma_conducao_sentada` tinyint(1) NOT NULL,
  `forma_conducao_semi_sentada` tinyint(1) NOT NULL,
  `decisao_transporte_critico` tinyint(1) NOT NULL,
  `decisao_transporte_instavel` tinyint(1) NOT NULL,
  `decisao_transporte_potencialmente_intavel` tinyint(1) NOT NULL,
  `decisao_transporte_estavel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `transporte`
--

INSERT INTO `transporte` (`id_paciente`, `aereo`, `clinico`, `emergencial`, `pos_trauma`, `samu`, `outro`, `sem_remocao`, `forma_conducao_deitada`, `forma_conducao_sentada`, `forma_conducao_semi_sentada`, `decisao_transporte_critico`, `decisao_transporte_instavel`, `decisao_transporte_potencialmente_intavel`, `decisao_transporte_estavel`) VALUES
(7, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome_usuario` varchar(20) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `nome_completo` varchar(30) DEFAULT NULL,
  `funcao` varchar(19) DEFAULT NULL,
  `registro_abvesc` int(11) DEFAULT NULL,
  `n_unidade` int(11) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `data_nasc` varchar(10) DEFAULT NULL,
  `validade` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome_usuario`, `senha`, `cpf`, `nome_completo`, `funcao`, `registro_abvesc`, `n_unidade`, `unidade`, `data_nasc`, `validade`) VALUES
(1, 'arthur_lima', 'art123', '1076380015', 'Arthur de Lima Pereira', 'Bombeiro volunt?rio', 140001, 14, 'Joinville', '02/08/2005', '09/10/2024'),
(2, 'user_adm', 'sou.adm', '', '', '', 0, 0, '', '', ''),
(3, 'ana_ju', 'naju123', '13454347904', 'Ana Julia Briesemeister Xavier', 'Bombeiro volunt?rio', 160001, 16, 'Joinville', '16/06/2005', '09/10/2024');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vitima_era`
--

CREATE TABLE `vitima_era` (
  `id_paciente` int(11) NOT NULL,
  `ciclista` tinyint(1) NOT NULL,
  `condutor_moto` tinyint(1) NOT NULL,
  `gestante` tinyint(1) NOT NULL,
  `passageiro_banco_frente` tinyint(1) NOT NULL,
  `passageiro_banco_tras` tinyint(1) NOT NULL,
  `condutor_carro` tinyint(1) NOT NULL,
  `clinico` tinyint(1) NOT NULL,
  `trauma` tinyint(1) NOT NULL,
  `passageiro_moto` tinyint(1) NOT NULL,
  `pedestre` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vitima_era`
--

INSERT INTO `vitima_era` (`id_paciente`, `ciclista`, `condutor_moto`, `gestante`, `passageiro_banco_frente`, `passageiro_banco_tras`, `condutor_carro`, `clinico`, `trauma`, `passageiro_moto`, `pedestre`) VALUES
(7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `dados_pessoais`
--
ALTER TABLE `dados_pessoais`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `decisao_transporte`
--
ALTER TABLE `decisao_transporte`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `forma_conducao`
--
ALTER TABLE `forma_conducao`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `informacao_ocorrencia`
--
ALTER TABLE `informacao_ocorrencia`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `sinais_sintomas`
--
ALTER TABLE `sinais_sintomas`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `tipo_ocorrencia`
--
ALTER TABLE `tipo_ocorrencia`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `transporte`
--
ALTER TABLE `transporte`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vitima_era`
--
ALTER TABLE `vitima_era`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dados_pessoais`
--
ALTER TABLE `dados_pessoais`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `decisao_transporte`
--
ALTER TABLE `decisao_transporte`
  ADD CONSTRAINT `decisao_transporte_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `forma_conducao`
--
ALTER TABLE `forma_conducao`
  ADD CONSTRAINT `forma_conducao_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `informacao_ocorrencia`
--
ALTER TABLE `informacao_ocorrencia`
  ADD CONSTRAINT `informacao_ocorrencia_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `problemas_encontrados`
--
ALTER TABLE `problemas_encontrados`
  ADD CONSTRAINT `problemas_encontrados_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `procedimentos_efetuados`
--
ALTER TABLE `procedimentos_efetuados`
  ADD CONSTRAINT `procedimentos_efetuados_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `sinais_sintomas`
--
ALTER TABLE `sinais_sintomas`
  ADD CONSTRAINT `sinais_sintomas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `tipo_ocorrencia`
--
ALTER TABLE `tipo_ocorrencia`
  ADD CONSTRAINT `tipo_ocorrencia_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `transporte`
--
ALTER TABLE `transporte`
  ADD CONSTRAINT `transporte_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);

--
-- Restrições para tabelas `vitima_era`
--
ALTER TABLE `vitima_era`
  ADD CONSTRAINT `vitima_era_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `dados_pessoais` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
