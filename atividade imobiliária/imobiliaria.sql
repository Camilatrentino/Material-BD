-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/09/2024 às 01:12
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
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contrato`
--

CREATE TABLE `contrato` (
  `idaluguel` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `pagamento` varchar(255) NOT NULL,
  `comeco` date NOT NULL,
  `fim` date NOT NULL,
  `idimovel` int(11) DEFAULT NULL,
  `idcorretor` int(11) DEFAULT NULL,
  `idinquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contrato`
--

INSERT INTO `contrato` (`idaluguel`, `valor`, `pagamento`, `comeco`, `fim`, `idimovel`, `idcorretor`, `idinquilino`) VALUES
(1, 2320.99, 'Mensal', '2024-01-01', '2024-01-15', 1, 1, 1),
(2, 3094.65, 'Mensal', '2024-02-01', '2024-02-15', 2, 2, 2),
(3, 1856.79, 'Mensal', '2024-03-01', '2024-03-15', 3, 3, 3),
(4, 2785.19, 'Mensal', '2024-04-01', '2024-04-20', 4, 4, 4),
(5, 3868.31, 'Mensal', '2024-05-01', '2024-05-25', 5, 5, 5),
(6, 2475.72, 'Mensal', '2024-06-01', '2024-06-30', 6, 6, 6),
(7, 2166.26, 'Mensal', '2024-07-01', '2024-07-15', 7, 7, 7),
(8, 3404.12, 'Mensal', '2024-08-01', '2024-08-10', 8, 8, 8),
(9, 2630.45, 'Mensal', '2024-09-01', '2024-09-15', 9, 9, 9),
(10, 3249.38, 'Mensal', '2024-10-01', '2024-10-20', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
--

CREATE TABLE `corretor` (
  `idcorretor` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`idcorretor`, `email`, `cpf`, `telefone`, `nome`) VALUES
(1, 'ana.silva@example.com', '123.456.789-00', 2147483647, 'Ana Silva'),
(2, 'carmo.araujo@gmail.com', '234.567.890-12', 2147483647, 'Pedro Alves'),
(3, 'maria.oliveira@example.com', '345.678.901-23', 2147483647, 'Maria Oliveira'),
(4, 'roberto.santos@example.com', '456.789.012-34', 2147483647, 'Roberto Santos'),
(5, 'juliana.martins@example.com', '567.890.123-45', 2147483647, 'Juliana Martins'),
(6, 'lucas.ferreira@example.com', '678.901.234-56', 2147483647, 'Lucas Ferreira'),
(7, 'beatriz.costa@example.com', '789.012.345-67', 2147483647, 'Beatriz Costa'),
(8, 'ricardo.lima@example.com', '890.123.456-78', 2147483647, 'Ricardo Lima'),
(9, 'mariana.nunes@example.com', '901.234.567-89', 2147483647, 'Mariana Nunes'),
(10, 'gustavo.melo@example.com', '012.345.678-90', 2147483647, 'Gustavo Melo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `idproprietario` int(11) DEFAULT NULL,
  `idfiador` int(11) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `bairro`, `rua`, `complemento`, `numero`, `estado`, `cep`, `cidade`, `idproprietario`, `idfiador`, `idimovel`) VALUES
(1, 'Jardim Paulista', 'Rua das Flores', 'Apto 101', 123, 'SP', '12345-678', 'São Paulo', 1, 1, 1),
(2, 'Centro', 'Avenida Brasil', 'Sala 202', 456, 'RJ', '23456-789', 'Rio de Janeiro', 2, 2, 2),
(3, 'Vila Mariana', 'Rua dos Pássaros', 'Casa com jardim', 789, 'SP', '34567-890', 'São Paulo', 3, 3, 3),
(4, 'Ipanema', 'Rua do Sol', 'Apartamento no 3º andar', 101, 'RJ', '45678-901', 'Rio de Janeiro', 4, 4, 4),
(5, 'Boa Vista', 'Avenida das Américas', 'Próximo ao shopping', 202, 'SP', '56789-012', 'São Paulo', 5, 5, 5),
(6, 'Lapa', 'Rua da Alegria', 'Cobertura com piscina', 303, 'RJ', '67890-123', 'Rio de Janeiro', 6, 6, 6),
(7, 'Jardim das Flores', 'Rua dos Lírios', 'Apto 304', 404, 'SP', '78901-234', 'São Paulo', 7, 7, 7),
(8, 'Santa Teresa', 'Rua da Esperança', 'Casa com garagem', 505, 'RJ', '89012-345', 'Rio de Janeiro', 8, 8, 8),
(9, 'Pinheiros', 'Avenida das Nações', 'Próximo ao metrô', 606, 'SP', '90123-456', 'São Paulo', 9, 9, 9),
(10, 'Copacabana', 'Rua da Praia', 'Cobertura com vista para o mar', 707, 'RJ', '01234-567', 'Rio de Janeiro', 10, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `cpf`, `telefone`, `nome`, `rg`, `email`) VALUES
(1, '11122233344', 2147483647, 'João da Silva', 'MG1234567', 'joao.silva@exemplo.com'),
(2, '22233344455', 2147483647, 'Maria Oliveira', 'SP2345678', 'maria.oliveira@exemplo.com'),
(3, '33344455566', 2147483647, 'Carlos Pereira', 'RJ3456789', 'carlos.pereira@exemplo.com'),
(4, '44455566677', 2147483647, 'Ana Souza', 'MG4567890', 'ana.souza@exemplo.com'),
(5, '55566677788', 2147483647, 'Lucas Lima', 'SP5678901', 'lucas.lima@exemplo.com'),
(6, '66677788899', 2147483647, 'Fernanda Costa', 'RJ6789012', 'fernanda.costa@exemplo.com'),
(7, '77788899900', 2147483647, 'Rafael Santos', 'MG7890123', 'rafael.santos@exemplo.com'),
(8, '88899900011', 2147483647, 'Beatriz Mendes', 'SP8901234', 'beatriz.mendes@exemplo.com'),
(9, '99900011122', 2147483647, 'Paulo Almeida', 'RJ9012345', 'paulo.almeida@exemplo.com'),
(10, '00011122233', 2147483647, 'Juliana Martins', 'MG0123456', 'juliana.martins@exemplo.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `comodos` int(11) NOT NULL,
  `suite` bit(1) NOT NULL,
  `area` int(11) NOT NULL,
  `nvagas` int(11) NOT NULL,
  `nbanheiros` int(11) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `piscina` bit(1) NOT NULL,
  `alugado` bit(1) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `idproprietario` int(11) DEFAULT NULL,
  `lavanderia` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`idimovel`, `tipo`, `comodos`, `suite`, `area`, `nvagas`, `nbanheiros`, `complemento`, `piscina`, `alugado`, `garagem`, `idproprietario`, `lavanderia`) VALUES
(1, 'Apartamento', 4, b'1', 75, 1, 1, 'Apartamento no 5º andar', b'1', b'0', b'1', 1, b'1'),
(2, 'Casa', 6, b'1', 200, 2, 2, 'Casa com jardim', b'1', b'0', b'1', 2, b'1'),
(3, 'Cobertura', 2, b'1', 120, 2, 1, 'Cobertura com vista para o mar', b'1', b'1', b'0', 3, b'1'),
(4, 'Kitnet', 4, b'0', 35, 0, 1, 'Kitnet recém reformada', b'0', b'1', b'0', 4, b'1'),
(5, 'Chácara', 5, b'1', 300, 4, 2, 'Chácara com área de lazer', b'1', b'0', b'1', 5, b'0'),
(6, 'Casa', 4, b'1', 150, 2, 2, 'Casa em bairro tranquilo', b'0', b'0', b'1', 6, b'0'),
(7, 'Apartamento', 2, b'0', 50, 1, 1, 'Apartamento próximo ao centro', b'0', b'1', b'1', 7, b'0'),
(8, 'Casa', 5, b'1', 180, 2, 3, 'Casa com piscina', b'1', b'0', b'1', 8, b'0'),
(9, 'Apartamento', 3, b'1', 85, 1, 2, 'Apartamento com varanda', b'0', b'0', b'1', 9, b'0'),
(10, 'Cobertura', 4, b'1', 140, 2, 3, 'Cobertura com churrasqueira', b'1', b'1', b'1', 10, b'0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` int(11) NOT NULL,
  `idfiador` int(11) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `dataNasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`idinquilino`, `nome`, `email`, `rg`, `cpf`, `telefone`, `idfiador`, `salario`, `dataNasc`) VALUES
(1, 'Carlos Silva', 'carlos.silva@example.com', '12.345.678-9', '123.456.789-00', 2147483647, 1, 2500.00, '1981-12-21'),
(2, 'Juliana Costa', 'juliana.costa@example.com', '23.456.789-0', '234.567.890-12', 2147483647, 2, 1500.00, '1974-02-14'),
(3, 'Ricardo Almeida', 'ricardo.almeida@example.com', '34.567.890-1', '345.678.901-23', 2147483647, 3, 4000.00, '1960-06-02'),
(4, 'Maria Oliveira', 'maria.oliveira@example.com', '45.678.901-2', '456.789.012-34', 2147483647, 4, 2800.00, '1985-03-15'),
(5, 'Lucas Santos', 'lucas.santos@example.com', '56.789.012-3', '567.890.123-45', 2147483647, 5, 3200.00, '1990-07-22'),
(6, 'Ana Souza', 'ana.souza@example.com', '67.890.123-4', '678.901.234-56', 2147483647, 6, 4500.00, '1982-11-05'),
(7, 'Pedro Fernandes', 'pedro.fernandes@example.com', '78.901.234-5', '789.012.345-67', 2147483647, 7, 3100.00, '1978-09-30'),
(8, 'Beatriz Lima', 'beatriz.lima@example.com', '89.012.345-6', '890.123.456-78', 2147483647, 8, 2700.00, '1989-01-12'),
(9, 'Roberto Martins', 'roberto.martins@example.com', '90.123.456-7', '901.234.567-89', 2147483647, 9, 3800.00, '1975-06-25'),
(10, 'Mariana Souza', 'mariana.souza@example.com', '01.234.567-8', '012.345.678-90', 2147483647, 10, 4000.00, '1992-12-04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `idmidia` int(11) NOT NULL,
  `video` bit(1) NOT NULL,
  `foto` bit(1) NOT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `midia`
--

INSERT INTO `midia` (`idmidia`, `video`, `foto`, `idimovel`) VALUES
(1, b'1', b'0', 1),
(2, b'0', b'1', 2),
(3, b'1', b'1', 3),
(4, b'0', b'1', 4),
(5, b'1', b'0', 5),
(6, b'1', b'1', 6),
(7, b'0', b'1', 7),
(8, b'1', b'0', 8),
(9, b'1', b'1', 9),
(10, b'0', b'0', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `cpf`, `rg`, `nome`, `telefone`) VALUES
(1, 'mario.silva@example.com', '123.456.789-00', '12.345.678-9', 'Mario Silva', '11987654321'),
(2, 'ana.souza@example.com', '987.654.321-00', '98.765.432-1', 'Ana Souza', '11987654322'),
(3, 'joao.pereira@example.com', '111.222.333-44', '11.222.333-4', 'João Pereira', '11987654323'),
(4, 'marcia.oliveira@example.com', '555.666.777-88', '55.666.777-8', 'Márcia Oliveira', '11987654324'),
(5, 'pedro.alves@example.com', '999.888.777-66', '99.888.777-6', 'Pedro Alves', '11987654325'),
(6, 'juliana.costa@example.com', '333.444.555-77', '33.444.555-7', 'Juliana Costa', '11987654326'),
(7, 'roberto.martins@example.com', '444.555.666-88', '44.555.666-8', 'Roberto Martins', '11987654327'),
(8, 'lucas.santos@example.com', '222.333.444-55', '22.333.444-5', 'Lucas Santos', '11987654328'),
(9, 'beatriz.ferreira@example.com', '666.777.888-99', '66.777.888-9', 'Beatriz Ferreira', '11987654329'),
(10, 'ricardo.melo@example.com', '777.888.999-00', '77.888.999-0', 'Ricardo Melo', '11987654330');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`idaluguel`),
  ADD KEY `idimovel` (`idimovel`),
  ADD KEY `idcorretor` (`idcorretor`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idcorretor`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD KEY `idproprietario` (`idproprietario`),
  ADD KEY `idfiador` (`idfiador`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idproprietario` (`idproprietario`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD KEY `idfiador` (`idfiador`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`idmidia`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contrato`
--
ALTER TABLE `contrato`
  MODIFY `idaluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idcorretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `idmidia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`idcorretor`) REFERENCES `corretor` (`idcorretor`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`),
  ADD CONSTRAINT `endereco_ibfk_3` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`idfiador`) REFERENCES `fiador` (`idfiador`);

--
-- Restrições para tabelas `midia`
--
ALTER TABLE `midia`
  ADD CONSTRAINT `midia_ibfk_1` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
