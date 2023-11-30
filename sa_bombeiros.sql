-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/11/2023 às 00:56
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
-- Estrutura para tabela `anamnese_emergencia_medica`
--

CREATE TABLE `anamnese_emergencia_medica` (
  `o_que_aconteceu` varchar(200) NOT NULL,
  `aconteceu_outras_vezes` tinyint(1) NOT NULL,
  `a_quanto_tempo_isto_aconteceu` varchar(10) NOT NULL,
  `possui_algum_problema_saude` tinyint(1) NOT NULL,
  `quais` varchar(100) NOT NULL,
  `faz_uso_medicacao` tinyint(1) NOT NULL,
  `hr_ultima_medicacao` time NOT NULL,
  `quais_medicacoes` varchar(200) NOT NULL,
  `alegico_a_algo` tinyint(1) NOT NULL,
  `se_sim_especifique` varchar(100) NOT NULL,
  `ingeriu_alimento_ou_liquido>=6hrs` tinyint(1) NOT NULL,
  `que_hrs` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `anamnese_gestacional`
--

CREATE TABLE `anamnese_gestacional` (
  `periodo_gestacao` varchar(10) NOT NULL,
  `fez_pre-natal` tinyint(1) NOT NULL,
  `nome_medico` varchar(50) NOT NULL,
  `existe_possibilidade_complicacao` tinyint(1) NOT NULL,
  `e_o_primeiro_filho` tinyint(1) NOT NULL,
  `quantos` varchar(2) NOT NULL,
  `que_hrs_iniciaram_contracoes` time NOT NULL,
  `tempo_das_contracoes_duracao` varchar(2) NOT NULL,
  `tempo_das_contracoes_intervalo` varchar(2) NOT NULL,
  `sente_pressao_regiao_quadril_ou_vontade_de_evacuar` tinyint(1) NOT NULL,
  `ja_houve_ruptura_bolsa` tinyint(1) NOT NULL,
  `foi_feito_inspecao_visual` tinyint(1) NOT NULL,
  `parto_realizado` tinyint(1) NOT NULL,
  `hr_nascimento` time NOT NULL,
  `sexo_bb` tinyint(1) NOT NULL,
  `nome_bb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao_cinematica`
--

CREATE TABLE `avaliacao_cinematica` (
  `disturbio_comportamento` tinyint(1) NOT NULL,
  `encontrado_de_capacete` tinyint(1) NOT NULL,
  `encontrado_de_cinto` tinyint(1) NOT NULL,
  `para-brisas_avariado` tinyint(1) NOT NULL,
  `caminhando_na_cena` tinyint(1) NOT NULL,
  `painel_avariado` tinyint(1) NOT NULL,
  `volante_torcido` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_pessoais`
--

CREATE TABLE `dados_pessoais` (
  `data_ocorrido` date NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `nome_hospital` varchar(50) NOT NULL,
  `nome_vitima` varchar(50) NOT NULL,
  `idade_vitima` varchar(3) NOT NULL,
  `cpf_vitima` varchar(11) NOT NULL,
  `telefone_vitima` varchar(13) NOT NULL,
  `nome_acompanhante` varchar(50) NOT NULL,
  `idade_acompanhante` varchar(3) NOT NULL,
  `local_ocorrencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `decisao_transporte`
--

CREATE TABLE `decisao_transporte` (
  `critico` tinyint(1) NOT NULL,
  `instavel` tinyint(1) NOT NULL,
  `potencialmente_instavel` tinyint(1) NOT NULL,
  `estavel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `divulgar_p_imprenca`
--

CREATE TABLE `divulgar_p_imprenca` (
  `sim` tinyint(1) NOT NULL,
  `nao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_conducao`
--

CREATE TABLE `forma_conducao` (
  `deitada` tinyint(1) NOT NULL,
  `sentada` tinyint(1) NOT NULL,
  `semi_sentada` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `informacao_ocorrencia`
--

CREATE TABLE `informacao_ocorrencia` (
  `N_usb` int(11) NOT NULL,
  `n_ocorrencia` varchar(10) NOT NULL,
  `desp` varchar(10) NOT NULL,
  `h_ch` varchar(10) NOT NULL,
  `km_final` varchar(10) NOT NULL,
  `cod_ir` int(11) NOT NULL,
  `cod_ps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `localizacao_traumas`
--

CREATE TABLE `localizacao_traumas` (
  `local` varchar(20) NOT NULL,
  `lado` varchar(20) NOT NULL,
  `face` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_deixado_hospital`
--

CREATE TABLE `materiais_utilizados_deixado_hospital` (
  `base_estabiliza` varchar(2) NOT NULL,
  `colar_n_pp_p` text NOT NULL,
  `colar_m_g` varchar(2) NOT NULL,
  `coxins_estabiliza` varchar(2) NOT NULL,
  `ked` varchar(2) NOT NULL,
  `maca_rigida` varchar(2) NOT NULL,
  `t.t.f` varchar(2) NOT NULL,
  `tirante_aranha` varchar(2) NOT NULL,
  `tirante_cabeca` varchar(2) NOT NULL,
  `canula` varchar(2) NOT NULL,
  `outro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais_utilizados_descartavel`
--

CREATE TABLE `materiais_utilizados_descartavel` (
  `ataduras` varchar(2) NOT NULL,
  `cateter_tp.oculos` varchar(2) NOT NULL,
  `compressa_comum` varchar(2) NOT NULL,
  `kits` varchar(2) NOT NULL,
  `luvas_desc` varchar(2) NOT NULL,
  `mascara_desc` varchar(2) NOT NULL,
  `manta_aluminizada` varchar(2) NOT NULL,
  `pas_do_dea` varchar(2) NOT NULL,
  `sonda_aspiracao` varchar(2) NOT NULL,
  `soro_fisiologico` varchar(2) NOT NULL,
  `talas_pap.` varchar(2) NOT NULL,
  `outro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `problemas_encontrados`
--

CREATE TABLE `problemas_encontrados` (
  `id_problemas_encontrados` int(11) NOT NULL,
  `psiquiatrico` tinyint(1) NOT NULL,
  `respiratório_DPOC` tinyint(1) NOT NULL,
  `respiratório_inalacao_fumaca` tinyint(1) NOT NULL,
  `diabetes_hiperglicemia` tinyint(1) NOT NULL,
  `diabetes_hipoglicemia` tinyint(1) NOT NULL,
  `obstetrico_parto_emergencia` tinyint(1) NOT NULL,
  `obstetrico_gestante` tinyint(1) NOT NULL,
  `obstetrico_hemorragia_excessiva` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimentos_efetuados`
--

CREATE TABLE `procedimentos_efetuados` (
  `aspiracao` tinyint(1) NOT NULL,
  `avaliacao_inicial` tinyint(1) NOT NULL,
  `avaliacao_dirigida` tinyint(1) NOT NULL,
  `avaliacao_continuada` tinyint(1) NOT NULL,
  `chave_rautek` tinyint(1) NOT NULL,
  `canula_guedel` tinyint(1) NOT NULL,
  `desobstrucao_v.a.` tinyint(1) NOT NULL,
  `emprego_d.e.a.` tinyint(1) NOT NULL,
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
  `membro_inf.dir.` tinyint(1) NOT NULL,
  `membro_inf.esq` tinyint(1) NOT NULL,
  `membro_sup.dir` tinyint(1) NOT NULL,
  `membro_sup.esq` tinyint(1) NOT NULL,
  `quadril` tinyint(1) NOT NULL,
  `cervical` tinyint(1) NOT NULL,
  `maca_sobre_rodas` tinyint(1) NOT NULL,
  `maca_rigida` tinyint(1) NOT NULL,
  `ponte` tinyint(1) NOT NULL,
  `retirado_capacete` tinyint(1) NOT NULL,
  `r.c.p.` tinyint(1) NOT NULL,
  `rolamento_90°` tinyint(1) NOT NULL,
  `rolamento_180°` tinyint(1) NOT NULL,
  `tomada_decisao` tinyint(1) NOT NULL,
  `tratado_choque` tinyint(1) NOT NULL,
  `uso_canula` tinyint(1) NOT NULL,
  `uso_colar` tinyint(1) NOT NULL,
  `uso_colar_tamanho` int(11) NOT NULL,
  `uso_ked` tinyint(1) NOT NULL,
  `uso_ttf` tinyint(1) NOT NULL,
  `ventilacao_suporte` tinyint(1) NOT NULL,
  `oxigenioterapia` tinyint(1) NOT NULL,
  `reanimador` tinyint(1) NOT NULL,
  `meios_auxiliares` tinyint(1) NOT NULL,
  `celesc` tinyint(1) NOT NULL,
  `def.civil` tinyint(1) NOT NULL,
  `igp/pc` tinyint(1) NOT NULL,
  `policia_civil` tinyint(1) NOT NULL,
  `policia_militar` tinyint(1) NOT NULL,
  `policia_pre` tinyint(1) NOT NULL,
  `policia_prf` tinyint(1) NOT NULL,
  `samu` tinyint(1) NOT NULL,
  `samu_usa` tinyint(1) NOT NULL,
  `samu_usb` tinyint(1) NOT NULL,
  `cit` tinyint(1) NOT NULL,
  `outro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sinais_sintomas`
--

CREATE TABLE `sinais_sintomas` (
  `abdomem_sensível_rígido` tinyint(1) NOT NULL,
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
  `o.v.a.c.e` tinyint(1) NOT NULL,
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_ocorrencia`
--

CREATE TABLE `tipo_ocorrencia` (
  `id_tipo_ocorrencia` int(11) NOT NULL,
  `causado_por_animais` tinyint(1) NOT NULL,
  `com_meio_transporte` tinyint(1) NOT NULL,
  `desmoronamento_deslizamento` tinyint(1) NOT NULL,
  `emergencia_medica` tinyint(1) NOT NULL,
  `queda_altura_2m` tinyint(1) NOT NULL,
  `tentativa_suicidio` tinyint(1) NOT NULL,
  `queda_própria_altura` tinyint(1) NOT NULL,
  `afogamento` tinyint(1) NOT NULL,
  `agressao` tinyint(1) NOT NULL,
  `atropelamento` tinyint(1) NOT NULL,
  `choque_eletrico` tinyint(1) NOT NULL,
  `desabamento` tinyint(1) NOT NULL,
  `doméstico` tinyint(1) NOT NULL,
  `esportivo` tinyint(1) NOT NULL,
  `intoxicacao` tinyint(1) NOT NULL,
  `queda_bicicleta` tinyint(1) NOT NULL,
  `queda_moto` tinyint(1) NOT NULL,
  `queda_nivel_<2m` tinyint(1) NOT NULL,
  `trabalho` tinyint(1) NOT NULL,
  `transferencia` tinyint(1) NOT NULL,
  `outro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `transporte`
--

CREATE TABLE `transporte` (
  `aereo` tinyint(1) NOT NULL,
  `clinico` tinyint(1) NOT NULL,
  `emergencial` tinyint(1) NOT NULL,
  `pos_trauma` tinyint(1) NOT NULL,
  `samu` tinyint(1) NOT NULL,
  `outro` tinyint(1) NOT NULL,
  `sem_remocao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(1) NOT NULL,
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
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
