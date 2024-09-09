-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Set-2024 às 14:07
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
-- Banco de dados: `loja2`
--
CREATE DATABASE IF NOT EXISTS `loja2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`) VALUES
(1, 'Ana Maria', 'ana.maria@email.com'),
(2, 'Bruno Silva', 'bruno.silva@email.com'),
(3, 'Carla Souza', 'carla.souza@email.com'),
(4, 'Daniel Oliveira', 'daniel.oliveira@email.com'),
(5, 'Eduarda Costa', 'eduarda.costa@email.com'),
(6, 'Felipe Gomes', 'felipe.gomes@email.com'),
(7, 'Gabriela Ferreira', 'gabriela.ferreira@email.com'),
(8, 'Henrique Lima', 'henrique.lima@email.com'),
(9, 'Isabela Rocha', 'isabela.rocha@email.com'),
(10, 'João Pedro', 'joao.pedro@email.com'),
(11, 'Laura Santos', 'laura.santos@email.com'),
(12, 'Miguel Almeida', 'miguel.almeida@email.com'),
(13, 'Patrícia Costa', 'patricia.costa@email.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detalhespedido`
--

CREATE TABLE `detalhespedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `detalhespedido`
--

INSERT INTO `detalhespedido` (`id`, `id_pedido`, `id_produto`, `quantidade`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 2),
(5, 3, 5, 1),
(6, 3, 6, 1),
(7, 4, 7, 1),
(8, 4, 8, 1),
(9, 5, 9, 1),
(10, 5, 10, 1),
(11, 6, 11, 1),
(12, 6, 12, 1),
(13, 7, 13, 1),
(14, 7, 14, 1),
(15, 8, 15, 1),
(16, 8, 16, 1),
(17, 9, 17, 1),
(18, 9, 18, 1),
(19, 10, 19, 1),
(20, 10, 20, 1),
(21, 11, 1, 1),
(22, 11, 2, 1),
(23, 12, 3, 1),
(24, 12, 4, 2),
(25, 13, 5, 1),
(26, 13, 6, 1),
(27, 14, 7, 1),
(28, 14, 8, 1),
(29, 15, 9, 1),
(30, 15, 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `data_pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_cliente`, `data_pedido`) VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-01'),
(3, 3, '2024-09-02'),
(4, 4, '2024-09-02'),
(5, 5, '2024-09-03'),
(6, 6, '2024-09-03'),
(7, 7, '2024-09-04'),
(8, 8, '2024-09-04'),
(9, 9, '2024-09-05'),
(10, 10, '2024-09-05'),
(11, 1, '2024-09-06'),
(12, 2, '2024-09-06'),
(13, 3, '2024-09-07'),
(14, 4, '2024-09-07'),
(15, 5, '2024-09-08'),
(16, 6, '2024-09-08'),
(17, 7, '2024-09-09'),
(18, 8, '2024-09-09'),
(19, 9, '2024-09-10'),
(20, 10, '2024-09-10'),
(21, 1, '2024-09-11'),
(22, 2, '2024-09-11'),
(23, 3, '2024-09-12'),
(24, 4, '2024-09-12'),
(25, 5, '2024-09-13'),
(26, 6, '2024-09-13'),
(27, 7, '2024-09-14'),
(28, 8, '2024-09-14'),
(29, 9, '2024-09-15'),
(30, 10, '2024-09-15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`) VALUES
(1, 'Notebook', '3500.00'),
(2, 'Smartphone', '2500.00'),
(3, 'Tablet', '1500.00'),
(4, 'Mouse', '100.00'),
(5, 'Teclado', '150.00'),
(6, 'Monitor', '800.00'),
(7, 'Impressora', '700.00'),
(8, 'Cadeira Gamer', '1200.00'),
(9, 'Fone de Ouvido', '200.00'),
(10, 'Webcam', '300.00'),
(11, 'Roteador', '250.00'),
(12, 'SSD 1TB', '400.00'),
(13, 'HD Externo 2TB', '350.00'),
(14, 'Placa de Vídeo', '2000.00'),
(15, 'Memória RAM 16GB', '600.00'),
(16, 'Processador', '1500.00'),
(17, 'Fonte 500W', '400.00'),
(18, 'Gabinete', '350.00'),
(19, 'Placa-mãe', '1000.00'),
(20, 'Cooler', '150.00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `detalhespedido`
--
ALTER TABLE `detalhespedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_produto` (`id_produto`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `detalhespedido`
--
ALTER TABLE `detalhespedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `detalhespedido`
--
ALTER TABLE `detalhespedido`
  ADD CONSTRAINT `detalhespedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `detalhespedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`);

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
