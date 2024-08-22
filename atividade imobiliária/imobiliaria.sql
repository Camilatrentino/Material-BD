-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Ago-2024 às 16:37
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idcorretor` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`idcorretor`, `email`, `telefone`, `nome`) VALUES
(1, 'joao.martins@exemplo.com', '(11) 91234-5678', 'João Martins'),
(2, 'lucas.silva@exemplo.com', '(21) 92345-6789', 'Lucas Silva'),
(3, 'maria.ferreira@exemplo.com', '(31) 93456-7890', 'Maria Ferreira'),
(4, 'carla.santos@exemplo.com', '(41) 94567-8901', 'Carla Santos'),
(5, 'roberto.alves@exemplo.com', '(51) 95678-9012', 'Roberto Alves');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `idproprietario` int(11) DEFAULT NULL,
  `idfiador` int(11) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `bairro`, `rua`, `complemento`, `numero`, `estado`, `cep`, `cidade`, `idproprietario`, `idfiador`, `idimovel`) VALUES
(1, 'Jardim Paulista', 'Rua das Flores', 'Apto 101', 123, 'SP', '01452-000', 'São Paulo', 1, 1, 1),
(2, 'Centro', 'Avenida Brasil', 'Sala 202', 456, 'RJ', '20000-000', 'Rio de Janeiro', 2, 2, 2),
(3, 'Vila Mariana', 'Rua dos Pinheiros', 'Casa 5', 789, 'MG', '30120-000', 'Belo Horizonte', 3, 3, 3),
(4, 'Boa Vista', 'Rua das Palmeiras', 'Bloco B, Apto 303', 101, 'RS', '90000-000', 'Porto Alegre', 4, 4, 4),
(5, 'Pituba', 'Avenida Tancredo Neves', 'Andar 4', 202, 'BA', '41830-000', 'Salvador', 5, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(11) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `cpf`, `telefone`, `nome`, `rg`, `email`) VALUES
(1, '123.456.789-00', '(11) 91234-5678', 'Ana Souza', 'MG-12.345.678', 'ana.souza@example.com'),
(2, '234.567.890-11', '(21) 92345-6789', 'Carlos Silva', 'SP-23.456.789', 'carlos.silva@example.com'),
(3, '345.678.901-22', '(31) 93456-7890', 'Maria Oliveira', 'RJ-34.567.890', 'maria.oliveira@example.com'),
(4, '456.789.012-33', '(41) 94567-8901', 'João Pereira', 'RS-45.678.901', 'joao.pereira@example.com'),
(5, '567.890.123-44', '(51) 95678-9012', 'Fernanda Lima', 'BA-56.789.012', 'fernanda.lima@example.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `tipo` varchar(255) DEFAULT NULL,
  `comodos` int(11) DEFAULT NULL,
  `suite` bit(1) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `nvagas` int(11) DEFAULT NULL,
  `nbanheiros` int(11) DEFAULT NULL,
  `idimovel` int(11) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `alugado` bit(1) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `idproprietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`tipo`, `comodos`, `suite`, `area`, `nvagas`, `nbanheiros`, `idimovel`, `complemento`, `piscina`, `alugado`, `garagem`, `idproprietario`) VALUES
('Apartamento', 4, b'1', 85, 1, 2, 1, 'Apto 101', b'1', b'0', b'1', 1),
('Casa', 6, b'1', 150, 2, 3, 2, 'Casa com Jardim', b'1', b'1', b'1', 2),
('Cobertura', 5, b'1', 120, 2, 2, 3, 'Cobertura Duplex', b'0', b'1', b'1', 3),
('Sobrado', 7, b'0', 200, 3, 4, 4, 'Bloco B, Apto 303', b'0', b'0', b'1', 4),
('Kitnet', 2, b'0', 40, 1, 1, 5, 'Sala 202', b'0', b'1', b'0', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `cpf`, `rg`, `nome`, `telefone`) VALUES
(1, 'renata.costa@exemplo.com', '123.456.789-01', 'MG-12.345.678', 'Renata Costa', '(11) 98765-4321'),
(2, 'marcos.pereira@exemplo.com', '234.567.890-12', 'SP-23.456.789', 'Marcos Pereira', '(21) 87654-3210'),
(3, 'juliana.souza@exemplo.com', '345.678.901-23', 'RJ-34.567.890', 'Juliana Souza', '(31) 76543-2109'),
(4, 'andre.lima@exemplo.com', '456.789.012-34', 'RS-45.678.901', 'André Lima', '(41) 65432-1098'),
(5, 'patricia.oliveira@exemplo.com', '567.890.123-45', 'BA-56.789.012', 'Patrícia Oliveira', '(51) 54321-0987');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idcorretor`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD KEY `idproprietario` (`idproprietario`),
  ADD KEY `idfiador` (`idfiador`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
