-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2024 às 01:20
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seguradora`
--
CREATE DATABASE IF NOT EXISTS `seguradora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seguradora`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codCarro` int(11) NOT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codCarro`, `marca`, `placa`, `cor`, `codCliente`) VALUES
(1, 'Ferrari', '7847656', 'vermelho', 1),
(2, 'BMW', '857dgd', 'roxo', 2),
(3, 'Lamborghini', '7iyg85', 'preto', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `compl` varchar(30) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nome`, `dataNasc`, `telefone`, `email`, `cpf`, `rg`, `rua`, `num`, `compl`, `estado`, `bairro`, `cidade`, `cep`) VALUES
(1, 'Mario', '0000-00-00', '758412693', 'Mario@gmail.com', '40167271890', '7854222248', 'Cisplatina', 50, 'nenhum', 'Sã', 'São Janeiro de Belo', 'Ribeirão', '12812387606'),
(2, 'Carol', '2007-07-12', '546786378', 'Carol@gmail.com', '7967634524575', '57575578', 'Catatua', 10, 'nenhum', 'Sã', 'Roncon', 'São Paulo', '786223599'),
(3, 'Isa', '2012-10-02', '78678678', 'Isa@gmail.com', '76876767', '57575578', 'Bololo', 90, 'nenhum', 'Ri', 'Vila nova', 'São Paulo', '494156489');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `codOcorrencia` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` date DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `descricao` varchar(225) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `codCarro` int(11) DEFAULT NULL,
  `codTipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`codOcorrencia`, `data`, `hora`, `bairro`, `rua`, `descricao`, `cidade`, `codCarro`, `codTipo`) VALUES
(1, '2002-10-29', '0000-00-00', 'Cisplatina', 'Amister', 'Nenhum', 'Sp', 1, 1),
(2, '2002-10-29', '0000-00-00', 'Selin', 'Amisthig', 'Nenhum', 'rj', 2, 2),
(3, '2002-10-29', '0000-00-00', 'Pouterna', 'Serfel', 'Nenhum', 'Sp', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo`
--

CREATE TABLE `tipo` (
  `codtipo` int(11) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo`
--

INSERT INTO `tipo` (`codtipo`, `tipo`) VALUES
(1, 'Atropelamento'),
(2, 'Batida'),
(3, 'Capotamento');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codCarro`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`codOcorrencia`),
  ADD KEY `codCarro` (`codCarro`),
  ADD KEY `codTipo` (`codTipo`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codtipo`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`codCarro`) REFERENCES `carro` (`codCarro`),
  ADD CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`codTipo`) REFERENCES `tipo` (`codtipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
