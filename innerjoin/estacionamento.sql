-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Set-2024 às 13:57
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 10, 'Térreo'),
(2, 15, '1º Andar'),
(3, 20, '2º Andar'),
(4, 25, '3º Andar'),
(5, 30, '4º Andar'),
(6, 35, '5º Andar'),
(7, 40, '6º Andar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(255) NOT NULL,
  `dtnasc` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dtnasc`, `nome`) VALUES
('00011122233', '1993-12-12', 'Mariana Ferreira'),
('11122233344', '1992-03-03', 'Carla Mendes'),
('12312312312', '1982-01-13', 'Natália Pires'),
('12345678900', '1990-01-01', 'Ana Silva'),
('22233344455', '1988-04-04', 'Daniel Costa'),
('23423423423', '1996-02-14', 'Otávio Soares'),
('33344455566', '1995-05-05', 'Eduardo Santos'),
('34534534534', '1997-03-15', 'Paula Ribeiro'),
('44455566677', '1991-06-06', 'Fernanda Lima'),
('45645645645', '1990-04-16', 'Quiteria Lima'),
('55566677788', '1980-07-07', 'Gustavo Rocha'),
('56756756756', '1984-05-17', 'Rafael Gomes'),
('66677788899', '1975-08-08', 'Helena Pereira'),
('67867867867', '1981-06-18', 'Sofia Castro'),
('77788899900', '1989-09-09', 'Igor Martins'),
('78978978978', '1998-07-19', 'Thiago Lima'),
('88899900011', '1987-10-10', 'Julia Alves'),
('89089089089', '1999-08-20', 'Vanessa Rocha'),
('98765432100', '1985-02-02', 'Bruno Oliveira'),
('99900011122', '1994-11-11', 'Lucas Nascimento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` date DEFAULT NULL,
  `hrEntrada` datetime DEFAULT NULL,
  `dtSaida` date DEFAULT NULL,
  `placa` varchar(255) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horSaida`, `dtEntrada`, `hrEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-01 10:00:00', '2024-09-01', '2024-09-01 09:00:00', '2024-09-01', 'ABC1A23', 1),
(2, '2024-09-02 11:00:00', '2024-09-02', '2024-09-02 10:30:00', '2024-09-02', 'DEF2B34', 1),
(3, '2024-09-03 12:00:00', '2024-09-03', '2024-09-03 11:00:00', '2024-09-03', 'GHI3C45', 1),
(4, '2024-09-04 13:00:00', '2024-09-04', '2024-09-04 12:00:00', '2024-09-04', 'JKL4D56', 2),
(5, '2024-09-05 14:00:00', '2024-09-05', '2024-09-05 13:00:00', '2024-09-05', 'MNO5E67', 2),
(6, '2024-09-06 15:00:00', '2024-09-06', '2024-09-06 14:30:00', '2024-09-06', 'PQR6F78', 2),
(7, '2024-09-07 16:00:00', '2024-09-07', '2024-09-07 15:00:00', '2024-09-07', 'STU7G89', 3),
(8, '2024-09-08 17:00:00', '2024-09-08', '2024-09-08 16:00:00', '2024-09-08', 'VWX8H90', 3),
(9, '2024-09-09 18:00:00', '2024-09-09', '2024-09-09 17:00:00', '2024-09-09', 'YZA9I01', 3),
(10, '2024-09-10 19:00:00', '2024-09-10', '2024-09-10 18:00:00', '2024-09-10', 'BCD0J12', 4),
(11, '2024-09-11 20:00:00', '2024-09-11', '2024-09-11 19:00:00', '2024-09-11', 'EFG1K23', 4),
(12, '2024-09-12 21:00:00', '2024-09-12', '2024-09-12 20:30:00', '2024-09-12', 'HIJ2L34', 4),
(13, '2024-09-13 22:00:00', '2024-09-13', '2024-09-13 21:30:00', '2024-09-13', 'KLM3M45', 5),
(14, '2024-09-14 23:00:00', '2024-09-14', '2024-09-14 22:30:00', '2024-09-14', 'NOP4N56', 5),
(15, '2024-09-15 10:30:00', '2024-09-15', '2024-09-15 23:00:00', '2024-09-15', 'QRS5O67', 5),
(16, '2024-09-16 11:30:00', '2024-09-16', '2024-09-16 09:30:00', '2024-09-16', 'TUV6P78', 6),
(17, '2024-09-17 12:30:00', '2024-09-17', '2024-09-17 10:30:00', '2024-09-17', 'WXY7Q89', 6),
(18, '2024-09-18 13:30:00', '2024-09-18', '2024-09-18 11:30:00', '2024-09-18', 'ZAB8R90', 6),
(19, '2024-09-19 14:30:00', '2024-09-19', '2024-09-19 12:30:00', '2024-09-19', 'CDE9S01', 7),
(20, '2024-09-20 15:30:00', '2024-09-20', '2024-09-20 13:30:00', '2024-09-20', 'FGH0T12', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Fusca'),
(2, 'Civic'),
(3, 'Onix'),
(4, 'Palio'),
(5, 'Corolla'),
(6, 'HB20'),
(7, 'Sandero'),
(8, 'Fiorino'),
(9, 'Astra'),
(10, 'Jetta'),
(11, 'T-Cross'),
(12, 'HR-V'),
(13, 'Tracker'),
(14, 'Duster'),
(15, 'Kicks'),
(16, 'Compass'),
(17, 'X3'),
(18, 'X5'),
(19, 'Q3'),
(20, 'A4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(255) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `ano` year(4) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `ano`, `cpf`, `codModelo`) VALUES
('ABC1A23', 'Preto', 2020, '12345678900', 1),
('BCD0J12', 'Laranja', 2019, '88899900011', 10),
('CDE9S01', 'Verde Escuro', 2018, '78978978978', 19),
('DEF2B34', 'Branco', 2017, '98765432100', 2),
('EFG1K23', 'Marrom', 2016, '99900011122', 11),
('FGH0T12', 'Branco Perolado', 2015, '89089089089', 20),
('GHI3C45', 'Vermelho', 2014, '11122233344', 3),
('HIJ2L34', 'Bege', 2013, '00011122233', 12),
('JKL4D56', 'Azul', 2012, '22233344455', 4),
('KLM3M45', 'Dourado', 2011, '12312312312', 13),
('MNO5E67', 'Verde', 2010, '33344455566', 5),
('NOP4N56', 'Salmão', 2009, '23423423423', 14),
('PQR6F78', 'Amarelo', 2008, '44455566677', 6),
('QRS5O67', 'Turquesa', 2007, '34534534534', 15),
('STU7G89', 'Cinza', 2006, '55566677788', 7),
('TUV6P78', 'Ciano', 2005, '45645645645', 16),
('VWX8H90', 'Prata', 2004, '66677788899', 8),
('WXY7Q89', 'Vinho', 2003, '56756756756', 17),
('YZA9I01', 'Roxo', 2002, '77788899900', 9),
('ZAB8R90', 'Azul Claro', 2001, '67867867867', 18);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codLugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
