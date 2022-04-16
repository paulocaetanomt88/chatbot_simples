-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Abr-2022 às 21:54
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `chatbot_simples`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `consultas` varchar(255) NOT NULL,
  `respostas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `chatbot`
--

INSERT INTO `chatbot` (`id`, `consultas`, `respostas`) VALUES
(1, 'oi|olá|ola|hello|hi|hey|hola|bom dia|boa tarde|boa noite', 'Olá, para qual setor deseja atendimento:<br>1-Vendas<br>2-Expedição<br>3-Suporte<br>4-Elogio<br>5-Reclamação'),
(2, '1', 'Ok, estamos contatando um(a) vendedor(a) para te atender'),
(3, '2', 'Por favor informe a senha de atendimento. Ex: \"MT-100001\"'),
(4, '3', 'Por favor, informe o ticket de suporte ou 0(zero), caso não possua, para uma nova solicitação:'),
(5, '4', 'Maravilha, queremos saber o que mais lhe agradou =)'),
(6, '5', 'Sentimos muito. Por favor, descreva a situação para que possamos corrigir e melhorar:');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
