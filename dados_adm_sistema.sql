-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Set-2023 às 23:51
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke_teste`
--
CREATE DATABASE IF NOT EXISTS `celke_teste` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `celke_teste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `created`, `modified`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', '2017-11-12 22:35:47', NULL),
(2, 'Cesar1', 'cesar1@celke.com.br', '2017-11-12 22:37:15', '2023-08-17 12:41:22'),
(3, 'Cesar2', 'cesar2@celke.com.br', '2017-11-12 22:39:14', NULL),
(4, 'Cesar4', 'cesar4@celke.com.br', '2017-11-12 22:41:21', NULL),
(5, 'Cesar5', 'cesar5@celke.com.br', '2017-11-12 22:42:49', NULL),
(6, 'Cesar6', 'cesar6@celke.com.br', '2017-11-12 22:48:27', NULL),
(7, 'HELIO PORTO', 'kabedaque@gmail.com', '2023-08-10 14:52:45', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Banco de dados: `contatos`
--
CREATE DATABASE IF NOT EXISTS `contatos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contatos`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animais`
--

CREATE TABLE `animais` (
  `id_animais` int(11) NOT NULL,
  `tipo_animal` varchar(50) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `raca_animal` varchar(100) NOT NULL,
  `nome_animal` varchar(50) NOT NULL,
  `data_entrada` date NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `data_saida` date NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `animais`
--

INSERT INTO `animais` (`id_animais`, `tipo_animal`, `sexo`, `raca_animal`, `nome_animal`, `data_entrada`, `id_permiss`, `data_saida`, `arquivo`) VALUES
(8, 'Cachorro', 'Macho ', 'Shitisu', 'teste', '2023-08-15', 120, '0000-00-00', 'Nao'),
(9, 'Cachorro', 'Macho ', 'Shitisu', 'teste', '2023-08-15', 120, '0000-00-00', 'Nao'),
(10, 'Cachorro', 'Macho ', 'Shitisu', 'teste', '2023-08-15', 120, '0000-00-00', 'Nao'),
(384, 'Cachorro', 'Femêa', 'Shitisu', 'Cristal', '2023-08-28', 147, '0000-00-00', 'Nao'),
(385, 'Cachorro', 'Femêa', 'Shitisu', 'SUELLEM', '2023-08-28', 147, '0000-00-00', 'Nao'),
(386, 'Cachorro', 'Femêa', 'Shitisu', 'SUELLEM', '2023-08-29', 147, '0000-00-00', 'Nao'),
(387, 'Cachorro', 'Macho ', 'Shitisu', 'Helio Porto', '2023-08-29', 147, '0000-00-00', 'Nao'),
(388, 'Cachorro', 'Femêa', 'Shitisu', 'Lulu', '2023-09-14', 147, '0000-00-00', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `apartamentos`
--

CREATE TABLE `apartamentos` (
  `id_apartamentos` int(11) NOT NULL,
  `unidade` varchar(10) NOT NULL,
  `situacao` varchar(7) NOT NULL DEFAULT 'vazio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `apartamentos`
--

INSERT INTO `apartamentos` (`id_apartamentos`, `unidade`, `situacao`) VALUES
(1, '101 - A', 'vazio'),
(2, '102 - A', 'vazio'),
(3, '103 - A', 'vazio'),
(4, '104 - A', 'vazio'),
(5, '201 - A', 'vazio'),
(6, '202 - A', 'vazio'),
(7, '203 - A', 'vazio'),
(8, '204 - A', 'vazio'),
(9, '301 - A', 'vazio'),
(10, '302 - A', 'vazio'),
(11, '303 - A', 'vazio'),
(12, '304 - A', 'vazio'),
(13, '401 - A', 'vazio'),
(14, '402 - A', 'vazio'),
(15, '403 - A', 'vazio'),
(16, '404 - A', 'vazio'),
(17, '501 - A', 'vazio'),
(18, '502 - A', 'vazio'),
(19, '503 - A', 'vazio'),
(20, '504 - A', 'vazio'),
(21, '601 - A', 'vazio'),
(22, '602 - A', 'vazio'),
(23, '603 - A', 'vazio'),
(24, '604 - A', 'vazio'),
(25, '701 - A', 'vazio'),
(26, '702 - A', 'vazio'),
(27, '703 - A', 'vazio'),
(28, '704 - A', 'vazio'),
(29, '801 - A', 'vazio'),
(30, '802 - A', 'vazio'),
(31, '803 - A', 'vazio'),
(32, '804 - A', 'vazio'),
(33, '901 - A', 'vazio'),
(34, '902 - A', 'vazio'),
(35, '903 - A', 'vazio'),
(36, '904 - A', 'vazio'),
(37, '1001 - A', 'vazio'),
(38, '1002 - A', 'vazio'),
(39, '1003 - A', 'vazio'),
(40, '1004 - A', 'vazio'),
(41, '105 - B', 'vazio'),
(42, '106 - B', 'vazio'),
(43, '107 - B', 'vazio'),
(44, '108 - B', 'vazio'),
(45, '205 - B', 'vazio'),
(46, '206 - B', 'vazio'),
(47, '207 - B', 'vazio'),
(48, '208 - B', 'vazio'),
(49, '305 - B', 'vazio'),
(50, '306 - B', 'vazio'),
(51, '307 - B', 'vazio'),
(52, '308 - B', 'vazio'),
(53, '405 - B', 'vazio'),
(54, '406 - B', 'vazio'),
(55, '407 - B', 'vazio'),
(56, '408 - B', 'vazio'),
(57, '505 - B', 'vazio'),
(58, '506 - B', 'vazio'),
(59, '507 - B', 'vazio'),
(60, '508 - B', 'vazio'),
(61, '605 - B', 'vazio'),
(62, '606 - B', 'vazio'),
(63, '607 - B', 'vazio'),
(64, '608 - B', 'vazio'),
(65, '705 - B', 'vazio'),
(66, '706 - B', 'vazio'),
(67, '707 - B', 'vazio'),
(68, '708 - B', 'vazio'),
(69, '805 - B', 'vazio'),
(70, '806 - B', 'vazio'),
(71, '807 - B', 'vazio'),
(72, '808 - B', 'vazio'),
(73, '905 - B', 'vazio'),
(74, '906 - B', 'vazio'),
(75, '907 - B', 'vazio'),
(76, '908 - B', 'vazio'),
(77, '1005 - B', 'vazio'),
(78, '1006 - B', 'vazio'),
(79, '1007 - B', 'vazio'),
(80, '1008 - B', 'vazio'),
(81, '101 - C', 'vazio'),
(82, '102 - C', 'vazio'),
(83, '103 - C', 'vazio'),
(84, '104 - C', 'vazio'),
(85, '201 - C', 'vazio'),
(86, '202 - C', 'vazio'),
(87, '203 - C', 'vazio'),
(88, '204 - C', 'vazio'),
(89, '301 - C', 'vazio'),
(90, '302 - C', 'vazio'),
(91, '303 - C', 'vazio'),
(92, '304 - C', 'vazio'),
(93, '401 - C', 'vazio'),
(94, '402 - C', 'vazio'),
(95, '403 - C', 'vazio'),
(96, '404 - C', 'vazio'),
(97, '501 - C', 'vazio'),
(98, '502 - C', 'vazio'),
(99, '503 - C', 'vazio'),
(100, '504 - C', 'vazio'),
(101, '601 - C', 'vazio'),
(102, '602 - C', 'vazio'),
(103, '603 - C', 'vazio'),
(104, '604 - C', 'vazio'),
(105, '701 - C', 'vazio'),
(106, '702 - C', 'vazio'),
(107, '703 - C', 'vazio'),
(108, '704 - C', 'vazio'),
(109, '801 - C', 'vazio'),
(110, '802 - C', 'vazio'),
(111, '803 - C', 'vazio'),
(112, '804 - C', 'vazio'),
(113, '901 - C', 'vazio'),
(114, '902 - C', 'vazio'),
(115, '903 - C', 'vazio'),
(116, '904 - C', 'vazio'),
(117, '1001 - C', 'vazio'),
(118, '1002 - C', 'vazio'),
(119, '1003 - C', 'vazio'),
(120, '1004 - C', 'vazio'),
(121, '105 - D', 'vazio'),
(122, '106 - D', 'vazio'),
(123, '107 - D', 'vazio'),
(124, '108 - D', 'vazio'),
(125, '205 - D', 'vazio'),
(126, '206 - D', 'vazio'),
(127, '207 - D', 'vazio'),
(128, '208 - D', 'vazio'),
(129, '305 - D', 'vazio'),
(130, '306 - D', 'vazio'),
(131, '307 - D', 'vazio'),
(132, '308 - D', 'vazio'),
(133, '405 - D', 'vazio'),
(134, '406 - D', 'vazio'),
(135, '407 - D', 'vazio'),
(136, '408 - D', 'vazio'),
(137, '505 - D', 'vazio'),
(138, '506 - D', 'vazio'),
(139, '507 - D', 'vazio'),
(140, '508 - D', 'vazio'),
(141, '605 - D', 'vazio'),
(142, '606 - D', 'vazio'),
(143, '607 - D', 'vazio'),
(144, '608 - D', 'vazio'),
(145, '705 - D', 'vazio'),
(146, '706 - D', 'vazio'),
(147, '707 - D', 'ocupado'),
(148, '708 - D', 'vazio'),
(149, '805 - D', 'vazio'),
(150, '806 - D', 'vazio'),
(151, '807 - D', 'vazio'),
(152, '808 - D', 'vazio'),
(153, '905 - D', 'vazio'),
(154, '906 - D', 'vazio'),
(155, '907 - D', 'vazio'),
(156, '908 - D', 'vazio'),
(157, '1005 - D', 'vazio'),
(158, '1006 - D', 'vazio'),
(159, '1007 - D', 'vazio'),
(160, '1008 - D', 'ocupado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bicicletario`
--

CREATE TABLE `bicicletario` (
  `id_bike` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `codigo_registro` int(11) NOT NULL,
  `foto_bike` varchar(200) NOT NULL,
  `dataentradabike` date NOT NULL,
  `datasaidabike` date NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bicicletario`
--

INSERT INTO `bicicletario` (`id_bike`, `modelo`, `codigo_registro`, `foto_bike`, `dataentradabike`, `datasaidabike`, `id_permiss`, `arquivo`) VALUES
(3, 'Caloi 10', 111111, '64aeeb9f29f0d.jpeg', '2023-09-14', '0000-00-00', 147, 'Nao'),
(4, 'Caloi 101', 111111, '64aef26e2c683.jpeg', '2023-07-14', '0000-00-00', 147, 'Nao'),
(5, 'Caloi 10', 111111, '64de4ae043cc3.jpeg', '2023-08-25', '0000-00-00', 0, 'Nao'),
(6, 'Caloi 10', 33333333, '65035fb758215.jpeg', '2023-09-23', '0000-00-00', 120, 'Nao'),
(7, 'Caloi 10', 111111237, '65035fdf8e82c.jpeg', '0000-00-00', '0000-00-00', 120, 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` text NOT NULL,
  `email` text NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `telefone`, `email`, `categoria`) VALUES
(20, 'carlos Porto', '(61) 9966-53388', 'kadu@hotmail.com', 'Serralheiro'),
(21, 'Helio Porto', '(61) 9966-53388', 'hlfrancisco61@gmail.com', 'Chaveiro'),
(24, 'Helio Porto', '(61) 9966-53387', 'hlfrancisco61@gmail.com', 'Serralheiro'),
(25, 'Helio Porto', '61996653387', 'hlfrancisco61@gmail.com', 'Serralheiro'),
(26, 'Helio Porto', '(61) 9966-53388', 'hlfrancisco61@gmail.com', 'Serralheiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `convidados`
--

CREATE TABLE `convidados` (
  `id` int(11) NOT NULL,
  `id_Perm` int(11) NOT NULL,
  `nome_convidado` varchar(200) NOT NULL,
  `cpf_convidado` varchar(11) NOT NULL,
  `tipo_convidado` varchar(50) NOT NULL,
  `data_festa` date NOT NULL,
  `status_convidado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `convidados`
--

INSERT INTO `convidados` (`id`, `id_Perm`, `nome_convidado`, `cpf_convidado`, `tipo_convidado`, `data_festa`, `status_convidado`) VALUES
(50, 113, 'Ivanildo Rodrigues ', '381663', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(51, 113, 'ElisÃ¢ngela ', '610283471', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(52, 113, 'Isabelle ', '58766441', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(65, 109, 'nalaura', '09279651196', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(66, 109, 'nicolly nayara', '07566645196', 'AMIGO', '0000-00-00', 'INATIVO'),
(67, 109, 'Leticia Felix', '07563405194', 'AMIGO', '0000-00-00', 'INATIVO'),
(68, 109, 'joao felipe', '05568801100', 'AMIGO', '0000-00-00', 'INATIVO'),
(69, 109, 'Mateus Marques', '04223760190', 'AMIGO', '0000-00-00', 'INATIVO'),
(72, 113, 'Lucas Passos', '038.082.741', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(73, 113, 'Aline Maria Soares', '114.136.746', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(74, 113, 'Ana Luzia', '934.901.713', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(75, 113, 'Wellington AraÃºjo ', '967.262.291', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(76, 113, 'Luana Passos da Silva', '11687127697', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(77, 113, 'Wanda rodrigues da costa', '67000200125', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(78, 113, 'Camila Passos da Silva', '70193370662', 'PERMISSIONÃRIO', '0000-00-00', 'INATIVO'),
(79, 113, 'Jeovaney Bastos ', '88613631134', 'AMIGO', '0000-00-00', 'INATIVO'),
(80, 113, 'Ana Carolina Fernandes da Silva ', '08214995132', 'AMIGO', '0000-00-00', 'INATIVO'),
(81, 113, 'VinÃ­cius Fernandes Bastos ', '08214969131', 'AMIGO', '0000-00-00', 'INATIVO'),
(82, 113, 'Roberto Cezar Macedo de Souza ', '69921520172', 'AMIGO', '0000-00-00', 'INATIVO'),
(85, 113, 'Maria Laura BrÃ¡ulio Macedo de Souza ', '089.280.061', 'AMIGO', '0000-00-00', 'INATIVO'),
(86, 113, 'Solange BrÃ¡ulio Macedo de Souza ', '089.280.271', 'AMIGO', '0000-00-00', 'INATIVO'),
(87, 113, 'Delma Neiva BrÃ¡ulio Macedo', '99443783134', 'AMIGO', '0000-00-00', 'INATIVO'),
(88, 113, 'Roseane Fernandes da Silva ', '99448866100', 'AMIGO', '0000-00-00', 'INATIVO'),
(103, 113, 'Bruna Lima jacobina costa', '02362860132', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(104, 113, 'JoÃ£o da Silva Costa jr', '01974606155', 'Escolher...', '0000-00-00', 'INATIVO'),
(105, 113, 'Iracema Sousa da costa', '25870335191', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(110, 113, 'Fabiano gaspi pacios', '21963613805', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(112, 113, 'JÃ©ssica Mesquita ', '07435068128', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(113, 113, 'Gustavo Henrique Costa Freitas ', '05589998166', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(114, 113, 'Ana Paula Costa Pacios ', '86076418168', 'FAMILIAR', '0000-00-00', 'INATIVO'),
(121, 109, 'Ryan Felipe ', '70586385436', 'AMIGO', '0000-00-00', 'INATIVO'),
(129, 113, 'Alessandra Soares ', '43995767168', 'FAMILIAR', '2022-06-24', 'INATIVO'),
(130, 113, 'Wandenor soares', '37627465268', 'FAMILIAR', '2022-06-24', 'INATIVO'),
(131, 113, 'Filipe soares ', '04924970107', 'FAMILIAR', '2022-06-24', 'INATIVO'),
(132, 113, 'Ana Carolina Abreu ', '06891994144', 'FAMILIAR', '2022-06-24', 'INATIVO'),
(133, 113, 'Adriana PraÃ§a ', '80419240187', 'Escolher...', '2022-06-24', 'INATIVO'),
(134, 113, 'Adolfo PraÃ§a ', '78731267149', 'Escolher...', '2022-06-24', 'INATIVO'),
(135, 113, 'Leonardo Costa Freitas ', '077.770.661', 'FAMILIAR', '2022-06-24', 'INATIVO'),
(137, 113, 'Marly Soares ', '24580422104', 'AMIGO', '2022-06-25', 'INATIVO'),
(140, 109, 'Lara din ', '07990169185', 'AMIGO', '2022-06-25', 'INATIVO'),
(141, 109, 'Livia ', '07812185192', 'AMIGO', '2022-06-28', 'INATIVO'),
(143, 109, 'Beatriz Ohanna ', '08307587123', 'AMIGO', '2022-06-28', 'INATIVO'),
(145, 109, 'Madu ', '08262589130', 'AMIGO', '2022-06-28', 'INATIVO'),
(146, 109, 'Marcelo', '102.484.381', 'AMIGO', '2022-07-05', 'INATIVO'),
(148, 109, 'Eduarda vales ', '03868682120', 'AMIGO', '2022-07-10', 'INATIVO'),
(149, 109, 'Samyla ', '09937911150', 'AMIGO', '2022-07-10', 'INATIVO'),
(150, 109, 'Eloah ', '144.046.246', 'AMIGO', '2022-07-10', 'INATIVO'),
(151, 109, 'Lisandra ', '04099416119', 'AMIGO', '2022-07-10', 'INATIVO'),
(153, 109, 'Carioca ', '19729846769', 'AMIGO', '2022-07-10', 'INATIVO'),
(155, 109, 'Gustavo ', '064.632.281', 'AMIGO', '2022-07-10', 'INATIVO'),
(156, 109, 'Sophia Costa ', '088.005.281', 'AMIGO', '2022-07-18', 'INATIVO'),
(158, 48, 'Dhiego sousa ', '00000000000', 'FAMILIAR', '2022-07-21', 'INATIVO'),
(159, 48, 'Amanda Walter ', '11111111111', 'FAMILIAR', '2022-07-21', 'INATIVO'),
(160, 48, 'Amanda Walter ', '11111111111', 'FAMILIAR', '2022-07-21', 'INATIVO'),
(161, 48, 'Ivan Sousa ', '11111111111', 'FAMILIAR', '2022-07-21', 'INATIVO'),
(162, 91, 'Priscilla Lins ', '047.535.741', 'AMIGO', '2022-07-28', 'INATIVO'),
(163, 91, 'Thays dos santos lima  ', '036.866.502', 'AMIGO', '2022-07-28', 'INATIVO'),
(164, 91, 'Wilton Oswaldo da Silva Brito ', '017.140.042', 'AMIGO', '2022-07-28', 'INATIVO'),
(165, 91, 'Joab Vitor de Albuquerque Moreno ', '057.122.001', 'AMIGO', '2022-07-28', 'INATIVO'),
(166, 91, 'Amanda Tallita Alves de Souza ', '117.001.334', 'AMIGO', '2022-07-28', 'INATIVO'),
(167, 91, 'Katriene Gomes de Sousa', '727.161.341', 'AMIGO', '2022-07-28', 'INATIVO'),
(168, 91, 'Drielly Moreira Vasconcelos Queiroz', '014.463.062', 'DEPENDENTE', '2022-07-28', 'INATIVO'),
(169, 91, 'Geyce Padilha', '756.834.821', 'AMIGO', '2022-07-28', 'INATIVO'),
(170, 91, 'Kelly Pires de Sousa  ', '039.660.791', 'Escolher...', '2022-07-28', 'INATIVO'),
(171, 91, 'Charleson Guedes Ribeiro', '057.651.861', 'AMIGO', '2022-07-28', 'INATIVO'),
(172, 91, 'Wesley TiÃ³filo ', '954.963.941', 'AMIGO', '2022-07-28', 'INATIVO'),
(173, 91, 'Nicolas TiÃ³filo ', '068.967.641', 'AMIGO', '2022-07-28', 'INATIVO'),
(174, 91, 'LetÃ­cia Lemes de Oliveira', '068.418.851', 'AMIGO', '2022-07-28', 'INATIVO'),
(175, 91, 'Edivaldo Sousa Nascimento', '011.039.391', 'AMIGO', '2022-07-28', 'INATIVO'),
(176, 91, 'Francisca Maria Souza', '701.021.041', 'AMIGO', '2022-07-28', 'INATIVO'),
(177, 91, 'Evaldo Soares de Matos', '862.654.231', 'AMIGO', '2022-07-28', 'INATIVO'),
(178, 91, 'Valberg Pinto da Silva', '669.633.541', 'AMIGO', '2022-07-28', 'INATIVO'),
(179, 91, 'Cinthia Dannielly Barros', '038.550.691', 'AMIGO', '2022-07-28', 'INATIVO'),
(180, 91, 'Thiago Lima', '055.587.571', 'AMIGO', '2022-07-28', 'INATIVO'),
(181, 91, 'Maria Lima', '711.175.731', 'AMIGO', '2022-07-28', 'INATIVO'),
(182, 42, 'Raimindo de Moura ', '443.319.911', 'AMIGO', '2022-08-08', 'INATIVO'),
(183, 42, 'Ivondina de Moura', '619.255.431', 'AMIGO', '2022-08-08', 'INATIVO'),
(184, 42, 'Giselle Alves Ribeiro', '112.519.587', 'AMIGO', '2022-08-08', 'INATIVO'),
(186, 42, 'Diego de Souza Alves', '126.706.787', 'AMIGO', '2022-08-08', 'INATIVO'),
(187, 42, 'Tatiane de Lima AraÃºjo', '856.934.992', 'AMIGO', '2022-08-08', 'INATIVO'),
(188, 42, 'OtÃ¡vio Dutra Leite', '685.478.622', 'AMIGO', '2022-08-08', 'INATIVO'),
(189, 42, 'JOÃ‰LISON FONTES DE LIMA', '989.619.181', 'AMIGO', '2022-08-08', 'INATIVO'),
(190, 42, 'THAIS SILVA LEAL FONTES', '009.579.461', 'AMIGO', '2022-08-08', 'INATIVO'),
(191, 42, 'Joyce Leal Fontes', '081.433.171', 'AMIGO', '2022-08-08', 'INATIVO'),
(192, 42, 'Maria das Neves Silva Paumgartten', '393.400.582', 'DEPENDENTE', '2022-08-08', 'INATIVO'),
(193, 42, 'Bianca Paiva', '040.872.441', 'AMIGO', '2022-08-10', 'INATIVO'),
(194, 42, 'Douglas Silva', '029.236.421', 'AMIGO', '2022-08-10', 'INATIVO'),
(195, 42, 'Jackeline Barbosa', '805.769.072', 'AMIGO', '2022-08-10', 'INATIVO'),
(196, 42, 'Lourival Pereira Junior', '825.620.832', 'AMIGO', '2022-08-10', 'INATIVO'),
(197, 42, 'Manuele Silveira Cavalcante', '036.709.541', 'AMIGO', '2022-08-10', 'INATIVO'),
(198, 42, 'Mario Lima dos Santos', '015.523.382', 'AMIGO', '2022-08-10', 'INATIVO'),
(199, 42, 'AndrÃ©a RÃªgo', '981.905.982', 'AMIGO', '2022-08-10', 'INATIVO'),
(200, 42, 'Walber RÃªgo', '886.076.232', 'AMIGO', '2022-08-10', 'INATIVO'),
(201, 42, 'Rafaela Alves', '028.334.241', 'AMIGO', '2022-08-10', 'INATIVO'),
(202, 42, 'Sander Santos', '385.136.698', 'AMIGO', '2022-08-10', 'INATIVO'),
(203, 42, 'Martha Montenegro', '099.931.988', 'AMIGO', '2022-08-10', 'INATIVO'),
(205, 83, 'Brenda', '034.987.987', 'AMIGO', '2022-09-03', 'INATIVO'),
(206, 83, 'Davi medrado ', '04096967210', 'AMIGO', '2022-09-03', 'INATIVO'),
(207, 83, 'Lorane Rodrigues ', '03104755509', 'AMIGO', '2022-09-03', 'INATIVO'),
(208, 83, 'LetÃ­cia Galeno aragao', '03213448712', 'AMIGO', '2022-09-03', 'INATIVO'),
(209, 83, 'Maria Leila ', '02016781509', 'Escolher...', '2022-09-03', 'INATIVO'),
(210, 83, 'JoÃ£o Pedro ', '08945678761', 'Escolher...', '2022-09-03', 'INATIVO'),
(211, 83, ' JoÃ£o Paiva ', '01045678943', 'AMIGO', '2022-09-03', 'INATIVO'),
(212, 83, ' Sarah ', '02012398761', 'AMIGO', '2022-09-03', 'INATIVO'),
(213, 83, 'Renata Marrocos ', '04056712345', 'AMIGO', '2022-09-03', 'INATIVO'),
(214, 83, 'Raiane', '03586543210', 'Escolher...', '2022-09-03', 'INATIVO'),
(215, 83, 'Nicolas Danilo ', '01366534504', 'AMIGO', '2022-09-03', 'INATIVO'),
(216, 83, 'Joice ', '05527698761', 'AMIGO', '2022-09-03', 'INATIVO'),
(217, 83, 'Laissa', '01356794023', 'Escolher...', '2022-09-03', 'INATIVO'),
(218, 83, 'Paulo', '02356712390', 'Escolher...', '2022-09-03', 'INATIVO'),
(219, 83, 'Talita ', '01145671234', 'AMIGO', '2022-09-03', 'INATIVO'),
(220, 83, 'Thais ', '02056712345', 'AMIGO', '2022-09-03', 'INATIVO'),
(221, 83, 'Thomas', '01467254386', 'Escolher...', '2022-09-03', 'INATIVO'),
(222, 83, 'Will', '03276534690', 'AMIGO', '2022-09-03', 'INATIVO'),
(223, 83, 'Suzane', '03687645901', 'AMIGO', '2022-09-03', 'INATIVO'),
(224, 83, 'Suze', '03945698304', 'Escolher...', '2022-09-03', 'INATIVO'),
(225, 83, 'Davi Firmino ', '03734578605', 'AMIGO', '2022-09-03', 'INATIVO'),
(226, 83, 'Roni', '03965423708', 'Escolher...', '2022-09-03', 'INATIVO'),
(227, 110, 'Shirlei ', '83201386120', 'FAMILIAR', '2022-10-04', 'INATIVO'),
(228, 110, 'Paulo Fernando ', '388.971.727', 'FAMILIAR', '2022-10-04', 'INATIVO'),
(229, 110, 'Fernando', '849.597.621', 'FAMILIAR', '2022-10-04', 'INATIVO'),
(230, 110, 'Darluce', '88646815153', 'FAMILIAR', '2022-10-04', 'INATIVO'),
(231, 110, 'Daniel ', '69776733115', 'AMIGO', '2022-10-04', 'INATIVO'),
(239, 110, 'Cleiber', '60623195100', 'PERMISSIONARIO', '2022-10-04', 'INATIVO'),
(242, 110, 'Katiane', '00000000000', 'AMIGO', '2022-10-08', 'INATIVO'),
(243, 110, 'Elisangela ', '00000000000', 'AMIGO', '2022-10-08', 'INATIVO'),
(244, 110, 'JosÃ© Carlos', '00000000000', 'AMIGO', '2022-10-08', 'INATIVO'),
(245, 110, 'Neci', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(246, 110, 'Maria Clara ', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(247, 110, 'Ana LuÃ­sa ', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(248, 110, 'Daiane ', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(249, 110, 'Antonio Carlos (Toninho)', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(250, 110, 'Alysson ', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(251, 110, 'Elimar', '00000000000', 'FAMILIAR', '2022-10-08', 'INATIVO'),
(252, 81, 'Daniel da Silva Lisboa Mota ', '012.484.011', 'PERMISSIONARIO', '2022-10-09', 'INATIVO'),
(253, 81, 'Danila Mota Nunes Lisboa ', '00695852108', 'DEPENDENTE', '2022-10-09', 'INATIVO'),
(254, 81, 'AndrÃ© Luiz Pereira da Silva ', '88069648104', 'FAMILIAR', '2022-10-09', 'INATIVO'),
(255, 58, 'Joice de Souza Dias', '02320447134', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(256, 58, 'Maria jose de souza', '34056459134', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(257, 58, 'Antonio fernandes dias', '11677988134', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(258, 58, 'Marcia pereira rocha', '22509453149', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(259, 58, 'Jaime rodrigues dias', '39338371115', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(261, 58, 'Michele Rodrigues da silva', '01128057107', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(262, 58, 'Luzia rodrigues da silva', '39797880168', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(264, 58, 'Kelly rodrigues da silva', '79168787120', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(265, 58, 'Kauan custodio da silva', '09597838141', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(266, 58, 'Gleyce kelly rodrigues arante', '05963223130', 'FAMILIAR', '2022-11-04', 'INATIVO'),
(267, 58, 'Karine de souza dias', '05551729109', 'FAMILIAR', '2022-11-06', 'INATIVO'),
(268, 58, 'Matheus Hani', '05692754150', 'FAMILIAR', '2022-11-06', 'INATIVO'),
(269, 107, 'Ana Lucia ', '88844534209', 'AMIGO', '2022-11-12', 'INATIVO'),
(270, 107, 'Beatriz', '43212254687', 'Escolher...', '2022-11-12', 'INATIVO'),
(271, 107, 'Lurdes', '33322154376', 'Escolher...', '2022-11-12', 'INATIVO'),
(272, 107, 'Thalia', '32145678955', 'AMIGO', '2022-11-12', 'INATIVO'),
(274, 48, 'Priscilla Sousa Pereira ', '034.844.471', 'PERMISSIONARIO', '2023-02-02', 'INATIVO'),
(275, 48, 'JosÃ© Heitor Euclides Jansen Pereira ', '107.914.031', 'DEPENDENTE', '2023-02-02', 'INATIVO'),
(276, 48, 'Ivanusia Maria de Sousa', '359.345.491', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(278, 48, 'MÃ¡rcio AntÃ´nio dos Santos Pereira ', '310.280.711', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(283, 48, 'Dhiego Sousa Pereira', '034.844.421', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(284, 48, 'Amanda Soares Waller', '052.943.561', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(285, 48, 'Ivonilde Maria de Sousa ', '351.464.431', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(286, 48, 'Marcos Alberto Alves de Paula ', '334.195.821', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(287, 48, 'Lucas Sousa de Paula ', '065.296.601', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(288, 48, 'Julia CÃ¢mara Silva Pires', '706.136.171', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(289, 48, 'Gabriel Sousa de Paula', '043.390.011', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(290, 48, 'ThainÃ¡ Toledo Thomazine ', '065.296.811', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(291, 48, 'Julieta Maria de Sousa ', '342.723.211', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(292, 48, 'Raimundo Ferreira de Sousa ', '010.089.601', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(293, 48, 'Ivan Ferreira de Sousa ', '386.149.281', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(294, 48, 'Sarah Cristina Koury ', '852.609.081', 'FAMILIAR', '2023-02-02', 'INATIVO'),
(295, 48, 'Brunna Lucato de Sousa', '04391504189', 'FAMILIAR', '2023-02-03', 'INATIVO'),
(296, 48, 'Matheus Cavaletti', '02265597180', 'FAMILIAR', '2023-02-03', 'INATIVO'),
(298, 79, 'HELIO PORTO', '29677846809', 'PERMISSIONARIO', '2023-03-11', 'INATIVO'),
(299, 113, 'Roberto Cezar', '69921520172', 'AMIGO', '2023-03-21', 'INATIVO'),
(300, 113, 'Delma Neiva ', '99443783134', 'AMIGO', '2023-03-21', 'INATIVO'),
(301, 113, 'Maria Laura Macedo', '08928006155', 'AMIGO', '2023-03-21', 'INATIVO'),
(306, 113, 'Letticia Gomes', '02531159142', 'AMIGO', '2023-03-23', 'INATIVO'),
(314, 113, 'Fabiana Oliveira Leite', '597.777.612', 'AMIGO', '2023-03-23', 'INATIVO'),
(316, 113, 'Ana luzia dos Santos Monte ', '93349017134', 'AMIGO', '2023-03-23', 'INATIVO'),
(320, 113, 'Wellington AraÃºjo do Monte ', '96726229100', 'AMIGO', '2023-03-23', 'INATIVO'),
(321, 113, 'Solange Macedo', '08928027152', 'AMIGO', '2023-03-23', 'INATIVO'),
(322, 113, 'GILSON CALDAS DE OLIVEIRA', '84120878104', 'AMIGO', '2023-03-23', 'INATIVO'),
(323, 113, 'DEBORA CLARA BEZERRA', '00748607129', 'AMIGO', '2023-03-23', 'INATIVO'),
(324, 113, 'Stanley AraÃºjo dos Santos ', '92366309104', 'AMIGO', '2023-03-23', 'INATIVO'),
(325, 113, 'Cristiane InÃ¡cio Vieira ', '96049057168', 'AMIGO', '2023-03-23', 'INATIVO'),
(326, 113, 'Kellerman Lemos Serra ', '89443403153', 'Escolher...', '2023-03-23', 'INATIVO'),
(327, 113, 'Ã‰rica ', '12887779737', 'AMIGO', '2023-03-23', 'INATIVO'),
(328, 113, 'Anderson Dias Bomtempo ', '00038498138', 'AMIGO', '2023-03-24', 'INATIVO'),
(330, 113, 'Jaqueline da Silva AraÃºjo ', '01672042119', 'AMIGO', '2023-03-24', 'INATIVO'),
(331, 113, 'Zilene Caldas ', '76849449168', 'AMIGO', '2023-03-25', 'INATIVO'),
(332, 113, 'Johannes Caldas', '01654491799', 'AMIGO', '2023-03-25', 'INATIVO'),
(333, 113, 'Rogerio Teodoro dos santos', '57985200134', 'AMIGO', '2023-03-25', 'INATIVO'),
(334, 113, 'RosÃ¢ngela Maria Gomes da silva', '53954289172', 'AMIGO', '2023-03-25', 'INATIVO'),
(335, 113, 'Ana Rebeca de Jesus Silva ', '09194694184', 'AMIGO', '2023-03-25', 'INATIVO'),
(336, 113, 'Karen  Cristyne  Melo', '03167664100', 'AMIGO', '2023-03-25', 'INATIVO'),
(337, 113, 'Wilson Bezerra ', '70260451134', 'AMIGO', '2023-03-25', 'INATIVO'),
(338, 113, 'Fellype Gabriel ', '08959991104', 'AMIGO', '2023-03-25', 'INATIVO'),
(339, 113, 'Maria Aparecida Rodrigues De Almeida ', '56463952168', 'AMIGO', '2023-03-25', 'INATIVO'),
(340, 113, 'Roseane ', '99448866100', 'AMIGO', '2023-03-25', 'INATIVO'),
(341, 113, 'Ana Carolina ', '08214995132', 'AMIGO', '2023-03-25', 'INATIVO'),
(342, 113, 'Jeovaney ', '88613631134', 'AMIGO', '2023-03-25', 'INATIVO'),
(343, 113, 'Delma Neiva', '99443783134', 'AMIGO', '2023-03-26', 'INATIVO'),
(344, 113, 'Roberto Cezar', '99443783134', 'AMIGO', '2023-03-26', 'INATIVO'),
(345, 113, 'Maria Laura Macedo', '08928006155', 'AMIGO', '2023-03-26', 'INATIVO'),
(346, 113, 'Letticia Gomes', '02531159142', 'AMIGO', '2023-03-26', 'INATIVO'),
(347, 113, 'Fabiana Oliveira Leite', '05977777612', 'AMIGO', '2023-03-26', 'INATIVO'),
(348, 113, 'Ana Luiza dos Santos Monte', '93349017134', 'AMIGO', '2023-03-26', 'INATIVO'),
(349, 113, 'Wellington Araujo do Monte', '96726229100', 'AMIGO', '2023-03-26', 'INATIVO'),
(350, 113, 'Solange Macedo', '08928027152', 'AMIGO', '2023-03-26', 'INATIVO'),
(351, 113, 'Gilson Caldas de Oliveira', '84120878104', 'Escolher...', '2023-03-26', 'INATIVO'),
(352, 113, 'Debora Clara Bezerra ', '07486070129', 'Escolher...', '2023-03-26', 'INATIVO'),
(353, 113, 'Stanley AraÃºjo Dos Santos', '92366309104', 'Escolher...', '2023-03-26', 'INATIVO'),
(354, 113, 'Cristiane InÃ¡cio Vieira', '96049057168', 'AMIGO', '2023-03-26', 'INATIVO'),
(355, 113, 'Kellerman Lemos Serra', '89421071853', 'Escolher...', '2023-03-26', 'INATIVO'),
(356, 113, 'Ãˆrica', '12887779007', 'Escolher...', '2023-03-26', 'INATIVO'),
(358, 113, 'Anderson Dias Bom Tempo', '00038498138', 'Escolher...', '2023-03-26', 'INATIVO'),
(359, 113, 'Jaqueline da Silva Araujo', '01672042119', 'Escolher...', '2023-03-26', 'INATIVO'),
(360, 113, 'Zilene Caldas', '76849449168', 'Escolher...', '2023-03-26', 'INATIVO'),
(361, 113, ' Johannes Caldas', '99448866100', 'Escolher...', '2023-03-26', 'INATIVO'),
(362, 113, 'Johanne Caldas', '99448866100', 'Escolher...', '2023-03-26', 'INATIVO'),
(363, 113, 'Eduardo Caldas de Oliveira', '10175862176', 'Escolher...', '2023-03-26', 'INATIVO'),
(364, 113, 'Letticia Oliveira Mesquita  Gomes', '02531159142', 'AMIGO', '2023-03-26', 'INATIVO'),
(365, 113, 'Fellype Gabriel dos Santos Monte ', '08959991104', 'Escolher...', '2023-03-26', 'INATIVO'),
(366, 84, 'Cristiane Medeiros ', '02427470198', 'FAMILIAR', '2023-03-29', 'INATIVO'),
(367, 84, 'Adriana Livino de Medeiros ', '01371225192', 'FAMILIAR', '2023-03-29', 'INATIVO'),
(369, 84, 'Cicera Livino de Medeiros ', '51254166149', 'Escolher...', '2023-03-29', 'INATIVO'),
(370, 84, 'Ivaldo felix ', '54654211500', 'Escolher...', '2023-03-29', 'INATIVO'),
(371, 84, 'Maria Cordeiro ', '27112250110', 'FAMILIAR', '2023-03-31', 'INATIVO'),
(372, 84, 'Maiara Cordeiro Livino', '04591141152', 'FAMILIAR', '2023-04-01', 'INATIVO'),
(373, 84, 'Leandro Paulino Alves da Cruz ', '05715064104', 'FAMILIAR', '2023-04-01', 'INATIVO'),
(374, 84, 'Vanessa', '01347166122', 'FAMILIAR', '2023-04-01', 'INATIVO'),
(375, 84, 'Zilda Livino de Medeiros', '25891375168', 'FAMILIAR', '2023-04-01', 'INATIVO'),
(376, 84, 'Denilson Livino de Medeiros', '01347169148', 'FAMILIAR', '2023-04-01', 'INATIVO'),
(377, 113, 'teste', '29677846809', 'PERMISSIONARIO', '2023-09-22', 'INATIVO'),
(378, 113, 'helio', '29677846809', 'FAMILIAR', '2023-09-22', 'INATIVO'),
(379, 113, 'carlos', '29677846809', 'PERMISSIONARIO', '2023-09-22', 'INATIVO'),
(380, 113, 'teste', '29677846809', 'PERMISSIONARIO', '2023-09-22', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `depententes`
--

CREATE TABLE `depententes` (
  `id_dependentes` int(11) NOT NULL,
  `nomedepend` varchar(200) NOT NULL,
  `vinculo` text NOT NULL,
  `datanascdepend` date NOT NULL,
  `sexodepend` varchar(15) NOT NULL,
  `tel_depend` text NOT NULL,
  `email_depend` varchar(255) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `depententes`
--

INSERT INTO `depententes` (`id_dependentes`, `nomedepend`, `vinculo`, `datanascdepend`, `sexodepend`, `tel_depend`, `email_depend`, `id_permiss`, `arquivo`) VALUES
(2, 'CARLA MARIA PEREIRA BEDAQUE PORTO SOARES', 'CONJUGÊ', '1982-07-26', 'Masculino', '(61) 99121-0333', 'kabedaque@hotmail.com', 147, 'sim'),
(3, ' ANA LAURA BEDAQUE PORTO SOARES ', 'FILHO(A)', '2004-07-19', 'Feminino', '(61) 99619-9104', 'analauraportosoares@gmail.com', 147, 'sim'),
(5, ' SUELLEM ', 'CONJUGÊ', '2023-08-24', 'Feminino', '(61) 99665-3389', 'kabedaque@hotmail.com', 120, 'Nao'),
(31, ' SUELLEM ROCHA COSTA DE MORAIS', 'CONJUGÊ', '1984-08-13', 'Feminino', '(61) 98280-0088', 'suellemrc_pe@hotmail.com', 0, 'Nao'),
(37, 'Helio Porto', 'MÃE', '2023-08-31', 'Masculino', '(61) 99665-3387', 'hlfrancisco61@gmail.com', 147, 'Nao'),
(39, 'Helio Porto', 'CONJUGÊ', '2023-08-10', 'Masculino', '(61) 99665-3387', 'hlfrancisco61@gmail.com', 147, 'Nao'),
(40, 'Helio Porto', 'MÃE', '2023-08-17', 'Feminino', '(61) 99619-9104', 'hlfrancisco61@gmail.com', 147, 'Nao'),
(42, 'ANA LAURA BEDAQUE PORTO SOARES', 'Filho', '2023-09-23', 'Masculino', '(61) 99619-9104', 'analauraportosoares@gmail.com', 147, 'Sim'),
(43, 'ANA LAURA BEDAQUE PORTO SOARES', 'Filho', '2023-09-28', 'Masculino', '(61) 99665-3388', 'analauraportosoares@gmail.com', 147, 'Nao'),
(44, 'ANA LAURA BEDAQUE PORTO SOARES', 'Filho', '2023-09-13', 'Feminino', '(61) 99619-9104', 'analauraportosoares@gmail.com', 5, 'Nao'),
(45, 'Helio Porto', 'Conjugê', '2023-09-01', 'Masculino', '(61) 99665-3387', 'hlfrancisco61@gmail.com', 4, 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos_cautela`
--

CREATE TABLE `documentos_cautela` (
  `id_documentos` int(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `desc_objeto` varchar(100) NOT NULL,
  `entreg_por` varchar(200) NOT NULL,
  `data_saida_doc` date NOT NULL,
  `data_entrega_doc` date DEFAULT NULL,
  `recebido_por` varchar(100) NOT NULL,
  `situacao_doc` varchar(100) NOT NULL DEFAULT 'PENDENTE',
  `arquivo_doc` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `documentos_cautela`
--

INSERT INTO `documentos_cautela` (`id_documentos`, `id_permiss`, `desc_objeto`, `entreg_por`, `data_saida_doc`, `data_entrega_doc`, `recebido_por`, `situacao_doc`, `arquivo_doc`) VALUES
(2, 1, 'rererere', 'Subsíndico ', '2023-06-11', '2023-08-14', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(3, 2, 'CADEIRA PRETA SALÃO FESTAS - 01(UMA)', 'Subsíndico ', '2023-06-11', '2023-08-14', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(5, 1, 'MESA PRETA SALÃO DE FESTAS - 01(UMA)', 'Subsíndico ', '2023-06-11', '2023-08-14', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(18, 2, 'TESTE', 'Helio Porto  - Subsíndico ', '2023-06-12', '2023-08-02', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(19, 2, 'KKKKKKKKKKKKKK', 'Helio Porto  - Subsíndico ', '2023-06-12', '2023-08-02', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(20, 0, '', 'Bruno - Portaria', '2023-08-02', '2023-08-14', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(35, 104, 'MESA BRANCA DO SALÃO DE FESTAS(ESTADO:REGULAR).', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(40, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(41, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(42, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(43, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(44, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(45, 42, 'retertretretre', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(46, 1, 'ccccc', 'Rone - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(47, 7, 'fffffffffff', 'Rone - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(48, 17, 'eeeee', 'Rone - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(49, 18, 'xxxxx', 'Rone - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(50, 18, 'xxxxx', 'Rone - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(51, 3, 'xxxxx', 'Rone - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(52, 13, 'ddddd', 'Bruno - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(53, 13, 'ddddd', 'Bruno - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(54, 13, 'ddddd', 'Bruno - Portaria', '2023-09-01', '0000-00-00', '', 'PENDENTE', 'Nao'),
(55, 2, '', 'Bruno - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(56, 2, 'ssssss', 'Bruno - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(57, 2, 'ssssss', 'Bruno - Portaria', '2023-09-01', '2023-09-12', 'Helio Porto- Sub-sindico', 'RECEBIDO', 'SIM'),
(63, 5, 'dddddddddddddd', 'Bruno - Portaria', '2023-09-05', '2023-09-05', 'Bruno- Portaria', 'RECEBIDO', 'SIM'),
(66, 23, 'rrrrr', 'Helio Porto - Sub-sindico', '2023-09-12', '0000-00-00', '', 'PENDENTE', 'Nao'),
(67, 2, 'teste', 'Helio Porto - Sub-sindico', '2023-09-12', NULL, '', 'PENDENTE', 'Nao'),
(68, 147, 'teste', 'Helio Porto - Sub-sindico', '2023-09-12', NULL, '', 'PENDENTE', 'Nao'),
(69, 2, 'teste', 'Helio Porto - Sub-sindico', '2023-09-12', NULL, '', 'PENDENTE', 'Nao'),
(70, 147, 'testetetet', 'Helio Porto - Sub-sindico', '2023-09-12', NULL, '', 'PENDENTE', 'Nao'),
(71, 147, 'dddddddddddddddd', 'Helio Porto - Sub-sindico', '2023-09-13', NULL, '', 'PENDENTE', 'Nao'),
(72, 147, 'dddddddddddddddd', 'Helio Porto - Sub-sindico', '2023-09-13', NULL, '', 'PENDENTE', 'Nao'),
(73, 6, 'feito', 'Helio Porto - Sub-sindico', '2023-09-13', NULL, '', 'PENDENTE', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos_notificacao`
--

CREATE TABLE `documentos_notificacao` (
  `id_documentos_not` int(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `infracao` varchar(150) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `cargo_func` varchar(100) NOT NULL,
  `data_registro` date NOT NULL,
  `arquivo_pdf` varchar(200) NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `documentos_notificacao`
--

INSERT INTO `documentos_notificacao` (`id_documentos_not`, `id_permiss`, `infracao`, `descricao`, `cargo_func`, `data_registro`, `arquivo_pdf`, `arquivo`) VALUES
(14, 147, 'Cachorro em Areás comuns', 'wqwdewewqewqewqeq', 'Bruno - Portaria', '2023-09-13', '650089e91081e.pdf', 'Nao'),
(15, 147, 'Falta de Controle do Portão', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'Bruno - Portaria', '2023-09-28', '65008bcd799f3.pdf', 'Nao'),
(16, 30, 'Uso indevido da Garagem', 'Fez uso indevido de vaga provisória sem autorização da Administração, visto que ja tinha sido avisado sobre o uso da mesma. ', 'Bruno - Portaria', '2023-09-10', '65008d41371aa.pdf', 'Nao'),
(17, 2, 'Barulho Excessivo', 'fffffffffffffff', 'Helio Porto - Sub-sindico', '2023-09-13', '', 'Nao'),
(18, 2, 'Barulho Excessivo', 'fffffffffffffff', 'Helio Porto - Sub-sindico', '2023-09-13', '', 'Nao'),
(19, 5, 'Barulho Excessivo', 'fffffff', 'Helio Porto - Sub-sindico', '2023-09-20', '', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `festas`
--

CREATE TABLE `festas` (
  `id` int(11) NOT NULL,
  `id_Perm` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `npessoas` int(11) NOT NULL,
  `data_festa` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `festas`
--

INSERT INTO `festas` (`id`, `id_Perm`, `tipo`, `npessoas`, `data_festa`, `status`) VALUES
(31, 109, 'Remunerada', 20, '2022-07-09', 'ARQUIVADO'),
(32, 113, 'Remunerada', 40, '2022-06-25', 'ARQUIVADO'),
(35, 42, 'Remunerada', 40, '2022-08-13', 'ARQUIVADO'),
(36, 48, 'Remunerada', 40, '2022-07-21', 'ARQUIVADO'),
(37, 91, 'Isenta', 40, '2022-07-28', 'ARQUIVADO'),
(39, 83, 'Remunerada', 40, '2022-09-03', 'ARQUIVADO'),
(40, 110, 'Remunerada', 40, '2022-10-08', 'ARQUIVADO'),
(41, 81, 'Remunerada', 40, '2022-10-09', 'ARQUIVADO'),
(42, 58, 'Remunerada', 40, '2022-11-06', 'ARQUIVADO'),
(43, 107, 'Remunerada', 40, '2022-11-13', 'ARQUIVADO'),
(44, 116, 'Remunerada', 40, '2022-11-26', 'ARQUIVADO'),
(45, 30, 'Remunerada', 40, '2023-01-17', 'ARQUIVADO'),
(46, 48, 'Remunerada', 40, '2023-02-02', 'ARQUIVADO'),
(49, 113, 'Remunerada', 40, '2023-09-22', 'ativo'),
(51, 109, 'REMUNERADA', 40, '2023-08-24', 'ARQUIVADO'),
(53, 7, 'Remunerada', 5, '2023-08-24', 'ARQUIVADO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem`
--

CREATE TABLE `garagem` (
  `id_garagem` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `vaga` text NOT NULL,
  `placa` varchar(11) NOT NULL,
  `modelo` varchar(11) NOT NULL,
  `cor` varchar(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `situacao` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem`
--

INSERT INTO `garagem` (`id_garagem`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `situacao`, `arquivo`) VALUES
(1, 'CARRO', '01-SUBSOLO', 'HHH-9988', 'GOL', 'PRATA', 147, 'TEMPORARIA', 'Nao'),
(2, 'CARRO', '02-SUBSOLO', 'PAY2129', 'FIESTA', 'VERMELHO', 36, 'DEFINITIVA', 'Nao'),
(3, 'CARRO', '03-SUBSOLO', 'PWE 4478', 'UNO', 'PRATA', 7, 'DEFINITIVA', 'Nao'),
(4, 'CARRO', '04-SUBSOLO', '', '', '', 45, 'PROVISÓRIA', 'Nao'),
(5, 'CARRO', '05-SUBSOLO', 'PAY 5078', 'SIENA', 'BRANCO', 54, 'DEFINITIVA', 'Nao'),
(6, 'CARRO', '06-SUBSOLO', 'JIX9245', 'FUSION', 'PRETO', 61, 'DEFINITIVA', 'Nao'),
(7, 'CARRO', '07-SUBSOLO', 'OZV4339', 'CIVIC', 'PRATA', 35, 'DEFINITIVA', 'Nao'),
(8, 'CARRO', '08-SUBSOLO', '', 'CIVICLI', '', 73, 'DEFINITIVA', 'Nao'),
(9, 'CARRO', '09-SUBSOLO', '', 'DUSTER', 'BRANCA', 37, 'DEFINITIVA', 'Nao'),
(10, 'CARRO', '10-SUBSOLO', '', 'CELTA ', 'PRATA', 74, 'DEFINITIVA', 'Nao'),
(11, 'CARRO', '11-SUBSOLO', 'PAH 6307', 'HB20', 'BRANCO', 92, 'DEFINITIVA', 'Nao'),
(12, 'CARRO', '12-SUBSOLO', 'JIP 4190', 'SIENA ', 'CINZA', 67, 'DEFINITIVA', 'Nao'),
(13, 'CARRO', '13-SUBSOLO', '', '', '', 75, 'PROVISÓRIA', 'Nao'),
(14, 'CARRO', '14-SUBSOLO', '', '', '', 16, 'PROVISÓRIA', 'Nao'),
(15, 'CARRO', '15-SUBSOLO', 'PZM1849', 'ARGO', 'PRATA', 146, 'DEFINITIVA', 'Nao'),
(16, 'CARRO', '16-SUBSOLO', 'KBU 1940', 'KADET', 'VERDE', 148, 'DEFINITIVA', 'Nao'),
(17, 'CARRO', '17-SUBSOLO', '', '', '', 79, 'DEFINITIVA', 'Nao'),
(18, 'CARRO', '18-SUBSOLO', 'NSL 8541', 'GOL', 'VERMELHO', 53, 'DEFINITIVA', 'Nao'),
(19, 'CARRO', '19-SUBSOLO', 'LTT 3481', 'I30', 'PRATA', 13, 'DEFINITIVA', 'Nao'),
(20, 'CARRO', '20-SUBSOLO', '', '', '', 25, 'DEFINITIVA', 'Nao'),
(21, 'CARRO', '21-SUBSOLO', 'JGR 5262', 'CORSA', 'VERMELHO', 56, 'DEFINITIVA', 'Nao'),
(22, 'CARRO', '22-SUBSOLO', '', '', '', 52, 'DEFINITIVA', 'Nao'),
(23, 'CARRO', '23-SUBSOLO', '', '', '', 23, 'TEMPORÁRIA', 'Nao'),
(24, 'CARRO', '24-SUBSOLO', 'MWX6879', 'GOL', 'PRETO', 9, 'DEFINITIVA', 'Nao'),
(25, 'CARRO', '25-SUBSOLO', 'JFN 8091', 'CORSA', 'BEGE', 114, 'DEFINITIVA', 'Nao'),
(26, 'CARRO', '26-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(27, 'CARRO', '27-SUBSOLO', '', '', '', 26, 'TEMPORÁRIA', 'Nao'),
(28, 'CARRO', '28-SUBSOLO', '', '', '', 5, 'DEFINITIVA', 'Nao'),
(29, 'CARRO', '29-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(30, 'CARRO', '30-SUBSOLO', '', '', '', 57, 'PROVISORIA', 'Nao'),
(31, 'CARRO', '31-SUBSOLO', 'REF7D27', 'CERATO', 'VERMELHO', 147, 'DEFINITIVA', 'Sim'),
(32, 'CARRO', '32-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(33, 'CARRO', '33-SUBSOLO', '', 'LOGAN SEDAN', 'VERMELHO', 35, 'TEMPORÁRIA', 'Nao'),
(34, 'CARRO', '34-SUBSOLO', '2', '2', '2', 58, 'DEFINITIVA', 'Nao'),
(35, 'CARRO', '35-SUBSOLO', 'LCF 5955', 'GOL', 'PRATA', 82, 'DEFINITIVA', 'Nao'),
(36, 'CARRO', '36-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(37, 'CARRO', '37-SUBSOLO', '2', '2', '2', 18, 'TEMPORÁRIA', 'Nao'),
(38, 'CARRO', '38-SUBSOLO', '2', '2', '2', 138, 'TEMPORÁRIA', 'Nao'),
(39, 'CARRO', '39-SUBSOLO', 'PAZ6625', 'VOYAGE', 'PRETO', 103, 'DEFINITIVA', 'Nao'),
(40, 'MOTOS', '40-SUBSOLO', 'MOTOS', 'MOTOS', 'MOTOS', 0, 'MOTOS', 'Nao'),
(41, 'CARRO', '41-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(42, 'CARRO', '42-SUBSOLO', '2', '2', '2', 18, 'DEFINITIVA', 'Nao'),
(43, 'CARRO', '43-SUBSOLO', 'JIM0338', 'GOL', 'PRATA', 113, 'DEFINITIVA', 'Nao'),
(44, 'CARRO', '44-SUBSOLO', 'NGQ 8903', 'COROLLA', 'PRETO', 28, 'DEFINITIVA', 'Nao'),
(45, 'CARRO', '45-SUBSOLO', 'JFY 6127', 'CORSA', 'AZUL', 94, 'DEFINITIVA', 'Nao'),
(46, 'CARRO', '46-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(47, 'CARRO', '47-SUBSOLO', '2', '2', '2', 61, 'TEMPORÁRIA', 'Nao'),
(48, 'CARRO', '48-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(49, 'CARRO', '49-SUBSOLO', '2', '2', '2', 111, 'DEFINITIVA', 'Nao'),
(50, 'CARRO', '50-SUBSOLO', 'JHD 9790', 'VOYAGE', 'PRATA', 95, 'DEFINITIVA', 'Nao'),
(51, 'CARRO', '51-SUBSOLO', 'JIF 5111', 'SANDERO', 'BRANCO', 100, 'DEFINITIVA', 'Nao'),
(52, 'CARRO', '52-SUBSOLO', 'LNO 1022', 'CORSA', 'PRATA', 65, 'DEFINITIVA', 'Nao'),
(53, 'CARRO', '53-SUBSOLO', '2', '2', '2', 119, 'PROVISÓRIA', 'Nao'),
(54, 'CARRO', '54-SUBSOLO', '2', '2', '2', 99, 'DEFINITIVA', 'Nao'),
(55, 'CARRO', '55-SUBSOLO', 'JIJ 3123', 'POLO', 'PRATA', 21, 'DEFINITIVA', 'Nao'),
(56, 'CARRO', '56-SUBSOLO', 'PBU9795', 'VERSA', 'BRANCO', 120, 'DEFINITIVA', 'Nao'),
(57, 'CARRO', '57-SUBSOLO', 'JIC 6623', 'LOGAN', 'BEGE', 59, 'DEFINITIVA', 'Nao'),
(58, 'CARRO', '58-SUBSOLO', 'PAZ3844', 'CORSA CLASS', 'PRATA', 127, 'DEFINITIVA', 'Nao'),
(59, 'CARRO', '59-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(60, 'CARRO', '60-SUBSOLO', 'JIG2682', 'CAPTIVA', 'PRATA', 144, 'DEFINITIVA', 'Nao'),
(61, 'CARRO', '61-SUBSOLO', '', '', '', 38, 'DEFINITIVA', 'Nao'),
(62, 'CARRO', '62-SUBSOLO', '', '', '', 112, 'DEFINITIVA', 'Nao'),
(63, 'CARRO', '63-SUBSOLO', '', '', '', 74, 'TEMPORÁRIA', 'Nao'),
(64, 'CARRO', '64-SUBSOLO', '', '', '', 87, 'DEFINITIVA', 'Nao'),
(65, 'CARRO', '65-SUBSOLO', 'PAV4926', 'HB 20', 'PRATA', 138, 'DEFINITIVA', 'Nao'),
(66, 'CARRO', '66-SUBSOLO', '', '', '', 125, 'DEFINITIVA', 'Nao'),
(67, 'CARRO', '67-SUBSOLO', '', '', '', 63, 'DEFINITIVA', 'Nao'),
(68, 'CARRO', '68-SUBSOLO', '', '', '', 117, 'DEFINITIVA', 'Nao'),
(69, 'CARRO', '69-SUBSOLO', 'FTV 3553', 'PRISMA', 'PRATA', 136, 'DEFINITIVA', 'Nao'),
(70, 'CARRO', '70-SUBSOLO', '', '', '', 59, 'TEMPORÁRIA', 'Nao'),
(71, 'CARRO', '71-SUBSOLO', '', '', '', 96, 'DEFINITIVA', 'Nao'),
(72, 'CARRO', '72-SUBSOLO', '', '', '', 49, 'DEFINITIVA', 'Nao'),
(73, 'CARRO', '73-SUBSOLO', 'JKO 5280', 'BALI', 'BRANCO', 106, 'DEFINITIVA', 'Nao'),
(74, 'CARRO', '74-SUBSOLO', 'JKD 7543', 'LOGAN', 'PRETO', 20, 'DEFINITIVA', 'Nao'),
(75, 'CARRO', '75-SUBSOLO', 'JEA 1338', 'KADET', 'BRANCO', 23, 'DEFINITIVA', 'Nao'),
(76, 'CARRO', '76-SUBSOLO', '', '', '', 26, 'DEFINITIVA', 'Nao'),
(77, 'CARRO', '77-SUBSOLO', 'PAB 1428', 'JAC I3', 'PRATA', 140, 'DEFINITIVA', 'Nao'),
(78, 'CARRO', '78-SUBSOLO', 'JKL7177', 'SANDERO', 'VERMELHO', 46, 'DEFINITIVA', 'Nao'),
(79, 'CARRO', '79-SUBSOLO', '', '', '', 32, 'PROVISÓRIA', 'Nao'),
(80, 'CARRO', '80-SUBSOLO', '', '', '', 0, 'VAZIA', 'Nao'),
(81, 'CARRO', '81-SUBSOLO', '', '', '', 71, 'PROVISÓRIA', 'Nao'),
(82, 'CARRO', '82-SUBSOLO', '', '', '', 50, 'PROVISÓRIA', 'Nao'),
(83, 'CARRO', '83-SUBSOLO', 'JEH 4590', 'CIVIC', 'PRATA', 60, 'DEFINITIVA', 'Nao'),
(84, 'CARRO', '84-SUBSOLO', 'JKI8959', 'SONIC', 'PRETO', 78, 'DEFINITIVA', 'Nao'),
(85, 'CARRO', '85-SUBSOLO', 'PAG 1882', 'PRISMA', 'PRATA', 72, 'DEFINITIVA', 'Nao'),
(86, 'CARRO', '86-SUBSOLO', '', '', '', 39, 'PROVISÓRIA', 'Nao'),
(87, 'CARRO', '87-SUBSOLO', 'LJL 4348', 'ESCORT', 'VERMELHO', 31, 'DEFINITIVA', 'Nao'),
(88, 'CARRO', '88-TÉRREO', '', '', '', 0, 'VAZIA', 'Nao'),
(89, 'CARRO', '89-TÉRREO', 'JIP 0899', 'CERATO', 'CINZA', 155, 'DEFINITIVA', 'Nao'),
(90, 'CARRO', '90-TÉRREO', 'OVS 0131', 'COBALT', 'BRANCO', 158, 'DEFINITIVA', 'Nao'),
(91, 'CARRO', '91-TÉRREO', 'JHF 8990', 'CELTA', 'PRATA', 135, 'DEFINITIVA', 'Nao'),
(92, 'CARRO', '92-TÉRREO', 'PEG 3300', 'DOBLO', 'CINZA', 33, 'DEFINITIVA', 'Nao'),
(93, 'CARRO', '93-TÉRREO', 'PAM 3882', 'FLUENCE', 'PRATA', 139, 'DEFINITIVA', 'Nao'),
(94, 'CARRO', '94-TÉRREO', 'JHC 0992', 'CROSSFOX', 'AMARELO', 42, 'DEFINITIVA', 'Nao'),
(95, 'CARRO', '95-TERREO', '', '', '', 62, 'DEFINITIVA', 'Nao'),
(96, 'CARRO', '96-TÉRREO', 'JCQ 4647', 'SIENA', '', 12, 'DEFINITIVA', 'Nao'),
(97, 'CARRO', '97-TÉRREO', '', '', '', 132, 'DEFINITIVA', 'Nao'),
(98, 'CARRO', '98-TÉRREO', 'OMY 0386', 'CIVIC', 'PRETO', 68, 'DEFINITIVA', 'Nao'),
(99, 'CARRO', '99-TÉRREO', 'JIR 2338', 'GOL', 'PRETO', 17, 'DEFINITIVA', 'Nao'),
(100, 'CARRO', '100-TÉRREO', 'JIV 3428', 'SIENA', 'PRATA', 159, 'DEFINITIVA', 'Nao'),
(101, 'CARRO', '101-TÉRREO', 'LUP 5452', 'UNO ', 'CINZA', 108, 'DEFINITIVA', 'Nao'),
(102, 'CARRO', '102-TÉRREO', '', '', '', 104, 'DEFINITIVA', 'Nao'),
(103, 'CARRO', '103-TÉRREO', '', '', '', 156, 'DEFINITIVA', 'Nao'),
(104, 'CARRO', '104-TÉRREO', '', '', '', 0, 'VAZIA', 'Nao'),
(105, 'CARRO', '105-TÉRREO', 'FJN 3100', 'KA', 'BRANCO', 110, 'DEFINITIVA', 'Nao'),
(106, 'CARRO', '106-TÉRREO', '', '', '', 0, 'VAZIA', 'Nao'),
(107, 'CARRO', '107-TÉRREO', 'PAY2346', 'GOL', 'BRANCO', 101, 'DEFINITIVA', 'Nao'),
(108, 'CARRO', '108-TÉRREO', '', '', '', 143, 'DEFINITIVA', 'Nao'),
(109, 'CARRO', '109-TÉRREO', '', '', '', 0, 'VAZIA', 'Nao'),
(129, 'CARRO', '31-SUBSOLO', 'REF-7D27', 'CERATO', 'VERMELHO', 147, 'DEFINITIVA', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem_espera`
--

CREATE TABLE `garagem_espera` (
  `id_garagem_espera` int(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `dataentr_pred` date NOT NULL,
  `posicao_fila` int(11) NOT NULL,
  `prioridade` varchar(3) NOT NULL DEFAULT 'Nao',
  `arquivo` varchar(3) NOT NULL,
  `data_arquivo_fila` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem_espera`
--

INSERT INTO `garagem_espera` (`id_garagem_espera`, `id_permiss`, `dataentr_pred`, `posicao_fila`, `prioridade`, `arquivo`, `data_arquivo_fila`) VALUES
(1, 122, '2019-12-01', 1, 'Nao', 'Nao', '0000-00-00'),
(2, 39, '2016-10-11', 2, 'Nao', 'Nao', '0000-00-00'),
(6, 75, '2014-03-01', 3, 'Sim', 'Nao', '0000-00-00'),
(8, 69, '2014-06-02', 4, 'Nao', 'Nao', '0000-00-00'),
(9, 141, '2018-04-09', 5, 'Sim', 'Nao', '0000-00-00'),
(10, 89, '2016-01-04', 6, 'Nao', 'Nao', '0000-00-00'),
(11, 66, '2019-02-28', 7, 'Sim', 'Nao', '0000-00-00'),
(12, 47, '2020-08-01', 8, 'Nao', 'Nao', '0000-00-00'),
(13, 6, '2020-08-01', 9, 'Nao', 'Nao', '0000-00-00'),
(14, 32, '2021-07-01', 10, 'Sim', 'Nao', '0000-00-00'),
(15, 19, '2022-01-26', 11, 'Nao', 'Nao', '0000-00-00'),
(16, 50, '2023-01-20', 12, 'Nao', 'Nao', '0000-00-00'),
(17, 45, '2023-01-23', 13, 'Nao', 'Nao', '0000-00-00'),
(18, 71, '2023-01-25', 14, 'Nao', 'Nao', '0000-00-00'),
(22, 147, '2023-09-29', 15, 'Nao', 'Sim', '2023-09-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem_espera_motos`
--

CREATE TABLE `garagem_espera_motos` (
  `id_garagem_espera_moto` int(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `dataentr_pred` date NOT NULL,
  `posicao_fila` int(11) NOT NULL,
  `arquivo` varchar(3) NOT NULL,
  `data_arquivo_fila` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem_espera_motos`
--

INSERT INTO `garagem_espera_motos` (`id_garagem_espera_moto`, `id_permiss`, `dataentr_pred`, `posicao_fila`, `arquivo`, `data_arquivo_fila`) VALUES
(1, 2, '2023-08-10', 1, 'Sim', '2023-08-02'),
(3, 4, '2023-08-11', 1, 'Sim', '2023-08-02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem_moto`
--

CREATE TABLE `garagem_moto` (
  `id_garagem_moto` int(11) NOT NULL,
  `tipo` varchar(11) NOT NULL,
  `vaga` varchar(150) NOT NULL,
  `placa` varchar(11) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `cor` varchar(11) NOT NULL,
  `id_permiss` int(11) NOT NULL,
  `data_entrada` date NOT NULL,
  `data_saida` date NOT NULL,
  `situacao` varchar(11) NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem_moto`
--

INSERT INTO `garagem_moto` (`id_garagem_moto`, `tipo`, `vaga`, `placa`, `modelo`, `cor`, `id_permiss`, `data_entrada`, `data_saida`, `situacao`, `arquivo`) VALUES
(4, 'MOTO', '03-ENTRADA DO TÉRREO', 'HHHHH', 'HHHH', 'HHHH', 156, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(5, 'MOTO', '04-PAREDE DO SALÃO', '', '', '', 0, '0000-00-00', '0000-00-00', 'VAZIA', 'Nao'),
(6, 'MOTO', '05-ENTRE A VAGA 89 E 90 ', 'HHHHH', 'HHHH', 'HHHH', 54, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(7, 'MOTO', '06-ENTRE A VAGA 91 E 92 ', 'HHHHH', 'HHHH', 'HHHH', 33, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(8, 'MOTO', '07-ENTRE A VAGA 93 E 93 ', '', '', '', 0, '0000-00-00', '0000-00-00', 'VAZIA', 'Nao'),
(9, 'MOTO', '08-ENTRE A VAGA 92 E 93 ', 'HHHHH', 'HHHH', 'HHHH', 62, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(10, 'MOTO', '09-ENTRE A VAGA 60 E 61 ', 'HHHHH', 'HHHH', 'HHHH', 32, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(11, 'MOTO', '10-VAGA 40 SUBSOLO', 'HHHHH', 'HHHH', 'HHHH', 61, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(12, 'MOTO', '11-VAGA 40 SUBSOLO', 'HHHHH', 'HHHH', 'HHHH', 18, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(13, 'MOTO', '12-VAGA 40 SUBSOLO', 'HHH-9988', 'Honda Biz', 'BRANCA', 49, '2023-09-14', '0000-00-00', 'VAZIA', 'Nao'),
(14, 'MOTO', '13-VAGA 40 SUBSOLO', '', '', '', 0, '0000-00-00', '0000-00-00', 'VAZIA', 'Nao'),
(15, 'MOTO', '14-PAREDE SUBSOLO', 'HHHHH', 'HHHH', 'HHHH', 54, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(16, 'MOTO', '15-PAREDE SUBSOLO', 'HHHHH', 'HHHH', 'HHHH', 31, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(17, 'MOTO', '16-PAREDE SUBSOLO', 'HHHHH', 'HHHH', 'HHHH', 31, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(18, 'MOTO', '17-PAREDE SUBSOLO', '', '', '', 0, '0000-00-00', '0000-00-00', 'VAZIA', 'Nao'),
(19, 'MOTO', '18-VAGA DO LIXO', 'HHHHH', 'HHHH', 'HHHH', 59, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(20, 'MOTO', '19-VAGA DO LIXO', '', '', '', 0, '0000-00-00', '0000-00-00', 'VAZIA', 'Nao'),
(21, 'MOTO', '20-VAGA DO LIXO', 'HHHHH', 'HHHH', 'HHHH', 21, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(22, 'MOTO', '21-VAGA DO LIXO', 'HHHHH', 'HHHH', 'HHHH', 61, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(34, 'CARRO', '02-ENTRADA DO TÉRREO', 'HHHHH', 'HHHH', 'HHH', 110, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao'),
(35, 'CARRO', '01-ENTRADA DO TÉRREO', 'HHHHH', 'HHHH', 'HHHH', 16, '2023-08-17', '0000-00-00', 'DEFINITIVA', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem_troca`
--

CREATE TABLE `garagem_troca` (
  `id_garagem_troca` int(11) NOT NULL,
  `dataentr_troca_gar` date NOT NULL,
  `posicao_fila` int(11) NOT NULL,
  `data_ulti_desist` date DEFAULT NULL,
  `qnd_desist` int(11) NOT NULL,
  `cod_permiss` int(11) NOT NULL,
  `data_arquivo` date NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem_troca`
--

INSERT INTO `garagem_troca` (`id_garagem_troca`, `dataentr_troca_gar`, `posicao_fila`, `data_ulti_desist`, `qnd_desist`, `cod_permiss`, `data_arquivo`, `arquivo`) VALUES
(1, '2023-08-09', 1, '2023-08-15', 2, 1, '0000-00-00', 'Nao'),
(2, '2021-05-14', 2, '2023-01-15', 3, 52, '0000-00-00', 'Nao'),
(3, '2021-06-23', 3, '2023-01-15', 3, 96, '0000-00-00', 'Nao'),
(4, '2022-12-05', 4, '2023-01-15', 2, 56, '0000-00-00', 'Nao'),
(5, '2022-12-12', 5, '2023-01-15', 1, 113, '0000-00-00', 'Nao'),
(6, '2022-02-15', 6, '2023-01-15', 1, 37, '0000-00-00', 'Nao'),
(7, '2023-04-19', 7, NULL, 0, 119, '0000-00-00', 'Nao'),
(11, '2023-05-08', 8, '0000-00-00', 0, 170, '0000-00-00', 'Nao'),
(12, '2023-06-06', 9, NULL, 0, 5, '0000-00-00', 'Nao'),
(13, '2023-09-16', 10, NULL, 0, 1, '2023-09-14', 'Sim'),
(14, '2023-09-30', 11, '2023-09-29', 1, 3, '2023-09-14', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garagem_troca_moto`
--

CREATE TABLE `garagem_troca_moto` (
  `id_garagem_troca_moto` int(11) NOT NULL,
  `dataentr_troca_gar` date NOT NULL DEFAULT current_timestamp(),
  `posicao_fila` int(11) NOT NULL,
  `data_ulti_desist` date NOT NULL,
  `qnd_desist` int(10) NOT NULL,
  `cod_permiss` int(11) NOT NULL,
  `data_arquivo` date NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `garagem_troca_moto`
--

INSERT INTO `garagem_troca_moto` (`id_garagem_troca_moto`, `dataentr_troca_gar`, `posicao_fila`, `data_ulti_desist`, `qnd_desist`, `cod_permiss`, `data_arquivo`, `arquivo`) VALUES
(1, '2023-08-02', 1, '2023-08-15', 2, 1, '0000-00-00', 'Nao'),
(4, '2023-08-24', 2, '2023-08-22', 6, 3, '0000-00-00', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `imagem` varchar(220) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `material_carga`
--

CREATE TABLE `material_carga` (
  `id_matcarga` int(11) NOT NULL,
  `material` varchar(300) NOT NULL,
  `data_compra` date NOT NULL,
  `foto` varchar(200) NOT NULL,
  `local_alocado` varchar(300) NOT NULL,
  `valor` text NOT NULL,
  `tempouso` int(11) NOT NULL,
  `localcompra` varchar(150) NOT NULL,
  `telloja` varchar(50) NOT NULL,
  `tipomaterial` varchar(150) NOT NULL,
  `data_descarga` date NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `material_carga`
--

INSERT INTO `material_carga` (`id_matcarga`, `material`, `data_compra`, `foto`, `local_alocado`, `valor`, `tempouso`, `localcompra`, `telloja`, `tipomaterial`, `data_descarga`, `arquivo`) VALUES
(6, 'Monitor  20 pol', '2023-08-01', '64daaef3d21a9.jpg', 'portaria', '1.5', 0, 'casas bahia', '61996653387', 'Casado(a)', '0000-00-00', 'Nao'),
(7, 'Monitor  20 pol', '2023-08-01', '64daaf213ca82.jpg', 'portaria', '1.5', 0, 'casas bahia', '61996653387', 'Casado(a)', '0000-00-00', 'Nao'),
(8, 'Monitor  20 pol', '2023-08-01', '64daaf33a8122.jpg', 'portaria', '1.500,00', 0, 'casas bahia', '61996653387', 'Casado(a)', '0000-00-00', 'Nao'),
(9, 'TESTE', '2023-08-25', '64dab607546cd.jpg', 'portaria', '2.000,00', 0, 'casas bahia', '(66) 55555-4444', 'Solteiro(a)', '0000-00-00', 'Nao'),
(10, 'TESTE', '2023-08-25', '64dab6af4ce59.jpg', 'portaria', '2.000,00', 0, 'casas bahia', '(66) 55555-4444', 'Solteiro(a)', '0000-00-00', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissionarios`
--

CREATE TABLE `permissionarios` (
  `id_permissionarios` int(11) NOT NULL,
  `apt` varchar(10) NOT NULL,
  `dataentr` date NOT NULL,
  `postoesp` varchar(10) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `datanasc` date NOT NULL,
  `sexo` varchar(9) NOT NULL,
  `telcel` text NOT NULL,
  `secaotrab` varchar(15) NOT NULL,
  `saram` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `estadocv` text NOT NULL,
  `filhos` text NOT NULL,
  `datasaida` datetime NOT NULL,
  `carta_apresent` varchar(200) NOT NULL,
  `nada_consta` varchar(200) NOT NULL,
  `atualizado` date NOT NULL,
  `arquivo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `permissionarios`
--

INSERT INTO `permissionarios` (`id_permissionarios`, `apt`, `dataentr`, `postoesp`, `nome`, `cpf`, `datanasc`, `sexo`, `telcel`, `secaotrab`, `saram`, `email`, `estadocv`, `filhos`, `datasaida`, `carta_apresent`, `nada_consta`, `atualizado`, `arquivo`) VALUES
(1, '101 - A', '0000-00-00', '2S QSS SAD', 'PREFEITURA AERONAUTICA DE BRASILIA', '0', '2023-09-15', 'Masculino', '(61) 99619-9104', 'STM', 3461595, 'hlfrancisco65@gmail.com.br', 'Casado(a)', '1', '0000-00-00 00:00:00', ' ', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(2, '102 - A', '2019-06-07', '2S', 'LEIDIANE PALMEIRAS DA SILVA', '148.314.727-43', '0000-00-00', '', '', '', 0, 'leidianepalmeira7@gmail.com', '', '', '0000-00-00 00:00:00', ' ', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(3, '103 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '1', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(4, '104 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '2', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(5, '201 - A', '2022-06-01', '3S', 'MARCELO GOMES FLEURY DE MELO', '035.449.691-30', '0000-00-00', '', '', '', 0, 'marcelogomesmilitar@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(6, '202 - A', '2020-08-01', '3S', 'SELMA SANTOS SILVA', '723.279.871-72', '0000-00-00', '', '', '', 0, 'selma-gby@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(7, '203 - A', '2015-03-04', '2S', 'BRUNA PEREIRA DE LEMOS', '397.757.748-45', '0000-00-00', '', '', '', 0, 'brunnalemos@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(8, '204 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '3', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(9, '301 - A', '2005-09-01', '3S', 'ABIMAEL DE SOUSA RIBEIRO JUNIOR', '517.264.753-87', '0000-00-00', '', '', '', 0, 'juniorbase39@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(10, '302 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '4', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(11, '303 - A', '2023-03-02', '1S', 'JOSEILSON DE SOUZA SILVA', '034.444.464-38', '0000-00-00', '', '', '', 0, 'joseilsonjss@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(12, '304 - A', '2013-06-20', '2S', 'RENATO DIAS RIBEIRO', '727.081.151-20', '0000-00-00', '', '', '', 0, 'rnt359@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(13, '401 - A', '2017-02-22', '2S', 'LIZIANE DO NASCIMENTO MONTEIRO', '039.882.783-43', '0000-00-00', '', '', '', 0, 'liziane_monteiro@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(14, '402 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '5', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(15, '403 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '6', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(16, '404 - A', '2021-02-09', '2S', 'DIEGO DA CRUZ LOPES', '112.815.487-07', '0000-00-00', '', '', '', 0, 'lopesdcll@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(17, '501 - A', '2009-05-01', '2S', 'MARCOS RAFAEL SOUSA FERREIRA MARTIN', '793.708.961-04', '0000-00-00', '', '', '', 0, 'chefemcasadf@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(18, '502 - A', '2019-06-24', 'CB', 'JEFERSON DE SOUZA ALENCAR', '982.116.251-72', '0000-00-00', '', '', '', 0, 'jefersonfab@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(19, '503 - A', '2022-01-26', '3S', 'IGOR SILVA NASCIMENTO', '124.891.437-60', '0000-00-00', '', '', '', 0, 'igorisn@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(20, '504 - A', '2013-09-07', '2S', 'WILDEBRAN GOMES DE OLIVEIRA', '011.564.444-03', '0000-00-00', '', '', '', 0, 'wildebrangomes@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(21, '601 - A', '2009-05-01', 'CB', 'GILDEBRAN JACOME DE LIMA OLIVEIRA', '875.949.354-20', '0000-00-00', '', '', '', 0, 'giljacome@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(22, '602 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '7', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(23, '603 - A', '2009-12-01', '1S', 'GEOVANE DA SILVA FALCÃO', '282.467.213-72', '0000-00-00', '', '', '', 0, 'sgtfalcon1@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(24, '604 - A', '2017-03-13', '3S', 'ANA PAULA RODRIGUES FERREIRA', '139.661.157-60', '0000-00-00', '', '', '', 0, 'anaapaulaferodri@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(25, '701 - A', '2022-01-18', '2S', 'RAFAEL OLIVEIRA DOS SANTOS', '123.220.927-97', '0000-00-00', '', '', '', 0, 'rafaelsantosros@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(26, '702 - A', '2014-04-16', '2S', 'JOECE BARBOSA DE ALMEIDA', '409.615.338-97', '0000-00-00', '', '', '', 0, 'joeceba@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(27, '703 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '8', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(28, '704 - A', '2002-08-06', '3S', 'JEFFERSON ARAUJO SOARES', '646.689.241-72', '0000-00-00', '', '', '', 0, 'jasoaresii@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(29, '801 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '9', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(30, '802 - A', '2019-10-01', '3S', 'JAN MICHEL NASCIMENTO SILVA', '032.006.601-04', '0000-00-00', '', '', '', 0, 'janjmns@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(31, '803 - A', '2017-01-18', '1S', 'ALEXANDRE ALVES DIAS', '987.738.874-04', '0000-00-00', '', '', '', 0, 'alexandredias34@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(32, '804 - A', '2021-07-01', '2S', 'ANTONIO LUIZ SILVA SOUZA', '994.259.391-87', '0000-00-00', '', '', '', 0, 'tonysmile2010@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(33, '901 - A', '2008-08-01', '1S', 'ALEXANDRO DA SILVA', '909.001.540-04', '0000-00-00', '', '', '', 0, 'stillpontovip@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(34, '902 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '10', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(35, '903 - A', '2013-01-24', '2S', 'BRUNO ANDRE DE LIMA BARBOSA', '106.590.527-09', '0000-00-00', '', '', '', 0, 'michelle.gui75@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(36, '904 - A', '2017-03-09', '2S', 'JONATHAS ALMEIDA GONÇALVES', '034.819.321-11', '2023-06-29', 'Masculino', '(61) 99684-6187', 'STM', 6152368, 'jonathas.df@hotmail.com', 'Casado(a)', '', '2023-08-17 19:26:11', '', '65038020415b8.pdf', '0000-00-00', 'Sim'),
(37, '1001 - A', '2022-01-18', '2S', 'THIAGO MATOS DINIZ', '110.707.767-26', '0000-00-00', '', '', '', 0, 'mdiniztmd@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(38, '1002 - A', '2021-12-14', 'CB', 'RENE CUNHA CASTRO', '006.409.011-66', '0000-00-00', '', '', '', 0, 'renercc@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(39, '1003 - A', '2016-10-11', 'CB', 'RICARDO ALESSANDRO DOS SANTOS', '985.769.761-53', '0000-00-00', '', '', '', 0, 'ricardoalessandro985@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(40, '1004 - A', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '11', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(41, '105 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '12', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(42, '106 - B', '2016-02-18', '2S', 'DAVID CAMPOS LIMA', '987.300.021-68', '0000-00-00', '', '', '', 0, 'profmecampos@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(43, '107 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '13', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(44, '108 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '14', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(45, '205 - B', '2023-01-23', '2S', 'MARCELO DE SOUZA PEREIRA DE ALMEIDA', '106.019.697-23', '0000-00-00', '', '', '', 0, 'souzapereiramspa@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(46, '206 - B', '2006-10-06', '3S', 'RUDNAI FONSECA BARBOSA', '690.620.721-00', '0000-00-00', '', '', '', 0, 'rudnaibarbosa@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(47, '207 - B', '2020-08-01', '3S', 'ANDRESSA LENHAROTAVARES BARBOSA', '768.422.822-68', '0000-00-00', '', '', '', 0, 'andressa_lenharo@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(48, '208 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '15', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(49, '305 - B', '2021-02-09', '3S', 'MARIA ALINECLEIA OLIVEIRA DA SILVA', '047.549.493-82', '0000-00-00', '', '', '', 0, 'mariamos@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(50, '306 - B', '2023-01-20', '2S', 'DAEL ALISSON CUNHA DOS SANTOS', '714.877.352-00', '0000-00-00', '', '', '', 0, 'dael.alisson@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(51, '307 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '16', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(52, '308 - B', '2008-10-01', '1S', 'SILVANE BARBOSA DA CRUZ', '807.708.603-97', '0000-00-00', '', '', '', 0, 'silvanebr@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(53, '405 - B', '2013-03-08', '1S', 'FRANK FELIX DOS SANTOS', '592.684.332-49', '0000-00-00', '', '', '', 0, 'frankfelk@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(54, '406 - B', '2007-08-01', '2S', 'GLAUBER ARAUJO DE SOUSA', '786.807.271-72', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(55, '407 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '17', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(56, '408 - B', '2016-11-23', 'CB', 'DANILO VIEIRA DE ALMEIDA', '001.107.171-04', '0000-00-00', '', '', '', 0, 'vieiradva@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(57, '505 - B', '2020-08-01', '3S', 'LAIANE DA SILVA RODRIGUES', '022.899.211-73', '0000-00-00', '', '', '', 0, 'laianelsr@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(58, '506 - B', '2020-10-01', '3S', 'PRISCILLA SOUSA PEREIRA', '034.844.471-09', '0000-00-00', '', '', '', 0, 'priscillasp21@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(59, '507 - B', '2014-12-02', 'CB', 'MARCELO SILVA LIMA SOUZA', '729.253.451-15', '0000-00-00', '', '', '', 0, 'lima999@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(60, '508 - B', '2012-09-05', 'CB', 'ROBERTO SALES DOS S. NASCIMENTO', '998.201.451-04', '0000-00-00', '', '', '', 0, 'robertorssn@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(61, '605 - B', '2019-05-09', '2S', 'MARCELO VINICIO GOMES NUNES', '920.575.271-15', '0000-00-00', '', '', '', 0, 'santanamarcelo96@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(62, '606 - B', '2018-12-20', 'CB', 'ADRIANO CORDEIRO DE MACEDO', '002.634.591-95', '0000-00-00', '', '', '', 0, 'adriano.etc2010@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(63, '607 - B', '2022-12-07', '3S', 'ALICE MARIA COELHO CORDEIRO', '163.831.237-00', '0000-00-00', '', '', '', 0, 'alicemaricoelho@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(64, '608 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '18', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(65, '705 - B', '2018-03-14', '3S', 'CESAR DA CONCEIÇÃO VIEIRA', '120.045.667-01', '0000-00-00', '', '', '', 0, 'cesarcvieira@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(66, '706 - B', '2019-02-28', '3S', 'MURILO DE SOUZA PAULO FEO', '133.909.777-08', '0000-00-00', '', '', '', 0, 'feomurilo@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(67, '707 - B', '2008-09-01', '2S', 'FABIO ISIDORIO DOS SANTOS', '693.497.541-34', '0000-00-00', '', '', '', 0, 'sadfis@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(68, '708 - B', '2017-06-15', '3S', 'EDUARDO SOUZA ARAUJO', '016.701.881-75', '0000-00-00', '', '', '', 0, 'eduardodudu.esa@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(69, '805 - B', '2014-06-02', '1T', 'RAYLA FARIAS DE LUCENA', '146.587.277-90', '0000-00-00', '', '', '', 0, 'rayla_farias@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(70, '806 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '19', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(71, '807 - B', '2023-01-25', '2S', 'ABNER SOARES DUARTE', '747.080.316-53', '0000-00-00', '', '', '', 0, 'abnerasd@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(72, '808 - B', '2007-09-01', '3S', 'PAULO SERGIO OLIVEIRA RIBEIRO', '564.218.421-00', '0000-00-00', '', '', '', 0, 'pailo.bone41@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(73, '905 - B', '2020-07-29', 'CB', 'GLAUTER JEFFERSON DE JESUS SAN', '707.190.201-15', '0000-00-00', '', '', '', 0, 'glauterjefferson@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(74, '906 - B', '2019-10-01', '3S', 'FRANCISCA ANDREIA DE SOUZA', '004.544.791-82', '0000-00-00', '', '', '', 0, 'andreiamsz07@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(75, '907 - B', '2014-03-01', '2S', 'SAMANTHA MELO MOREIRA', '390.130.198-46', '0000-00-00', '', '', '', 0, 'samanthamelomoreira@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(76, '908 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '20', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(77, '1005 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '21', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(78, '1006 - B', '2020-12-03', '3S', 'LETICIA CAMPOS DA SILVA', '157.355.197-00', '0000-00-00', '', '', '', 0, 'lecampos.rh@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(79, '1007 - B', '2020-12-17', '2S', 'RAFAEL SILVA DA ROCHA', '137.474.717-30', '0000-00-00', '', '', '', 0, 'rocha.rafaelrsr@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(80, '1008 - B', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '22', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(81, '101 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '23', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(82, '102 - C', '2014-01-16', '2S', 'BRUNO DUARTE RODRIGUES', '119.022.037-71', '0000-00-00', '', '', '', 0, 'brunoduarte-fab@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(83, '103 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '24', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(84, '104 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '25', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(85, '201 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '26', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(86, '202 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '27', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(87, '203 - C', '2020-02-11', '3S', 'ALINE DIAS DOS SANTOS', '133.924.077-71', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(88, '204 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '28', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(89, '301 - C', '2016-01-04', '2S', 'PALOMA DE SOUSA NASCIMENTO', '150.470.797-40', '0000-00-00', '', '', '', 0, 'helenaranascimento13@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(90, '302 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '29', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(91, '303 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '30', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(92, '304 - C', '2014-09-01', '2S', 'ALAN JOSE DE AMORIM', '885.464.111-15', '0000-00-00', '', '', '', 0, 'ajamorim81@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(93, '401 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '31', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(94, '402 - C', '2017-05-02', 'CB', 'GUILHERME RODRIGUES DA SILVA', '003.921.191-61', '0000-00-00', '', '', '', 0, 'guilhermemp28@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(95, '403 - C', '2009-08-01', '2S', 'FRANCISCO DA SILVA RODRIGUES', '794.100.811-49', '0000-00-00', '', '', '', 0, 'fcocaminhodeluz@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(96, '404 - C', '2021-02-23', 'CB', 'ALAN ALVES ARAUJO', '705.211.071-72', '0000-00-00', '', '', '', 0, 'allan_ah@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(97, '501 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '32', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(98, '502 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '33', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(99, '503 - C', '2017-05-02', 'CB', 'ULISSES DE JESUS BARROS PEREIRA', '987.321.531-04', '0000-00-00', '', '', '', 0, 'ulisses.gte@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(100, '504 - C', '2017-02-08', '2S', 'SAMANTHA BENTO REZENDE', '126.682.797-80', '0000-00-00', '', '', '', 0, 'samy.sbr88@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(101, '601 - C', '2011-11-16', '2S', 'RAULISSON QUIRINO RIBEIRO', '702.158.551-91', '0000-00-00', '', '', '', 0, 'raulisonqr@yahoo.com.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(102, '602 - C', '2019-10-01', '3S', 'JULIO CESAR RIBEIRO DA ROCHA', '996.014.191-87', '0000-00-00', '', '', '', 0, 'jcesarrf10@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(103, '603 - C', '2017-07-25', '3S', 'NICKSON SILVA DE AGUIAR', '113.903.917-28', '0000-00-00', '', '', '', 0, 'nicksonaguiar@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(104, '604 - C', '2019-12-18', '3S', 'GABRIEL VICTOR FIAUX DOS SANTOS', '153.617.277-41', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(105, '701 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '34', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(106, '702 - C', '2012-12-11', 'CB', 'DANIEL DA SILVA LISBOA', '012.484.011-66', '0000-00-00', '', '', '', 0, 'lisboarj@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(107, '703 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '35', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(108, '704 - C', '2017-07-28', '3S', 'PHILIPPE GALDINO DE MORAES', '124.832.317-30', '0000-00-00', '', '', '', 0, 'philippe.moraes@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(109, '801 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '36', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(110, '802 - C', '2019-07-16', '3S', 'RUBEN MARCELINO DE OLIVEIRA', '384.505.018-73', '0000-00-00', '', '', '', 0, 'marcelinormdo@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(111, '803 - C', '2020-04-24', '3S', 'THENISON CORDEIRO DA SILVA', '998.263.721-53', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(112, '804 - C', '2017-12-07', '3S', 'ROGERIO MOURA DE ALMEIDA', '897.565.176-20', '0000-00-00', '', '', '', 0, 'rogerio4mil@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(113, '901 - C', '2017-07-11', '3S', 'KLEBSON ALVES DOS SANTOS', '077.053.804-55', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(114, '902 - C', '2015-05-26', '2S', 'PAULO OTONI DA SILVA', '008.969.661-19', '0000-00-00', '', '', '', 0, 'otonipaulo@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(115, '903 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '22222222222', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(116, '904 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '38', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(117, '1001 - C', '2011-09-14', 'CB', 'JUNIO CARDOSO SILVA SENA', '982.713.341-15', '0000-00-00', '', '', '', 0, 'jcsscontabil@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(118, '1002 - C', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '39', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(119, '1003 - C', '2017-08-09', '3S', 'ADRIANO QUEIROZ DA SILVA JUNIOR', '857.037.102-00', '0000-00-00', '', '', '', 0, 'adriano_i_drielly@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(120, '1004 - C', '2016-02-26', '2S', 'ALEXSANDRO SANTOS DE MORAIS', '051.317.204-19', '2023-08-26', 'MASCULINO', '(61) 99665-3387', 'STM', 898989898, 'resistente2@gmail.com', 'CASADO(A)', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(121, '105 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '40', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(122, '106 - D', '2009-12-01', '2S', 'RENI MARTINS COELHO', '036.990.166-50', '0000-00-00', '', '', '', 0, 'renigi@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(123, '107 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '41', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(124, '108 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '42', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(125, '205 - D', '2017-01-18', '3S', 'ANDRESSA VIEIRA DA SILVA', '134.921.507-48', '0000-00-00', '', '', '', 0, 'andressaavieira01@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(126, '206 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '43', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(127, '207 - D', '2013-03-19', '2S', 'CARLOS RODRIGUES MENDES DE SOUSA', '008.697.201-47', '0000-00-00', '', '', '', 0, 'rodrigomendes.sgt@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(128, '208 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '44', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(129, '305 - D', '2015-02-06', '1S', 'HUDSON DE OLIVEIRA NERES', '700.240.141-68', '0000-00-00', '', '', '', 0, 'husdonneres@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(130, '306 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '45', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(131, '307 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '46', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(132, '308 - D', '2019-10-01', '3S', 'RODRIGO IZIDIO DE SOUSA ATAIDE', '016.956.391-03', '0000-00-00', '', '', '', 0, 'rodrigoap21.8@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(133, '405 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '47', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(134, '406 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '48', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(135, '407 - D', '2015-12-07', 'CB', 'IZACK BRITO DE MATOS LIMA', '646.637.281-20', '0000-00-00', '', '', '', 0, 'izack.matos@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(136, '408 - D', '2017-12-04', '3S', 'ROGERIO DA CRUZ PEREIRA', '016.591.586-21', '0000-00-00', '', '', '', 0, 'rogerio_cta07@icloud.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(137, '505 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '49', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(138, '506 - D', '2013-10-24', '2S', 'LAIS DE OLIVEIRA QUEIROZ', '121.430.897-08', '0000-00-00', '', '', '', 0, 'laisqueirozloq@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(139, '507 - D', '2008-01-01', '1S', 'KELLY GONÇALVES DA SILVA ALVES', '724.544.151-00', '0000-00-00', '', '', '', 0, 'rafa.jesuscristo@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(140, '508 - D', '2012-02-15', '2S', 'AMILSON ALEXANDRE ALVES AMERICO', '908.025.861-04', '0000-00-00', '', '', '', 0, 'americo.alex@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(141, '605 - D', '2018-04-09', '2S', 'ASAPH SENHI', '393.393.828-70', '0000-00-00', '', '', '', 0, 'asaph.senhi@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(142, '606 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '50', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(143, '607 - D', '2012-09-14', '2S', 'ARMANDO DIAS FONSECA', '799.707.371-04', '2023-08-25', 'Masculino', '(61) 98521-4138', 'GABAER', 3321231, 'armandoicesp@gmail.com', 'Casado(a)', '', '2023-08-17 19:14:02', '', '65037e6527bda.pdf', '0000-00-00', 'Sim'),
(144, '608 - D', '2016-08-22', '3S', 'MARCOS JOSE DE OLIVEIRA ARAUJO', '363.133.758-23', '0000-00-00', '', '', '', 0, 'oliveirahorus@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(145, '705 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '51', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(146, '706 - D', '2015-02-02', 'CB', 'VITOR LUIS NASCIMENTO BORGES', '002.496.661-46', '0000-00-00', '', '', '', 0, 'cavacojb@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(147, '707 - D', '2013-03-20', '2S QSS SAD', 'HELIO FRANCISCO FERNANDADE PORTO SOARES', '296.778.468-09', '1982-01-22', 'MASCULINO', '(61) 99665-3388', 'STM2', 3491959, 'hlfrancisco61@gmail.com', 'SOLTEIRO(A)', '1', '0000-00-00 00:00:00', '64f785728100b.pdf', '65037d52db4f8.pdf', '2023-09-14', 'Nao'),
(148, '708 - D', '2007-08-01', '3S', 'CLEIBER PAULO COSTA DE OLIVEIRA', '606.231.951-00', '0000-00-00', '', '', '', 0, 'cleiberpaulo@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(149, '805 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '52', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(150, '806 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '53', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(151, '807 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '54', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(152, '808 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '55', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(153, '905 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '56', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(154, '906 - D', '2018-10-18', '2S', 'LORENA DIAS FACCION', '106.704.556-28', '0000-00-00', '', '', '', 0, 'faccionldf91@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(155, '907 - D', '2013-12-10', 'CB', 'HUGO TIAGO QUINTINO SOARES', '947.958.861-72', '0000-00-00', '', '', '', 0, 'hugohtqs@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(156, '908 - D', '2021-01-07', '2S', 'CASSIO FERNANDO SILVA DOS SANTOS', '048.177.194-86', '0000-00-00', '', '', '', 0, 'cassiocfss@fab.mil.br', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(157, '1005 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '57', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(158, '1006 - D', '2011-09-01', 'CB', 'REGIMAR DA CRUZ ARAUJO', '935.813.351-15', '0000-00-00', '', '', '', 0, 'golacruz55@gmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(159, '1007 - D', '2009-10-01', '2S', 'THIAGO GOMES FERREIRA', '906.066.711-53', '0000-00-00', '', '', '', 0, 'thiagotum@hotmail.com', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(160, '1008 - D', '0000-00-00', '', 'PREFEITURA AERONAUTICA DE BRASILIA', '58', '0000-00-00', '', '', '', 0, '', '', '', '0000-00-00 00:00:00', '', '65037d52db4f8.pdf', '0000-00-00', 'Nao'),
(170, '1008 - D', '2023-08-01', '2S QTA TCO', ' JONATHAS ALMEIDA GONCALVES ', '034.819.321-11', '2023-09-08', 'Masculino', '(61) 99684-6187', 'STM', 6152368, 'naopossue@gmail.com', 'Casado(a)', 'NAO', '0000-00-00 00:00:00', '', '', '0000-00-00', 'Nao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hidrometro\",\"table\":\"2022\"},{\"db\":\"hidrometro\",\"table\":\"total_diario\"},{\"db\":\"hidrometro\",\"table\":\"leitura\"},{\"db\":\"hidrometro\",\"table\":\"total_mensal\"},{\"db\":\"hidrometro\",\"table\":\"totais\"},{\"db\":\"mysql\",\"table\":\"time_zone_name\"},{\"db\":\"mysql\",\"table\":\"time_zone_transition\"},{\"db\":\"upload\",\"table\":\"upload\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"leitura\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"total_diario\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__users\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__central_columns\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__column_info\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__designer_settings\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"imagens\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edkluj93zv', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_ed35nbhsdn', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_ed35nbhsdn', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_ed35nbhsdn', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_ed35nbhsdn', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"pma__bookmark\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"}]'),
('cpses_edism4pxgc', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edism4pxgc', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edism4pxgc', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edism4pxgc', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"}]'),
('cpses_ednd4hgguw', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_ednd4hgguw', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_ednd4hgguw', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_ed1n3lglsb', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_ed1n3lglsb', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edp9nc4jr0', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edenrkeluh', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edzjn7m7pg', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_eds5rujp1d', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed4q0hno6f', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edky18bk3m', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edtkbhd9kf', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed09p9p3ep', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_ed5pqmpl7v', '[{\"db\":\"edifici1_hidrometro\",\"table\":\"2023\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"leitura\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"total_diario\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"2022\"},{\"db\":\"edifici1_hidrometro\",\"table\":\"parcial_diario\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"2022\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edfx6q4vzq', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edtefu50c9', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edj8s40d65', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edj8s40d65', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edj8s40d65', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edj8s40d65', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edj8s40d65', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edhgq82ixs', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edhgq82ixs', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"depententes\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edp27xmahk', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edy327uku8', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edy327uku8', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]'),
('cpses_edtjqtqafz', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edtvomafnw', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_ed3gjc5r4n', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"convidados\"},{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"festas\"}]'),
('cpses_edio3frrig', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"usuarios\"}]'),
('cpses_edxmzrx5nl', '[{\"db\":\"edifici1_cadastrocsb4\",\"table\":\"permissionarios\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"id DESC\"}', '2022-08-17 21:40:45'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`porteiro` ASC\"}', '2022-08-17 23:24:15'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`porteiro`  DESC\"}', '2022-08-17 23:24:19'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`porteiro`  ASC\"}', '2022-08-17 23:24:25'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`porteiro`  DESC\"}', '2022-08-17 23:24:28'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id` ASC\"}', '2022-08-17 23:24:31'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id`  DESC\"}', '2022-08-17 23:24:39'),
('cpses_edkluj93zv', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`id`  DESC\"}', '2022-08-17 23:28:17'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`apt` ASC\"}', '2022-09-28 14:23:57'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`apt` ASC\"}', '2022-09-28 14:23:57'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`apt` ASC\"}', '2022-09-28 14:24:29'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`apt` ASC\"}', '2022-09-28 14:25:34'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:26:13'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:26:46'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:27:58'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:29:21'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:31:38'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:33:27'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:33:34'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:35:22'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 14:37:15'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:34:31'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:37:11'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:40:26'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:53:11'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:54:16'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:54:33'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:55:57'),
('cpses_edp9nc4jr0', 'edifici1_cadastrocsb4', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`bloco` ASC\"}', '2022-09-28 15:56:50'),
('cpses_ed4q0hno6f', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`data_hora` DESC\"}', '2022-11-29 22:02:18'),
('cpses_ed5pqmpl7v', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id` ASC\"}', '2023-01-10 00:45:16'),
('cpses_ed5pqmpl7v', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id` ASC\"}', '2023-01-10 00:45:39'),
('cpses_ed5pqmpl7v', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id`  DESC\"}', '2023-01-10 02:33:09'),
('cpses_ed5pqmpl7v', 'edifici1_hidrometro', 'leitura', '{\"sorted_col\":\"`leitura`.`id`  DESC\"}', '2023-01-10 02:33:29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-04 14:33:00', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}'),
('cpses_edkluj93zv', '2022-08-18 00:10:58', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}'),
('cpses_edism4pxgc', '2022-09-01 15:24:06', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}'),
('cpses_ed1n3lglsb', '2022-09-03 00:00:06', '{\"lang\":\"pt\"}'),
('cpses_edp9nc4jr0', '2022-09-28 14:23:57', '{\"NavigationWidth\":0,\"lang\":\"pt\"}'),
('cpses_edenrkeluh', '2022-09-30 15:43:52', '{\"lang\":\"pt\"}'),
('cpses_edzjn7m7pg', '2022-11-17 17:59:53', '{\"lang\":\"pt\",\"NavigationWidth\":184}'),
('cpses_eds5rujp1d', '2022-11-21 15:11:56', '{\"lang\":\"pt\"}'),
('cpses_ed4q0hno6f', '2022-11-29 21:37:17', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}'),
('cpses_edky18bk3m', '2022-12-06 18:24:06', '{\"lang\":\"pt\"}'),
('cpses_edtkbhd9kf', '2022-12-12 18:37:28', '{\"lang\":\"pt\"}'),
('cpses_ed09p9p3ep', '2022-12-23 13:55:27', '{\"lang\":\"pt\"}'),
('cpses_ed5pqmpl7v', '2023-01-10 01:08:09', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}'),
('cpses_edfx6q4vzq', '2023-01-20 23:34:32', '{\"lang\":\"pt\"}'),
('cpses_edtefu50c9', '2023-01-26 17:53:38', '{\"lang\":\"pt\"}'),
('cpses_edj8s40d65', '2023-01-26 19:52:59', '{\"lang\":\"pt\"}'),
('cpses_edhgq82ixs', '2023-01-30 19:11:56', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}'),
('cpses_edp27xmahk', '2023-02-06 12:19:04', '{\"lang\":\"pt\"}'),
('cpses_ed3gjc5r4n', '2023-03-23 00:28:55', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}'),
('cpses_edxmzrx5nl', '2023-04-13 20:22:12', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `foto_user` varchar(150) NOT NULL,
  `nome_user` varchar(80) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `senha_user` varchar(150) NOT NULL,
  `cargo_user` varchar(50) NOT NULL,
  `cod_boleto` int(11) NOT NULL,
  `adm` int(11) NOT NULL,
  `ativo_user` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `foto_user`, `nome_user`, `email_user`, `senha_user`, `cargo_user`, `cod_boleto`, `adm`, `ativo_user`) VALUES
(3, '64a31b2b1d8dd.jpeg', 'Helio Porto ', 'hlfrancisco@gmail.com', '123', 'Subsíndico ', 123456, 0, 'S'),
(4, '64344b72c1f80.png', 'Carlos Eduardo', 'kadu@gmail.com', 'MTIzNDU2', 'Sindico', 0, 0, 'S'),
(7, '64345ddd74256.jpg', 'Carla Maria 2', 'kabedaque@gmail.com', 'MTIzNDU2', 'Limpeza', 0, 0, 'S'),
(8, '65033510de0d3.jpg', 'Helio Porto', 'hlfrancisco61@gmail.com', 'MTIzNDU2', 'Sub-sindico', 123456, 1, 'S'),
(10, '647f7f4ebaf68.jpg', 'Ana Laura', 'analaura@gmail.com', 'MTIzNDU2', 'Sindico', 0, 0, 'S'),
(26, '64e3e36576f1e.jpg', 'ALEX SANTOS', 'resistente2@gmail.com', 'MTIzNDU2', 'Permissionario', 0, 0, 'S'),
(27, '', 'leidiane', 'leidianepalmeira7@gmail.com', 'MTIzNDU2', 'Permissionario', 0, 0, 'S'),
(28, '', 'marcelo', 'marcelogomesmilitar@gmail.com', 'MTIzNDU2', 'Permissionario', 0, 0, 'S'),
(29, '', 'Rone', 'rone@edificioaeronautica.com.br', 'MTIzNDU2Nzg=', 'Portaria', 0, 0, 'S'),
(30, '64f0b269d49b1.jpg', 'Israel Menezes ', 'analaura@gmail.com', 'MTIzNDU2', 'Portaria', 0, 0, 'S'),
(32, '', 'Jan', 'janjmns@fab.mil.br', 'MTIzNDU2Nzg=', 'Permissionario', 0, 0, 'S');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`id_animais`);

--
-- Índices para tabela `apartamentos`
--
ALTER TABLE `apartamentos`
  ADD PRIMARY KEY (`id_apartamentos`);

--
-- Índices para tabela `bicicletario`
--
ALTER TABLE `bicicletario`
  ADD PRIMARY KEY (`id_bike`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `convidados`
--
ALTER TABLE `convidados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `depententes`
--
ALTER TABLE `depententes`
  ADD PRIMARY KEY (`id_dependentes`);

--
-- Índices para tabela `documentos_cautela`
--
ALTER TABLE `documentos_cautela`
  ADD PRIMARY KEY (`id_documentos`);

--
-- Índices para tabela `documentos_notificacao`
--
ALTER TABLE `documentos_notificacao`
  ADD PRIMARY KEY (`id_documentos_not`);

--
-- Índices para tabela `festas`
--
ALTER TABLE `festas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `garagem`
--
ALTER TABLE `garagem`
  ADD PRIMARY KEY (`id_garagem`);

--
-- Índices para tabela `garagem_espera`
--
ALTER TABLE `garagem_espera`
  ADD PRIMARY KEY (`id_garagem_espera`);

--
-- Índices para tabela `garagem_espera_motos`
--
ALTER TABLE `garagem_espera_motos`
  ADD PRIMARY KEY (`id_garagem_espera_moto`);

--
-- Índices para tabela `garagem_moto`
--
ALTER TABLE `garagem_moto`
  ADD PRIMARY KEY (`id_garagem_moto`);

--
-- Índices para tabela `garagem_troca`
--
ALTER TABLE `garagem_troca`
  ADD PRIMARY KEY (`id_garagem_troca`);

--
-- Índices para tabela `garagem_troca_moto`
--
ALTER TABLE `garagem_troca_moto`
  ADD PRIMARY KEY (`id_garagem_troca_moto`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `material_carga`
--
ALTER TABLE `material_carga`
  ADD PRIMARY KEY (`id_matcarga`);

--
-- Índices para tabela `permissionarios`
--
ALTER TABLE `permissionarios`
  ADD PRIMARY KEY (`id_permissionarios`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `id_animais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT de tabela `apartamentos`
--
ALTER TABLE `apartamentos`
  MODIFY `id_apartamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de tabela `bicicletario`
--
ALTER TABLE `bicicletario`
  MODIFY `id_bike` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `convidados`
--
ALTER TABLE `convidados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT de tabela `depententes`
--
ALTER TABLE `depententes`
  MODIFY `id_dependentes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `documentos_cautela`
--
ALTER TABLE `documentos_cautela`
  MODIFY `id_documentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `documentos_notificacao`
--
ALTER TABLE `documentos_notificacao`
  MODIFY `id_documentos_not` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `festas`
--
ALTER TABLE `festas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `garagem`
--
ALTER TABLE `garagem`
  MODIFY `id_garagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de tabela `garagem_espera`
--
ALTER TABLE `garagem_espera`
  MODIFY `id_garagem_espera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `garagem_espera_motos`
--
ALTER TABLE `garagem_espera_motos`
  MODIFY `id_garagem_espera_moto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `garagem_moto`
--
ALTER TABLE `garagem_moto`
  MODIFY `id_garagem_moto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `garagem_troca`
--
ALTER TABLE `garagem_troca`
  MODIFY `id_garagem_troca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `garagem_troca_moto`
--
ALTER TABLE `garagem_troca_moto`
  MODIFY `id_garagem_troca_moto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `material_carga`
--
ALTER TABLE `material_carga`
  MODIFY `id_matcarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `permissionarios`
--
ALTER TABLE `permissionarios`
  MODIFY `id_permissionarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Banco de dados: `edificil_hidrometro`
--
CREATE DATABASE IF NOT EXISTS `edificil_hidrometro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `edificil_hidrometro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitura`
--

CREATE TABLE `leitura` (
  `id` int(11) NOT NULL,
  `leitura_atual` int(11) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT current_timestamp(),
  `leitura_ant` int(11) NOT NULL,
  `consumo` int(11) NOT NULL,
  `porteiro` varchar(10) NOT NULL,
  `Cont_S_N` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `leitura`
--

INSERT INTO `leitura` (`id`, `leitura_atual`, `data_hora`, `leitura_ant`, `consumo`, `porteiro`, `Cont_S_N`) VALUES
(1, 100, '2023-03-10 03:13:02', 0, 100, 'Eu', 'S'),
(2, 120, '2023-03-10 03:13:26', 100, 20, 'Tu', 'S'),
(3, 150, '2023-03-10 03:24:34', 120, 30, 'Ele', 'S'),
(4, 180, '2023-03-10 03:32:03', 150, 30, 'Eu', 'S'),
(5, 200, '2023-03-10 03:33:13', 180, 20, 'Tu', 'S'),
(6, 240, '2023-03-10 03:34:51', 200, 40, 'Ele', 'S'),
(7, 205, '2023-03-10 03:44:39', 240, -35, 'Eu', 'S'),
(8, 230, '2023-03-10 03:45:48', 205, 25, 'Tu', 'S'),
(9, 248, '2023-03-10 03:46:25', 230, 18, 'Ele', 'S'),
(10, 251, '2023-03-10 12:44:14', 248, 3, 'Eu', 'S'),
(11, 260, '2023-03-10 12:45:00', 251, 9, 'Tu', 'S'),
(12, 269, '2023-03-10 12:53:50', 260, 9, 'Ele', 'S'),
(13, 279, '2023-03-11 12:44:01', 269, 10, 'Eu', 'S'),
(14, 289, '2023-03-12 17:54:31', 279, 10, 'Tu', 'S'),
(15, 299, '2023-03-12 18:01:04', 289, 10, 'Ele', 'S'),
(16, 309, '2023-03-13 10:13:43', 299, 10, 'Eu', 'S'),
(17, 329, '2023-03-13 10:14:33', 309, 20, 'Tu', 'S'),
(18, 339, '2023-03-13 10:16:04', 329, 10, 'Ele', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `total_diario`
--

CREATE TABLE `total_diario` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `soma_diaria` int(11) NOT NULL,
  `id_ultima_soma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `total_diario`
--

INSERT INTO `total_diario` (`id`, `data`, `soma_diaria`, `id_ultima_soma`) VALUES
(1, '2023-03-10 03:05:06', 0, 0),
(2, '2023-03-10 03:31:00', 370, 3),
(3, '2023-03-10 03:42:00', 620, 6),
(4, '2023-03-10 03:47:23', 683, 9),
(5, '2023-03-10 12:54:02', 780, 12),
(6, '2023-03-12 18:01:58', 867, 15),
(7, '2023-03-13 10:17:09', 40, 18);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `leitura`
--
ALTER TABLE `leitura`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `total_diario`
--
ALTER TABLE `total_diario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `leitura`
--
ALTER TABLE `leitura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `total_diario`
--
ALTER TABLE `total_diario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Banco de dados: `escolha`
--
CREATE DATABASE IF NOT EXISTS `escolha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escolha`;
--
-- Banco de dados: `escolha2017`
--
CREATE DATABASE IF NOT EXISTS `escolha2017` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escolha2017`;
--
-- Banco de dados: `hidrometro`
--
CREATE DATABASE IF NOT EXISTS `hidrometro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hidrometro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `2022`
--

CREATE TABLE `2022` (
  `id` int(11) NOT NULL,
  `mes` varchar(11) NOT NULL,
  `total_mes` int(11) NOT NULL,
  `cores` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `2022`
--

INSERT INTO `2022` (`id`, `mes`, `total_mes`, `cores`) VALUES
(1, 'janeiro', 100, 'Silver'),
(2, 'fevereiro', 0, 'SlateBlue'),
(3, 'marco', 30, 'MediumBlue'),
(4, 'abril', 11700, 'DodgerBlue'),
(5, 'maio', 23800, 'SteelBlue'),
(6, 'junho', 60, 'SlateGray'),
(7, 'julho', 70, 'DarkTurquoise'),
(8, 'agosto', 80, 'Aquamarine'),
(9, 'setembro', 90, 'DarkGreen'),
(10, 'outubro', 100, 'Goldenrod'),
(11, 'novembro', 110, 'Chocolate'),
(12, 'dezembro', 200, 'Indigo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitura`
--

CREATE TABLE `leitura` (
  `id` int(11) NOT NULL,
  `leitura_atual` int(11) NOT NULL,
  `data_hora` datetime NOT NULL DEFAULT current_timestamp(),
  `leitura_ant` int(11) NOT NULL,
  `consumo` int(11) NOT NULL,
  `Cont_S_N` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `leitura`
--

INSERT INTO `leitura` (`id`, `leitura_atual`, `data_hora`, `leitura_ant`, `consumo`, `Cont_S_N`) VALUES
(103, 500, '2022-04-26 14:37:56', 300, 200, 'S'),
(104, 600, '2022-04-26 14:38:02', 500, 100, 'S'),
(105, 800, '2022-04-26 14:38:18', 600, 200, 'S'),
(106, 1200, '2022-04-27 13:21:40', 800, 400, 'S'),
(107, 1500, '2022-04-27 13:21:50', 1200, 300, 'S'),
(108, 2000, '2022-04-27 13:22:31', 1500, 500, 'S'),
(109, 3000, '2022-04-27 13:55:38', 2000, 1000, 'S'),
(110, 4000, '2022-04-27 13:55:44', 3000, 1000, 'S'),
(111, 6000, '2022-04-27 13:55:51', 4000, 2000, 'S'),
(112, 7500, '2022-04-27 15:20:09', 6000, 1500, 'S'),
(113, 10000, '2022-04-27 15:20:15', 7500, 2500, 'S'),
(114, 12000, '2022-04-27 15:20:20', 10000, 2000, 'S'),
(115, 15000, '2022-05-24 16:38:52', 12000, 3000, 'S'),
(116, 18000, '2022-05-24 16:39:10', 15000, 3000, 'S'),
(117, 20000, '2022-05-24 16:39:33', 18000, 2000, 'S'),
(118, 22000, '2022-05-24 16:46:52', 20000, 2000, 'S'),
(119, 23000, '2022-05-24 16:47:16', 22000, 1000, 'S'),
(120, 25000, '2022-05-24 16:47:21', 23000, 2000, 'S'),
(121, 26000, '2022-05-24 18:03:46', 25000, 1000, 'S'),
(122, 27000, '2022-05-24 18:03:54', 26000, 1000, 'S'),
(123, 28000, '2022-05-24 18:04:01', 27000, 1000, 'S'),
(124, 29000, '2022-05-25 19:22:51', 28000, 1000, 'S'),
(125, 30000, '2022-05-25 19:23:03', 29000, 1000, 'S'),
(126, 35000, '2022-05-25 19:23:08', 30000, 5000, 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `total_diario`
--

CREATE TABLE `total_diario` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `soma_diaria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `total_diario`
--

INSERT INTO `total_diario` (`id`, `data`, `soma_diaria`) VALUES
(147, '2022-04-27', 500),
(148, '2022-04-27', 1200),
(149, '2022-04-27', 4000),
(150, '2022-04-27', 6000),
(151, '2022-05-01', 800),
(152, '2022-05-24', 8000),
(153, '2022-05-24', 5000),
(154, '2022-05-24', 3000),
(155, '2022-05-25', 7000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha_usuario` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha_usuario`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', '$2y$10$h8ZgUrhzl9mOY3pjhBJNs.Mna5tmXAGsn35aitbvAwreVtHWHDE6u');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `2022`
--
ALTER TABLE `2022`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `leitura`
--
ALTER TABLE `leitura`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `total_diario`
--
ALTER TABLE `total_diario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `2022`
--
ALTER TABLE `2022`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `leitura`
--
ALTER TABLE `leitura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de tabela `total_diario`
--
ALTER TABLE `total_diario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `joomla`
--
CREATE DATABASE IF NOT EXISTS `joomla` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `joomla`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_action_logs`
--

CREATE TABLE `k8rvd_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_action_logs`
--

INSERT INTO `k8rvd_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"655\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=655\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-03-14 16:35:46', 'com_users', 655, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"655\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=655\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2023-03-14 20:24:36', 'com_users', 655, 0, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_action_logs_extensions`
--

CREATE TABLE `k8rvd_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_action_logs_extensions`
--

INSERT INTO `k8rvd_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_action_logs_users`
--

CREATE TABLE `k8rvd_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_action_log_config`
--

CREATE TABLE `k8rvd_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_action_log_config`
--

INSERT INTO `k8rvd_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_assets`
--

CREATE TABLE `k8rvd_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_assets`
--

INSERT INTO `k8rvd_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 123, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 41, 86, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 87, 90, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 91, 92, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 93, 94, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 95, 96, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 97, 98, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 99, 102, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 103, 104, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 88, 89, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 100, 101, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 105, 106, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 107, 108, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 109, 110, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 111, 112, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 113, 114, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 115, 116, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Popular Tags', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Site Information', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(56, 18, 76, 77, 2, 'com_modules.module.89', 'Release News', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(57, 18, 78, 79, 2, 'com_modules.module.90', 'Latest Articles', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(58, 18, 80, 81, 2, 'com_modules.module.91', 'User Menu', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(59, 18, 82, 83, 2, 'com_modules.module.92', 'Image Module', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(60, 18, 84, 85, 2, 'com_modules.module.93', 'Search', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(62, 1, 117, 118, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(63, 1, 119, 120, 1, 'com_privacy', 'com_privacy', '{\"core.admin\":{\"7\":1}}'),
(64, 1, 121, 122, 1, 'com_actionlogs', 'com_actionlogs', '{\"core.admin\":{\"7\":1}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_associations`
--

CREATE TABLE `k8rvd_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_banners`
--

CREATE TABLE `k8rvd_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_banner_clients`
--

CREATE TABLE `k8rvd_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_banner_tracks`
--

CREATE TABLE `k8rvd_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_categories`
--

CREATE TABLE `k8rvd_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_categories`
--

INSERT INTO `k8rvd_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_contact_details`
--

CREATE TABLE `k8rvd_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_content`
--

CREATE TABLE `k8rvd_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_content`
--

INSERT INTO `k8rvd_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', '', 1, 2, '2023-03-14 16:35:13', 655, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2023-03-14 16:35:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 27, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_contentitem_tag_map`
--

CREATE TABLE `k8rvd_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Extraindo dados da tabela `k8rvd_contentitem_tag_map`
--

INSERT INTO `k8rvd_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2023-03-14 16:35:13', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_content_frontpage`
--

CREATE TABLE `k8rvd_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_content_rating`
--

CREATE TABLE `k8rvd_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_content_types`
--

CREATE TABLE `k8rvd_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_content_types`
--

INSERT INTO `k8rvd_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_core_log_searches`
--

CREATE TABLE `k8rvd_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_extensions`
--

CREATE TABLE `k8rvd_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_extensions`
--

INSERT INTO `k8rvd_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"Jun 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.1\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacy\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"ce4aa2d762a7a510c3681645ec73dd37\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latestactions\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `k8rvd_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"5.60.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2020\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"4.5.12\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1678811725}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_repeatable\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"repeatable\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"confirmconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_ACTIONLOGS\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{\"name\":\"PLG_ACTIONLOG_JOOMLA\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"April 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacyconsent\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_logrotation\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logrotation\"}', '{\"lastrun\":1678811726}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"May 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"privacycheck\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"terms\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"message\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"actionlogs\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha_invisible\",\"type\":\"plugin\",\"creationDate\":\"November 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha_invisible\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"July 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"consents\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `k8rvd_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(496, 0, 'plg_quickicon_eos310', 'plugin', 'eos310', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_eos310\",\"type\":\"plugin\",\"creationDate\":\"June 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.0\",\"description\":\"PLG_QUICKICON_EOS310_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"eos310\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.3\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"October 2021\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.10.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_fields`
--

CREATE TABLE `k8rvd_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_fields_categories`
--

CREATE TABLE `k8rvd_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_fields_groups`
--

CREATE TABLE `k8rvd_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_fields_values`
--

CREATE TABLE `k8rvd_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_filters`
--

CREATE TABLE `k8rvd_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links`
--

CREATE TABLE `k8rvd_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) DEFAULT 1,
  `access` int(11) DEFAULT 0,
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms0`
--

CREATE TABLE `k8rvd_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms1`
--

CREATE TABLE `k8rvd_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms2`
--

CREATE TABLE `k8rvd_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms3`
--

CREATE TABLE `k8rvd_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms4`
--

CREATE TABLE `k8rvd_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms5`
--

CREATE TABLE `k8rvd_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms6`
--

CREATE TABLE `k8rvd_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms7`
--

CREATE TABLE `k8rvd_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms8`
--

CREATE TABLE `k8rvd_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_terms9`
--

CREATE TABLE `k8rvd_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termsa`
--

CREATE TABLE `k8rvd_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termsb`
--

CREATE TABLE `k8rvd_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termsc`
--

CREATE TABLE `k8rvd_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termsd`
--

CREATE TABLE `k8rvd_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termse`
--

CREATE TABLE `k8rvd_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_links_termsf`
--

CREATE TABLE `k8rvd_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_taxonomy`
--

CREATE TABLE `k8rvd_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `k8rvd_finder_taxonomy`
--

INSERT INTO `k8rvd_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_taxonomy_map`
--

CREATE TABLE `k8rvd_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_terms`
--

CREATE TABLE `k8rvd_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) NOT NULL,
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_terms_common`
--

CREATE TABLE `k8rvd_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `k8rvd_finder_terms_common`
--

INSERT INTO `k8rvd_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_tokens`
--

CREATE TABLE `k8rvd_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_tokens_aggregate`
--

CREATE TABLE `k8rvd_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_finder_types`
--

CREATE TABLE `k8rvd_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_languages`
--

CREATE TABLE `k8rvd_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_languages`
--

INSERT INTO `k8rvd_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_menu`
--

CREATE TABLE `k8rvd_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_menu`
--

INSERT INTO `k8rvd_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 53, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 21, 24, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 31, 36, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 32, 33, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 34, 35, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 39, 40, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 45, 46, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 47, 48, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 49, 50, 0, '*', 1),
(101, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 51, 52, 1, '*', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 18, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}', 25, 26, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 19, 20, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 27, 28, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 29, 30, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_menu_types`
--

CREATE TABLE `k8rvd_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_menu_types`
--

INSERT INTO `k8rvd_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 0, 'usermenu', 'User Menu', 'A Menu for logged-in Users', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_messages`
--

CREATE TABLE `k8rvd_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_messages_cfg`
--

CREATE TABLE `k8rvd_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_modules`
--

CREATE TABLE `k8rvd_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_modules`
--

INSERT INTO `k8rvd_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 60, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 61, 'Latest Actions', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latestactions', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_modules_menu`
--

CREATE TABLE `k8rvd_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_modules_menu`
--

INSERT INTO `k8rvd_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_newsfeeds`
--

CREATE TABLE `k8rvd_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_overrider`
--

CREATE TABLE `k8rvd_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_postinstall_messages`
--

CREATE TABLE `k8rvd_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_postinstall_messages`
--

INSERT INTO `k8rvd_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(9, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1),
(10, 700, 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_TITLE', 'COM_ADMIN_POSTINSTALL_MSG_FLOC_BLOCKER_DESCRIPTION', '', 'com_admin', 1, 'message', '', '', '', '', '3.9.27', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_privacy_consents`
--

CREATE TABLE `k8rvd_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_privacy_requests`
--

CREATE TABLE `k8rvd_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_redirect_links`
--

CREATE TABLE `k8rvd_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_schemas`
--

CREATE TABLE `k8rvd_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_schemas`
--

INSERT INTO `k8rvd_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.10.0-2021-05-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_session`
--

CREATE TABLE `k8rvd_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_session`
--

INSERT INTO `k8rvd_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x306b6c383562656c626b65767231623966683230733264313861, 1, 1, 1678829416, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyOTQxNjtzOjQ6Imxhc3QiO2k6MTY3ODgyOTQxNjtzOjM6Im5vdyI7aToxNjc4ODI5NDE2O31zOjU6InRva2VuIjtzOjMyOiJ3TmJVOVVkdDdlVVpRRWJaMU5GUE4wSU1scnh5a3I0aiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x316b396633756b6c736266323371337675736b74646a71727661, 1, 1, 1678829890, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyOTg5MDtzOjQ6Imxhc3QiO2k6MTY3ODgyOTg5MDtzOjM6Im5vdyI7aToxNjc4ODI5ODkwO31zOjU6InRva2VuIjtzOjMyOiJHR0JaWXhjbGlCeVFPbEFCWVNUSk01VlVVUjdzYzhUNyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x323776746f39716b6470693662723338336d3472686c76653672, 0, 1, 1678829828, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyOTc3MztzOjQ6Imxhc3QiO2k6MTY3ODgyOTc3MztzOjM6Im5vdyI7aToxNjc4ODI5ODI4O31zOjU6InRva2VuIjtzOjMyOiJNSmozcW9OYXFKd3JNY1ZjRGhmUGRiVkpRUWNsWTBocSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x376c686e317375313465666b33326c6f37373868636530353131, 1, 1, 1678829042, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyOTA0MjtzOjQ6Imxhc3QiO2k6MTY3ODgyOTA0MjtzOjM6Im5vdyI7aToxNjc4ODI5MDQyO31zOjU6InRva2VuIjtzOjMyOiJlbW5pZ0FnN2tneUI1bzNQOW5nc1VubkpRMGFydkl2YSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x6472756b6c686b636e6d66316337396f333234613771646a6374, 0, 1, 1678829031, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyOTAzMTtzOjQ6Imxhc3QiO2k6MTY3ODgyOTAzMTtzOjM6Im5vdyI7aToxNjc4ODI5MDMxO31zOjU6InRva2VuIjtzOjMyOiJCZGF0Tmd2QW9BQkRxbHUybm1HSk5CeU5BZ284YmVneCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x6e376b356d6932616939333838316e37396a6c6d723375766269, 1, 1, 1678830169, 'joomla|s:596:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6InZkcXVXTW9Dek9sek9wTUI5ZFhva2xWMUlxeGRDWDJXIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
(0x70383134366137643463733774346330706973336e386e6e3665, 1, 1, 1678827740, 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTY3ODgyNzczNztzOjQ6Imxhc3QiO2k6MTY3ODgyNzczNztzOjM6Im5vdyI7aToxNjc4ODI3NzQwO31zOjU6InRva2VuIjtzOjMyOiJ3QjdpZUdJY0VtNEhWSEdjTXZTOE1lWGM5bkl5WmM3aSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x7567716f706a727339376c636a3174386f396233367174683568, 0, 1, 1678830166, 'joomla|s:596:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6IllkajZNWWZ6ZGpjRTBMR1ZBdGRrWWxkRjNaVnBtVGJoIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_tags`
--

CREATE TABLE `k8rvd_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_tags`
--

INSERT INTO `k8rvd_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2023-03-14 16:35:13', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 655, '2023-03-14 16:35:13', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_template_styles`
--

CREATE TABLE `k8rvd_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_template_styles`
--

INSERT INTO `k8rvd_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', 0, '', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', 0, '', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_ucm_base`
--

CREATE TABLE `k8rvd_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_ucm_base`
--

INSERT INTO `k8rvd_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_ucm_content`
--

CREATE TABLE `k8rvd_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_xreference` varchar(50) NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Extraindo dados da tabela `k8rvd_ucm_content`
--

INSERT INTO `k8rvd_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 655, '', '2023-03-14 16:35:13', 0, '0000-00-00 00:00:00', '*', '2023-03-14 16:35:13', '0000-00-00 00:00:00', 1, 62, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_ucm_history`
--

CREATE TABLE `k8rvd_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_ucm_history`
--

INSERT INTO `k8rvd_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2023-03-14 16:35:13', 655, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}', 0),
(2, 1, 1, 'Initial content', '2023-03-14 16:35:13', 655, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"https:\\/\\/forum.joomla.org\\/\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_updates`
--

CREATE TABLE `k8rvd_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Extraindo dados da tabela `k8rvd_updates`
--

INSERT INTO `k8rvd_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(3, 1, 0, 'Joomla', '', '', '', '', 0, '', '', '', '', ''),
(4, 1, 0, 'Joomla', '', '', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_update_sites`
--

CREATE TABLE `k8rvd_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Extraindo dados da tabela `k8rvd_update_sites`
--

INSERT INTO `k8rvd_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1678825479, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_update_sites_extensions`
--

CREATE TABLE `k8rvd_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Extraindo dados da tabela `k8rvd_update_sites_extensions`
--

INSERT INTO `k8rvd_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_usergroups`
--

CREATE TABLE `k8rvd_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_usergroups`
--

INSERT INTO `k8rvd_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_users`
--

CREATE TABLE `k8rvd_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_users`
--

INSERT INTO `k8rvd_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(655, 'Super User', 'admin', 'helioporto@stm.jus.br', '$2y$10$hepSdRRAvOHm7L6TxPdxnueu1g5WgSdRWfskCkpw.afrIrCG6Me3W', 0, 1, '2023-03-14 16:35:13', '2023-03-14 20:24:36', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_user_keys`
--

CREATE TABLE `k8rvd_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_user_notes`
--

CREATE TABLE `k8rvd_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_user_profiles`
--

CREATE TABLE `k8rvd_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_user_usergroup_map`
--

CREATE TABLE `k8rvd_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_user_usergroup_map`
--

INSERT INTO `k8rvd_user_usergroup_map` (`user_id`, `group_id`) VALUES
(655, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_utf8_conversion`
--

CREATE TABLE `k8rvd_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_utf8_conversion`
--

INSERT INTO `k8rvd_utf8_conversion` (`converted`) VALUES
(5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `k8rvd_viewlevels`
--

CREATE TABLE `k8rvd_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `k8rvd_viewlevels`
--

INSERT INTO `k8rvd_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `k8rvd_action_logs`
--
ALTER TABLE `k8rvd_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Índices para tabela `k8rvd_action_logs_extensions`
--
ALTER TABLE `k8rvd_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `k8rvd_action_logs_users`
--
ALTER TABLE `k8rvd_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Índices para tabela `k8rvd_action_log_config`
--
ALTER TABLE `k8rvd_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `k8rvd_assets`
--
ALTER TABLE `k8rvd_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Índices para tabela `k8rvd_associations`
--
ALTER TABLE `k8rvd_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Índices para tabela `k8rvd_banners`
--
ALTER TABLE `k8rvd_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_banner_clients`
--
ALTER TABLE `k8rvd_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Índices para tabela `k8rvd_banner_tracks`
--
ALTER TABLE `k8rvd_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Índices para tabela `k8rvd_categories`
--
ALTER TABLE `k8rvd_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_contact_details`
--
ALTER TABLE `k8rvd_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Índices para tabela `k8rvd_content`
--
ALTER TABLE `k8rvd_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Índices para tabela `k8rvd_contentitem_tag_map`
--
ALTER TABLE `k8rvd_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Índices para tabela `k8rvd_content_frontpage`
--
ALTER TABLE `k8rvd_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Índices para tabela `k8rvd_content_rating`
--
ALTER TABLE `k8rvd_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Índices para tabela `k8rvd_content_types`
--
ALTER TABLE `k8rvd_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Índices para tabela `k8rvd_extensions`
--
ALTER TABLE `k8rvd_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Índices para tabela `k8rvd_fields`
--
ALTER TABLE `k8rvd_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_fields_categories`
--
ALTER TABLE `k8rvd_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Índices para tabela `k8rvd_fields_groups`
--
ALTER TABLE `k8rvd_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_fields_values`
--
ALTER TABLE `k8rvd_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Índices para tabela `k8rvd_finder_filters`
--
ALTER TABLE `k8rvd_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Índices para tabela `k8rvd_finder_links`
--
ALTER TABLE `k8rvd_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Índices para tabela `k8rvd_finder_links_terms0`
--
ALTER TABLE `k8rvd_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms1`
--
ALTER TABLE `k8rvd_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms2`
--
ALTER TABLE `k8rvd_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms3`
--
ALTER TABLE `k8rvd_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms4`
--
ALTER TABLE `k8rvd_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms5`
--
ALTER TABLE `k8rvd_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms6`
--
ALTER TABLE `k8rvd_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms7`
--
ALTER TABLE `k8rvd_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms8`
--
ALTER TABLE `k8rvd_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_terms9`
--
ALTER TABLE `k8rvd_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termsa`
--
ALTER TABLE `k8rvd_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termsb`
--
ALTER TABLE `k8rvd_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termsc`
--
ALTER TABLE `k8rvd_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termsd`
--
ALTER TABLE `k8rvd_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termse`
--
ALTER TABLE `k8rvd_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_links_termsf`
--
ALTER TABLE `k8rvd_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Índices para tabela `k8rvd_finder_taxonomy`
--
ALTER TABLE `k8rvd_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Índices para tabela `k8rvd_finder_taxonomy_map`
--
ALTER TABLE `k8rvd_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Índices para tabela `k8rvd_finder_terms`
--
ALTER TABLE `k8rvd_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Índices para tabela `k8rvd_finder_terms_common`
--
ALTER TABLE `k8rvd_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Índices para tabela `k8rvd_finder_tokens`
--
ALTER TABLE `k8rvd_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Índices para tabela `k8rvd_finder_tokens_aggregate`
--
ALTER TABLE `k8rvd_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Índices para tabela `k8rvd_finder_types`
--
ALTER TABLE `k8rvd_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Índices para tabela `k8rvd_languages`
--
ALTER TABLE `k8rvd_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Índices para tabela `k8rvd_menu`
--
ALTER TABLE `k8rvd_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_menu_types`
--
ALTER TABLE `k8rvd_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Índices para tabela `k8rvd_messages`
--
ALTER TABLE `k8rvd_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Índices para tabela `k8rvd_messages_cfg`
--
ALTER TABLE `k8rvd_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Índices para tabela `k8rvd_modules`
--
ALTER TABLE `k8rvd_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_modules_menu`
--
ALTER TABLE `k8rvd_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Índices para tabela `k8rvd_newsfeeds`
--
ALTER TABLE `k8rvd_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Índices para tabela `k8rvd_overrider`
--
ALTER TABLE `k8rvd_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `k8rvd_postinstall_messages`
--
ALTER TABLE `k8rvd_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Índices para tabela `k8rvd_privacy_consents`
--
ALTER TABLE `k8rvd_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Índices para tabela `k8rvd_privacy_requests`
--
ALTER TABLE `k8rvd_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `k8rvd_redirect_links`
--
ALTER TABLE `k8rvd_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Índices para tabela `k8rvd_schemas`
--
ALTER TABLE `k8rvd_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Índices para tabela `k8rvd_session`
--
ALTER TABLE `k8rvd_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Índices para tabela `k8rvd_tags`
--
ALTER TABLE `k8rvd_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Índices para tabela `k8rvd_template_styles`
--
ALTER TABLE `k8rvd_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Índices para tabela `k8rvd_ucm_base`
--
ALTER TABLE `k8rvd_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Índices para tabela `k8rvd_ucm_content`
--
ALTER TABLE `k8rvd_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Índices para tabela `k8rvd_ucm_history`
--
ALTER TABLE `k8rvd_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Índices para tabela `k8rvd_updates`
--
ALTER TABLE `k8rvd_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Índices para tabela `k8rvd_update_sites`
--
ALTER TABLE `k8rvd_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Índices para tabela `k8rvd_update_sites_extensions`
--
ALTER TABLE `k8rvd_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Índices para tabela `k8rvd_usergroups`
--
ALTER TABLE `k8rvd_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Índices para tabela `k8rvd_users`
--
ALTER TABLE `k8rvd_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Índices para tabela `k8rvd_user_keys`
--
ALTER TABLE `k8rvd_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `k8rvd_user_notes`
--
ALTER TABLE `k8rvd_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Índices para tabela `k8rvd_user_profiles`
--
ALTER TABLE `k8rvd_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Índices para tabela `k8rvd_user_usergroup_map`
--
ALTER TABLE `k8rvd_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Índices para tabela `k8rvd_viewlevels`
--
ALTER TABLE `k8rvd_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `k8rvd_action_logs`
--
ALTER TABLE `k8rvd_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `k8rvd_action_logs_extensions`
--
ALTER TABLE `k8rvd_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `k8rvd_action_log_config`
--
ALTER TABLE `k8rvd_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `k8rvd_assets`
--
ALTER TABLE `k8rvd_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `k8rvd_banners`
--
ALTER TABLE `k8rvd_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_banner_clients`
--
ALTER TABLE `k8rvd_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_categories`
--
ALTER TABLE `k8rvd_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `k8rvd_contact_details`
--
ALTER TABLE `k8rvd_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_content`
--
ALTER TABLE `k8rvd_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `k8rvd_content_types`
--
ALTER TABLE `k8rvd_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de tabela `k8rvd_extensions`
--
ALTER TABLE `k8rvd_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de tabela `k8rvd_fields`
--
ALTER TABLE `k8rvd_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_fields_groups`
--
ALTER TABLE `k8rvd_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_finder_filters`
--
ALTER TABLE `k8rvd_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_finder_links`
--
ALTER TABLE `k8rvd_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_finder_taxonomy`
--
ALTER TABLE `k8rvd_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `k8rvd_finder_terms`
--
ALTER TABLE `k8rvd_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_finder_types`
--
ALTER TABLE `k8rvd_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_languages`
--
ALTER TABLE `k8rvd_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `k8rvd_menu`
--
ALTER TABLE `k8rvd_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `k8rvd_menu_types`
--
ALTER TABLE `k8rvd_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `k8rvd_messages`
--
ALTER TABLE `k8rvd_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_modules`
--
ALTER TABLE `k8rvd_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de tabela `k8rvd_newsfeeds`
--
ALTER TABLE `k8rvd_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_overrider`
--
ALTER TABLE `k8rvd_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de tabela `k8rvd_postinstall_messages`
--
ALTER TABLE `k8rvd_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `k8rvd_privacy_consents`
--
ALTER TABLE `k8rvd_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_privacy_requests`
--
ALTER TABLE `k8rvd_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_redirect_links`
--
ALTER TABLE `k8rvd_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_tags`
--
ALTER TABLE `k8rvd_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `k8rvd_template_styles`
--
ALTER TABLE `k8rvd_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `k8rvd_ucm_content`
--
ALTER TABLE `k8rvd_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `k8rvd_ucm_history`
--
ALTER TABLE `k8rvd_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `k8rvd_updates`
--
ALTER TABLE `k8rvd_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `k8rvd_update_sites`
--
ALTER TABLE `k8rvd_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `k8rvd_usergroups`
--
ALTER TABLE `k8rvd_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `k8rvd_users`
--
ALTER TABLE `k8rvd_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT de tabela `k8rvd_user_keys`
--
ALTER TABLE `k8rvd_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_user_notes`
--
ALTER TABLE `k8rvd_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `k8rvd_viewlevels`
--
ALTER TABLE `k8rvd_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- Banco de dados: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha_usuario` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha_usuario`) VALUES
(1, 'Cesar', 'cesar@celke.com.br', '123456');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"contatos\",\"table\":\"apartamentos\"},{\"db\":\"contatos\",\"table\":\"permissionarios\"},{\"db\":\"contatos\",\"table\":\"depententes\"},{\"db\":\"contatos\",\"table\":\"contato\"},{\"db\":\"contatos\",\"table\":\"usuarios\"},{\"db\":\"hidrometro\",\"table\":\"usuarios\"},{\"db\":\"login\",\"table\":\"usuarios\"},{\"db\":\"hidrometro\",\"table\":\"total_diario\"},{\"db\":\"hidrometro\",\"table\":\"leitura\"},{\"db\":\"hidrometro\",\"table\":\"2022\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'contatos', 'permissionarios', '{\"sorted_col\":\"`permissionarios`.`id_permissionarios` DESC\"}', '2023-04-13 22:28:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-18 16:46:44', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Banco de dados: `usuarios_salao`
--
CREATE DATABASE IF NOT EXISTS `usuarios_salao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `usuarios_salao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `adm` int(1) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`email`, `senha`, `nome`, `adm`, `id`) VALUES
('helinhoporto@hotmail.com', 'Helio*0123', 'Helio Porto', 1, 1),
('hlfrancisco61@gmail.com', 'Helio*0123', 'Carlos Aparecido', 0, 2),
('portaria@edificioaeronautica.com.br', '9999999999', 'Portaria', 0, 3),
('resistente2@gmail.com', 'edificio*0123', 'Alexsandro', 1, 4),
('prince@edificioaeronautica.com.br', 'prince01', 'Prince', 0, 5),
('rone@edificioaeronautica.com.br', 'rone01', 'Rone', 0, 6),
('rafael@edificioaeronautica.com.br', 'rafael01', 'Rafael', 0, 7),
('sofiere@edificioaeronautica.com.br', 'sofiere02', 'Sofiere', 0, 8),
('israelmenezes41@gmail.com', 'israel01', 'Israel Menezes', 0, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Banco de dados: `wpdatabase`
--
CREATE DATABASE IF NOT EXISTS `wpdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wpdatabase`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2023-02-23 18:14:37', '2023-02-23 21:14:37', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Web Agency Demo 1', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'helioporto@stm.jus.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:53:\"child-theme-configurator/child-theme-configurator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:64:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/neve-child/style.css\";i:2;s:58:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/neve/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'neve', 'yes'),
(41, 'stylesheet', 'neve-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:53:\"child-theme-configurator/child-theme-configurator.php\";s:22:\"chld_thm_cfg_uninstall\";}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '11', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1692738876', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"shop-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1677694477;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1677705277;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1677705290;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1677705291;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1677878077;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677186932;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(141, '_site_transient_timeout_browser_098b90df11ae170519153ebe0bd756f2', '1677791691', 'no'),
(142, '_site_transient_browser_098b90df11ae170519153ebe0bd756f2', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"102.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(143, '_site_transient_timeout_php_check_133413fa91fc050a1c5770fd6e67cbaa', '1677791691', 'no'),
(144, '_site_transient_php_check_133413fa91fc050a1c5770fd6e67cbaa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(152, 'can_compress_scripts', '1', 'no'),
(160, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1677691687;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(163, 'current_theme', 'Neve Child', 'yes'),
(164, 'theme_mods_neve', 'a:78:{i:0;b:0;s:19:\"neve_ran_migrations\";b:1;s:24:\"neve_migrated_hfg_colors\";b:1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:13:\"ti_prev_theme\";s:4:\"csb4\";s:18:\"custom_css_post_id\";i:-1;s:17:\"logo_show_tagline\";i:0;s:26:\"nav-icon_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:5:\"right\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";i:1;s:5:\"right\";i:1;s:6:\"bottom\";i:1;s:4:\"left\";i:1;}s:4:\"type\";s:7:\"outline\";s:10:\"background\";s:0:\"\";s:15:\"backgroundHover\";s:0:\"\";s:4:\"text\";s:0:\"\";s:9:\"textHover\";s:0:\"\";}s:32:\"hfg_header_layout_top_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#f0f0f0\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:33:\"hfg_header_layout_main_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:17:\"var(--nv-site-bg)\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:35:\"hfg_header_layout_bottom_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#ffffff\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:36:\"hfg_header_layout_sidebar_background\";a:8:{s:4:\"type\";s:5:\"color\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:10:\"colorValue\";s:17:\"var(--nv-site-bg)\";s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:32:\"hfg_footer_layout_top_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#ffffff\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:35:\"hfg_footer_layout_bottom_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:17:\"var(--nv-dark-bg)\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:24:\"neve_blog_archive_layout\";s:4:\"grid\";s:24:\"neve_post_excerpt_length\";d:40;s:28:\"neve_advanced_layout_options\";b:1;s:32:\"neve_blog_archive_sidebar_layout\";s:10:\"full-width\";s:31:\"neve_blog_archive_content_width\";i:100;s:21:\"neve_body_font_family\";s:0:\"\";s:25:\"neve_headings_font_family\";s:0:\"\";s:22:\"neve_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";i:1;s:5:\"right\";i:1;s:6:\"bottom\";i:1;s:4:\"left\";i:1;}s:4:\"type\";s:4:\"fill\";s:10:\"background\";s:24:\"var(--nv-primary-accent)\";s:15:\"backgroundHover\";s:26:\"var(--nv-secondary-accent)\";s:4:\"text\";s:7:\"#010101\";s:9:\"textHover\";s:7:\"#ffffff\";}s:24:\"neve_h1_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.2\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"39\";s:6:\"tablet\";s:2:\"55\";s:7:\"desktop\";i:70;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:1;}s:20:\"neve_container_width\";s:42:\"{\"mobile\":748,\"tablet\":992,\"desktop\":1170}\";s:28:\"neve_default_container_style\";s:9:\"contained\";s:24:\"neve_h2_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"34\";s:7:\"desktop\";s:2:\"46\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h3_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"20\";s:6:\"tablet\";s:2:\"20\";s:7:\"desktop\";s:2:\"24\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:31:\"neve_single_post_sidebar_layout\";s:5:\"right\";s:31:\"neve_other_pages_sidebar_layout\";s:10:\"full-width\";s:30:\"neve_single_post_content_width\";i:70;s:30:\"neve_other_pages_content_width\";i:100;s:21:\"neve_typeface_general\";a:6:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"16\";s:6:\"tablet\";i:16;s:7:\"desktop\";s:2:\"17\";}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.7\";s:6:\"tablet\";s:3:\"1.7\";s:7:\"desktop\";d:1.7;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";s:1:\"0\";}s:10:\"fontWeight\";s:3:\"400\";s:13:\"textTransform\";s:4:\"none\";s:4:\"flag\";b:0;}s:18:\"primary-menu_color\";s:20:\"var(--nv-text-color)\";s:25:\"primary-menu_active_color\";s:20:\"var(--nv-text-color)\";s:24:\"primary-menu_hover_color\";s:26:\"var(--nv-secondary-accent)\";s:31:\"primary-menu_component_typeface\";a:5:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";i:1;s:6:\"tablet\";i:1;s:7:\"desktop\";d:0.8;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";d:1.6;s:6:\"tablet\";d:1.6;s:7:\"desktop\";d:1.6;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:9:\"uppercase\";}s:16:\"neve_grid_layout\";s:35:\"{\"desktop\":2,\"tablet\":2,\"mobile\":1}\";s:32:\"neve_secondary_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";s:1:\"2\";s:5:\"right\";s:1:\"2\";s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"2\";}s:4:\"type\";s:7:\"outline\";s:10:\"background\";s:16:\"rgba(0, 0, 0, 0)\";s:15:\"backgroundHover\";s:17:\"var(--nv-dark-bg)\";s:4:\"text\";s:17:\"var(--nv-dark-bg)\";s:9:\"textHover\";s:22:\"var(--nv-text-dark-bg)\";}s:11:\"custom_logo\";i:168;s:14:\"logo_max_width\";s:38:\"{\"mobile\":32,\"tablet\":32,\"desktop\":32}\";s:19:\"neve_button_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:7:\"desktop\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:33:\"neve_blog_list_alternative_layout\";b:1;s:24:\"neve_h4_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"16\";s:6:\"tablet\";s:2:\"16\";s:7:\"desktop\";s:2:\"20\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h5_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h6_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:18:\"neve_global_colors\";a:2:{s:13:\"activePalette\";s:4:\"base\";s:8:\"palettes\";a:4:{s:4:\"base\";a:3:{s:4:\"name\";s:4:\"Base\";s:13:\"allowDeletion\";b:0;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#fcaf3b\";s:19:\"nv-secondary-accent\";s:7:\"#ab641d\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#ededed\";s:10:\"nv-dark-bg\";s:7:\"#14171c\";s:13:\"nv-text-color\";s:7:\"#2b2b2b\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:8:\"darkMode\";a:3:{s:4:\"name\";s:9:\"Dark Mode\";s:13:\"allowDeletion\";b:0;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#fcaf3b\";s:19:\"nv-secondary-accent\";s:7:\"#ab641d\";s:10:\"nv-site-bg\";s:7:\"#121212\";s:11:\"nv-light-bg\";s:7:\"#2b2b2b\";s:10:\"nv-dark-bg\";s:7:\"#1a1a1a\";s:13:\"nv-text-color\";s:7:\"#ffffff\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:5:\"green\";a:3:{s:4:\"name\";s:5:\"Green\";s:13:\"allowDeletion\";b:1;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#55f5a3\";s:19:\"nv-secondary-accent\";s:7:\"#2b2b2b\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#f5f3eb\";s:10:\"nv-dark-bg\";s:7:\"#000000\";s:13:\"nv-text-color\";s:7:\"#000000\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:4:\"blue\";a:3:{s:4:\"name\";s:4:\"Blue\";s:13:\"allowDeletion\";b:1;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#3d6fe5\";s:19:\"nv-secondary-accent\";s:7:\"#01216b\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#f0eff4\";s:10:\"nv-dark-bg\";s:7:\"#0d1317\";s:13:\"nv-text-color\";s:7:\"#121212\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}}}s:39:\"hfg_footer_layout_bottom_new_text_color\";s:22:\"var(--nv-text-dark-bg)\";s:12:\"logo_display\";s:9:\"logoTitle\";s:20:\"neve_button_typeface\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";}s:4:\"flag\";b:1;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";d:1.6;s:6:\"tablet\";d:1.6;s:7:\"desktop\";d:1.6;}}s:25:\"neve_fallback_font_family\";s:28:\"Arial, Helvetica, sans-serif\";s:24:\"neve_form_fields_padding\";a:5:{s:3:\"top\";s:2:\"10\";s:6:\"bottom\";i:10;s:4:\"left\";i:12;s:5:\"right\";i:12;s:4:\"unit\";s:2:\"px\";}s:21:\"neve_form_button_type\";s:7:\"primary\";s:30:\"neve_form_fields_border_radius\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}s:34:\"neve_archive_typography_post_title\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"32\";s:7:\"desktop\";s:2:\"32\";}s:4:\"flag\";b:0;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:7:\"desktop\";s:0:\"\";}}s:38:\"neve_single_post_typography_post_title\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"40\";s:7:\"desktop\";s:2:\"65\";}s:4:\"flag\";b:1;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:7:\"desktop\";s:0:\"\";}}s:20:\"hfg_footer_layout_v2\";s:240:\"{\"desktop\":{\"top\":{\"left\":[],\"c-left\":[],\"center\":[],\"c-right\":[],\"right\":[]},\"main\":{\"left\":[],\"c-left\":[],\"center\":[],\"c-right\":[],\"right\":[]},\"bottom\":{\"left\":[],\"c-left\":[{\"id\":\"footer_copyright\"}],\"center\":[],\"c-right\":[],\"right\":[]}}}\";s:33:\"neve_form_fields_background_color\";s:17:\"var(--nv-site-bg)\";s:38:\"neve_layout_single_post_elements_order\";s:29:\"[\"content\",\"tags\",\"comments\"]\";s:23:\"neve_post_header_layout\";s:5:\"cover\";s:22:\"neve_post_cover_height\";s:93:\"{\"mobile\":250,\"tablet\":30,\"desktop\":50,\"suffix\":{\"tablet\":\"vh\",\"desktop\":\"vh\",\"mobile\":\"px\"}}\";s:25:\"neve_post_title_alignment\";a:3:{s:6:\"mobile\";s:4:\"left\";s:6:\"tablet\";s:4:\"left\";s:7:\"desktop\";s:4:\"left\";}s:24:\"neve_post_title_position\";a:3:{s:6:\"mobile\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:7:\"desktop\";s:8:\"flex-end\";}s:26:\"neve_post_cover_text_color\";s:22:\"var(--nv-text-dark-bg)\";s:34:\"neve_post_cover_title_boxed_layout\";b:0;s:44:\"neve_post_cover_title_boxed_background_color\";s:17:\"var(--nv-dark-bg)\";s:26:\"neve_post_content_ordering\";s:36:\"[\"thumbnail\",\"title-meta\",\"excerpt\"]\";s:19:\"neve_enable_masonry\";b:0;s:30:\"neve_post_thumbnail_box_shadow\";i:2;s:18:\"primary-menu_style\";s:19:\"style-border-bottom\";s:32:\"neve_post_cover_background_color\";s:17:\"var(--nv-dark-bg)\";s:23:\"neve_post_cover_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";i:40;s:5:\"right\";i:15;s:6:\"bottom\";i:40;s:4:\"left\";i:15;}s:6:\"tablet\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:30;s:6:\"bottom\";i:60;s:4:\"left\";i:30;}s:7:\"desktop\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:40;s:6:\"bottom\";s:2:\"60\";s:4:\"left\";i:40;}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:31:\"neve_post_cover_overlay_opacity\";d:50;s:25:\"neve_post_cover_container\";s:9:\"contained\";s:35:\"neve_post_cover_title_boxed_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";i:40;s:5:\"right\";i:15;s:6:\"bottom\";i:40;s:4:\"left\";i:15;}s:6:\"tablet\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:30;s:6:\"bottom\";i:60;s:4:\"left\";i:30;}s:7:\"desktop\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:40;s:6:\"bottom\";s:2:\"60\";s:4:\"left\";i:40;}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:29:\"neve_form_fields_border_width\";a:5:{s:3:\"top\";s:1:\"2\";s:5:\"right\";s:1:\"2\";s:4:\"left\";s:1:\"2\";s:6:\"bottom\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}s:29:\"neve_form_fields_border_color\";s:18:\"var(--nv-light-bg)\";s:21:\"neve_input_text_color\";s:20:\"var(--nv-text-color)\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677512835;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"shop-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'neve_install', '1677186933', 'yes'),
(167, '_transient_timeout_neve_all_languages', '1677791733', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(168, '_transient_neve_all_languages', 'a:1:{s:12:\"translations\";a:49:{i:0;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-12-19 07:37:37\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}}i:1;a:7:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-02-26 11:24:11\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}}i:2;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-02-11 08:45:38\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}}i:3;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:43:23\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}}i:4;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-22 15:28:09\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:5;a:7:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-03-01 16:20:02\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:6;a:7:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-03-01 16:19:31\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:7;a:7:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-17 16:40:02\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:8;a:7:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-03-01 16:19:05\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}}i:9;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-10-04 06:12:46\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}}i:10;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-04 10:51:18\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:11;a:7:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-08-06 19:29:29\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:12;a:7:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-02-06 23:41:00\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:13;a:7:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-08-06 00:44:02\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:14;a:7:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-30 09:54:21\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}}i:15;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:44:13\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:16;a:7:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-07-03 02:27:14\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:17;a:7:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-02-08 06:56:09\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:18;a:7:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-07-03 02:28:18\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:19;a:7:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-01 23:41:06\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:20;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-20 09:41:50\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}}i:21;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-25 20:00:54\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}}i:22;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-09-23 08:22:02\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}}i:23;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:56:25\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}}i:24;a:7:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:47:33\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:25;a:7:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-10-01 12:45:24\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}}i:26;a:7:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-17 10:02:51\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}}i:27;a:7:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:49:51\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}}i:28;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:55:31\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}}i:29;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-17 17:22:47\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}}i:30;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:50:19\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}}i:31;a:7:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-11-10 01:25:37\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}}i:32;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-30 23:20:56\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}}i:33;a:7:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-20 11:22:48\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:34;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-30 14:54:02\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:35;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-16 14:58:46\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}}i:36;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:44:44\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}}i:37;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:52:22\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}}i:38;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:51:08\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}}i:39;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-27 08:18:32\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}}i:40;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-02-20 16:11:19\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}}i:41;a:7:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2021-03-24 06:57:16\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}}i:42;a:7:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-02-27 15:47:53\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}}i:43;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 20:51:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}}i:44;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2023-01-31 18:19:27\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}}i:45;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:54:48\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}}i:46;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-11-03 10:54:25\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}}i:47;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2020-03-04 23:38:45\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}}i:48;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"3.5.3\";s:7:\"updated\";s:19:\"2022-09-29 16:15:29\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/translation/theme/neve/3.5.3/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}}}}', 'no'),
(169, 'neve_user_check_time', '1677186933', 'yes'),
(170, 'neve_new_user', 'yes', 'yes'),
(171, '_transient_timeout_neve_353versions', '1677618934', 'no'),
(172, '_transient_neve_353versions', 'a:145:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.4.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.5.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"1.0.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.6.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"1.0.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.8.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"1.0.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.0.9.zip\";}i:5;a:2:{s:7:\"version\";s:6:\"1.0.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.10.zip\";}i:6;a:2:{s:7:\"version\";s:6:\"1.0.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.11.zip\";}i:7;a:2:{s:7:\"version\";s:6:\"1.0.12\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.12.zip\";}i:8;a:2:{s:7:\"version\";s:6:\"1.0.13\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.13.zip\";}i:9;a:2:{s:7:\"version\";s:6:\"1.0.14\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.14.zip\";}i:10;a:2:{s:7:\"version\";s:6:\"1.0.15\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.15.zip\";}i:11;a:2:{s:7:\"version\";s:6:\"1.0.16\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.16.zip\";}i:12;a:2:{s:7:\"version\";s:6:\"1.0.18\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.18.zip\";}i:13;a:2:{s:7:\"version\";s:6:\"1.0.19\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.19.zip\";}i:14;a:2:{s:7:\"version\";s:6:\"1.0.20\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.20.zip\";}i:15;a:2:{s:7:\"version\";s:6:\"1.0.21\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.21.zip\";}i:16;a:2:{s:7:\"version\";s:6:\"1.0.22\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.22.zip\";}i:17;a:2:{s:7:\"version\";s:6:\"1.0.23\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.23.zip\";}i:18;a:2:{s:7:\"version\";s:6:\"1.0.24\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.24.zip\";}i:19;a:2:{s:7:\"version\";s:6:\"1.0.25\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.25.zip\";}i:20;a:2:{s:7:\"version\";s:6:\"1.0.26\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.26.zip\";}i:21;a:2:{s:7:\"version\";s:6:\"1.0.27\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.27.zip\";}i:22;a:2:{s:7:\"version\";s:6:\"1.0.28\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.28.zip\";}i:23;a:2:{s:7:\"version\";s:6:\"1.0.29\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.1.0.29.zip\";}i:24;a:2:{s:7:\"version\";s:5:\"1.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.0.zip\";}i:25;a:2:{s:7:\"version\";s:5:\"1.1.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.1.zip\";}i:26;a:2:{s:7:\"version\";s:5:\"1.1.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.2.zip\";}i:27;a:2:{s:7:\"version\";s:5:\"1.1.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.3.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"1.1.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.1.1.4.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"2.0.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.0.0.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"2.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.1.0.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"2.2.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.2.0.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"2.3.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.1.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"2.3.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.2.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"2.3.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.3.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"2.3.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.4.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"2.3.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.5.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"2.3.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.6.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"2.3.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.7.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"2.3.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.8.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"2.3.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.3.9.zip\";}i:41;a:2:{s:7:\"version\";s:6:\"2.3.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.10.zip\";}i:42;a:2:{s:7:\"version\";s:6:\"2.3.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.11.zip\";}i:43;a:2:{s:7:\"version\";s:6:\"2.3.12\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.12.zip\";}i:44;a:2:{s:7:\"version\";s:6:\"2.3.14\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.14.zip\";}i:45;a:2:{s:7:\"version\";s:6:\"2.3.15\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.15.zip\";}i:46;a:2:{s:7:\"version\";s:6:\"2.3.17\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.17.zip\";}i:47;a:2:{s:7:\"version\";s:6:\"2.3.19\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.19.zip\";}i:48;a:2:{s:7:\"version\";s:6:\"2.3.20\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.20.zip\";}i:49;a:2:{s:7:\"version\";s:6:\"2.3.21\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.21.zip\";}i:50;a:2:{s:7:\"version\";s:6:\"2.3.22\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.3.22.zip\";}i:51;a:2:{s:7:\"version\";s:5:\"2.4.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.0.zip\";}i:52;a:2:{s:7:\"version\";s:5:\"2.4.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.1.zip\";}i:53;a:2:{s:7:\"version\";s:5:\"2.4.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.2.zip\";}i:54;a:2:{s:7:\"version\";s:5:\"2.4.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.4.3.zip\";}i:55;a:2:{s:7:\"version\";s:5:\"2.5.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.1.zip\";}i:56;a:2:{s:7:\"version\";s:5:\"2.5.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.2.zip\";}i:57;a:2:{s:7:\"version\";s:5:\"2.5.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.3.zip\";}i:58;a:2:{s:7:\"version\";s:5:\"2.5.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.5.4.zip\";}i:59;a:2:{s:7:\"version\";s:5:\"2.6.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.0.zip\";}i:60;a:2:{s:7:\"version\";s:5:\"2.6.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.1.zip\";}i:61;a:2:{s:7:\"version\";s:5:\"2.6.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.2.zip\";}i:62;a:2:{s:7:\"version\";s:5:\"2.6.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.3.zip\";}i:63;a:2:{s:7:\"version\";s:5:\"2.6.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.4.zip\";}i:64;a:2:{s:7:\"version\";s:5:\"2.6.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.5.zip\";}i:65;a:2:{s:7:\"version\";s:5:\"2.6.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.6.6.zip\";}i:66;a:2:{s:7:\"version\";s:5:\"2.7.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.0.zip\";}i:67;a:2:{s:7:\"version\";s:5:\"2.7.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.1.zip\";}i:68;a:2:{s:7:\"version\";s:5:\"2.7.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.2.zip\";}i:69;a:2:{s:7:\"version\";s:5:\"2.7.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.3.zip\";}i:70;a:2:{s:7:\"version\";s:5:\"2.7.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.4.zip\";}i:71;a:2:{s:7:\"version\";s:5:\"2.7.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.5.zip\";}i:72;a:2:{s:7:\"version\";s:5:\"2.7.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.6.zip\";}i:73;a:2:{s:7:\"version\";s:5:\"2.7.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.7.7.zip\";}i:74;a:2:{s:7:\"version\";s:5:\"2.8.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.0.zip\";}i:75;a:2:{s:7:\"version\";s:5:\"2.8.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.1.zip\";}i:76;a:2:{s:7:\"version\";s:5:\"2.8.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.2.zip\";}i:77;a:2:{s:7:\"version\";s:5:\"2.8.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.3.zip\";}i:78;a:2:{s:7:\"version\";s:5:\"2.8.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.8.4.zip\";}i:79;a:2:{s:7:\"version\";s:5:\"2.9.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.0.zip\";}i:80;a:2:{s:7:\"version\";s:5:\"2.9.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.1.zip\";}i:81;a:2:{s:7:\"version\";s:5:\"2.9.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.2.zip\";}i:82;a:2:{s:7:\"version\";s:5:\"2.9.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.3.zip\";}i:83;a:2:{s:7:\"version\";s:5:\"2.9.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.4.zip\";}i:84;a:2:{s:7:\"version\";s:5:\"2.9.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.2.9.5.zip\";}i:85;a:2:{s:7:\"version\";s:6:\"2.10.0\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.0.zip\";}i:86;a:2:{s:7:\"version\";s:6:\"2.10.1\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.1.zip\";}i:87;a:2:{s:7:\"version\";s:6:\"2.10.2\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.2.zip\";}i:88;a:2:{s:7:\"version\";s:6:\"2.10.3\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.3.zip\";}i:89;a:2:{s:7:\"version\";s:6:\"2.10.4\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.10.4.zip\";}i:90;a:2:{s:7:\"version\";s:6:\"2.11.0\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.0.zip\";}i:91;a:2:{s:7:\"version\";s:6:\"2.11.1\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.1.zip\";}i:92;a:2:{s:7:\"version\";s:6:\"2.11.2\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.2.zip\";}i:93;a:2:{s:7:\"version\";s:6:\"2.11.3\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.3.zip\";}i:94;a:2:{s:7:\"version\";s:6:\"2.11.4\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.4.zip\";}i:95;a:2:{s:7:\"version\";s:6:\"2.11.5\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.5.zip\";}i:96;a:2:{s:7:\"version\";s:6:\"2.11.6\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.2.11.6.zip\";}i:97;a:2:{s:7:\"version\";s:5:\"3.0.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.0.zip\";}i:98;a:2:{s:7:\"version\";s:5:\"3.0.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.1.zip\";}i:99;a:2:{s:7:\"version\";s:5:\"3.0.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.2.zip\";}i:100;a:2:{s:7:\"version\";s:5:\"3.0.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.3.zip\";}i:101;a:2:{s:7:\"version\";s:5:\"3.0.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.4.zip\";}i:102;a:2:{s:7:\"version\";s:5:\"3.0.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.5.zip\";}i:103;a:2:{s:7:\"version\";s:5:\"3.0.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.6.zip\";}i:104;a:2:{s:7:\"version\";s:5:\"3.0.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.7.zip\";}i:105;a:2:{s:7:\"version\";s:5:\"3.0.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.8.zip\";}i:106;a:2:{s:7:\"version\";s:5:\"3.0.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.0.9.zip\";}i:107;a:2:{s:7:\"version\";s:6:\"3.0.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.3.0.10.zip\";}i:108;a:2:{s:7:\"version\";s:6:\"3.0.11\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.3.0.11.zip\";}i:109;a:2:{s:7:\"version\";s:5:\"3.1.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.0.zip\";}i:110;a:2:{s:7:\"version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.1.zip\";}i:111;a:2:{s:7:\"version\";s:5:\"3.1.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.2.zip\";}i:112;a:2:{s:7:\"version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.3.zip\";}i:113;a:2:{s:7:\"version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.4.zip\";}i:114;a:2:{s:7:\"version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.5.zip\";}i:115;a:2:{s:7:\"version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.1.6.zip\";}i:116;a:2:{s:7:\"version\";s:5:\"3.2.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.0.zip\";}i:117;a:2:{s:7:\"version\";s:5:\"3.2.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.1.zip\";}i:118;a:2:{s:7:\"version\";s:5:\"3.2.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.2.zip\";}i:119;a:2:{s:7:\"version\";s:5:\"3.2.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.3.zip\";}i:120;a:2:{s:7:\"version\";s:5:\"3.2.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.4.zip\";}i:121;a:2:{s:7:\"version\";s:5:\"3.2.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.2.5.zip\";}i:122;a:2:{s:7:\"version\";s:5:\"3.3.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.0.zip\";}i:123;a:2:{s:7:\"version\";s:5:\"3.3.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.1.zip\";}i:124;a:2:{s:7:\"version\";s:5:\"3.3.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.2.zip\";}i:125;a:2:{s:7:\"version\";s:5:\"3.3.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.3.zip\";}i:126;a:2:{s:7:\"version\";s:5:\"3.3.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.4.zip\";}i:127;a:2:{s:7:\"version\";s:5:\"3.3.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.5.zip\";}i:128;a:2:{s:7:\"version\";s:5:\"3.3.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.6.zip\";}i:129;a:2:{s:7:\"version\";s:5:\"3.3.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.3.7.zip\";}i:130;a:2:{s:7:\"version\";s:5:\"3.4.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.0.zip\";}i:131;a:2:{s:7:\"version\";s:5:\"3.4.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.1.zip\";}i:132;a:2:{s:7:\"version\";s:5:\"3.4.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.2.zip\";}i:133;a:2:{s:7:\"version\";s:5:\"3.4.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.3.zip\";}i:134;a:2:{s:7:\"version\";s:5:\"3.4.4\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.4.zip\";}i:135;a:2:{s:7:\"version\";s:5:\"3.4.5\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.5.zip\";}i:136;a:2:{s:7:\"version\";s:5:\"3.4.6\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.6.zip\";}i:137;a:2:{s:7:\"version\";s:5:\"3.4.7\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.7.zip\";}i:138;a:2:{s:7:\"version\";s:5:\"3.4.8\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.8.zip\";}i:139;a:2:{s:7:\"version\";s:5:\"3.4.9\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.4.9.zip\";}i:140;a:2:{s:7:\"version\";s:6:\"3.4.10\";s:3:\"url\";s:53:\"https://downloads.wordpress.org/theme/neve.3.4.10.zip\";}i:141;a:2:{s:7:\"version\";s:5:\"3.5.0\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.5.0.zip\";}i:142;a:2:{s:7:\"version\";s:5:\"3.5.1\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.5.1.zip\";}i:143;a:2:{s:7:\"version\";s:5:\"3.5.2\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.5.2.zip\";}i:144;a:2:{s:7:\"version\";s:5:\"3.5.3\";s:3:\"url\";s:52:\"https://downloads.wordpress.org/theme/neve.3.5.3.zip\";}}', 'no'),
(173, 'neve_notice_dismissed', 'yes', 'yes'),
(174, '_transient_neve_dash_useful_plugins_hash', '51916', 'yes'),
(175, '_transient_neve_dash_useful_plugins', '{\"optimole-wp\":{\"banner\":\"https:\\/\\/ps.w.org\\/optimole-wp\\/assets\\/banner-772x250.jpg?rev=2001004\",\"name\":\"Image optimization & Lazy Load by Optimole\",\"description\":\"Automatically compress, optimize and serve scaled images as well as convert WebP & AVIF all from CloudFront CDN. Lazy load included \\u26a1\",\"version\":\"3.5.7\",\"author\":\"Optimole\",\"cta\":\"install\",\"path\":\"optimole-wp\\/optimole-wp.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=optimole-wp%2Foptimole-wp.php&plugin_status=all&paged=1&_wpnonce=9829dc8328\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=optimole-wp%2Foptimole-wp.php&plugin_status=all&paged=1&_wpnonce=7f35378da1\"},\"wp-landing-kit\":{\"banner\":\"http:\\/\\/localhost\\/wordpress\\/wp-content\\/themes\\/neve\\/assets\\/img\\/dashboard\\/wp-landing.jpg\",\"name\":\"WP Landing Kit\",\"description\":\"Turn WordPress into a landing page powerhouse with Landing Kit. Map domains to pages or any other published resource.\",\"author\":\"Themeisle\",\"cta\":\"external\",\"url\":\"https:\\/\\/wplandingkit.com\\/?utm_source=wpadmin&utm_medium=nevedashboard&utm_campaign=recommendedplugins&utm_content=wplandingkitcom\",\"premium\":true},\"otter-blocks\":{\"banner\":\"https:\\/\\/ps.w.org\\/otter-blocks\\/assets\\/banner-772x250.png?rev=2019296\",\"name\":\"Otter \\u2013 Gutenberg Blocks \\u2013 Page Builder for Gutenberg Editor & FSE\",\"description\":\"Otter is a dynamic collection of page building blocks and templates for the WordPress Gutenberg Block Editor. Create beautiful and attractive posts, p \\u2026\",\"version\":\"2.2.2\",\"author\":\"ThemeIsle\",\"cta\":\"install\",\"path\":\"otter-blocks\\/otter-blocks.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=otter-blocks%2Fotter-blocks.php&plugin_status=all&paged=1&_wpnonce=361a5c6206\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=otter-blocks%2Fotter-blocks.php&plugin_status=all&paged=1&_wpnonce=7614ef4a8e\"},\"wp-cloudflare-page-cache\":{\"banner\":\"https:\\/\\/ps.w.org\\/wp-cloudflare-page-cache\\/assets\\/banner-772x250.jpeg?rev=2691373\",\"name\":\"Super Page Cache for Cloudflare\",\"description\":\"Speed up a WordPress website by caching your webpages onto global CDN using any Cloudflare Plan.\",\"version\":\"4.7.3\",\"author\":\"Optimole\",\"cta\":\"install\",\"path\":\"wp-cloudflare-page-cache\\/wp-cloudflare-super-page-cache.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=wp-cloudflare-page-cache%2Fwp-cloudflare-super-page-cache.php&plugin_status=all&paged=1&_wpnonce=40307bd035\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=wp-cloudflare-page-cache%2Fwp-cloudflare-super-page-cache.php&plugin_status=all&paged=1&_wpnonce=f3b50aeb7c\"},\"templates-patterns-collection\":{\"banner\":\"https:\\/\\/ps.w.org\\/templates-patterns-collection\\/assets\\/banner-772x250.jpg?rev=2348265\",\"name\":\"Cloud Templates & Patterns collection\",\"description\":\"A cloud based service with 100+ templates and starter sites for Neve theme.\",\"version\":\"1.1.34\",\"author\":\"ThemeIsle\",\"cta\":\"install\",\"path\":\"templates-patterns-collection\\/templates-patterns-collection.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=templates-patterns-collection%2Ftemplates-patterns-collection.php&plugin_status=all&paged=1&_wpnonce=28abc48e05\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=templates-patterns-collection%2Ftemplates-patterns-collection.php&plugin_status=all&paged=1&_wpnonce=59d37d48a5\"},\"themeisle-companion\":{\"banner\":\"https:\\/\\/ps.w.org\\/themeisle-companion\\/assets\\/banner-772x250.png?rev=2606655\",\"name\":\"Orbit Fox by ThemeIsle\",\"description\":\"This swiss-knife plugin comes with a quality template library, menu\\/sharing icons, Elementor\\/BeaverBuilder page builder widgets and many more.\",\"version\":\"2.10.22\",\"author\":\"Themeisle\",\"cta\":\"install\",\"path\":\"themeisle-companion\\/themeisle-companion.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=themeisle-companion%2Fthemeisle-companion.php&plugin_status=all&paged=1&_wpnonce=c3dbceabc2\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=themeisle-companion%2Fthemeisle-companion.php&plugin_status=all&paged=1&_wpnonce=a09bf520b3\"},\"translatepress-multilingual\":{\"banner\":\"https:\\/\\/ps.w.org\\/translatepress-multilingual\\/assets\\/banner-772x250.png?rev=2312348\",\"name\":\"Translate Multilingual sites \\u2013 TranslatePress\",\"description\":\"Translate your entire site directly from the front-end and go multilingual, with full support for WooCommerce and page builders + Google Translate int \\u2026\",\"version\":\"2.4.8\",\"author\":\"Cozmoslabs, Razvan Mocanu, Madalin Ungureanu, Cristophor Hurduban\",\"cta\":\"install\",\"path\":\"translatepress-multilingual\\/index.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=translatepress-multilingual%2Findex.php&plugin_status=all&paged=1&_wpnonce=b6e257f9dd\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=translatepress-multilingual%2Findex.php&plugin_status=all&paged=1&_wpnonce=39836ddded\"},\"amp\":{\"banner\":\"https:\\/\\/ps.w.org\\/amp\\/assets\\/banner-772x250.png?rev=2527602\",\"name\":\"AMP\",\"description\":\"Um caminho mais f\\u00e1cil para uma \\u00f3tima experi\\u00eancia de p\\u00e1gina para todos. Desenvolvido por AMP.\",\"version\":\"2.4.0\",\"author\":\"AMP Project Contributors\",\"cta\":\"install\",\"path\":\"amp\\/amp.php\",\"activate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=activate&plugin=amp%2Famp.php&plugin_status=all&paged=1&_wpnonce=1a09f32be9\",\"deactivate\":\"http:\\/\\/localhost\\/wordpress\\/wp-admin\\/plugins.php?action=deactivate&plugin=amp%2Famp.php&plugin_status=all&paged=1&_wpnonce=472c072fb0\"}}', 'yes'),
(178, 'finished_updating_comment_type', '1', 'yes'),
(179, 'recently_activated', 'a:0:{}', 'yes'),
(188, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(189, 'site_logo', '168', 'yes'),
(191, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'theme_mods_csb4', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677512285;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"shop-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(217, 'theme_switched_via_customizer', '', 'yes'),
(218, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(243, '_transient_health-check-site-status-result', '{\"good\":\"19\",\"recommended\":\"3\",\"critical\":\"1\"}', 'yes'),
(267, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1677691688;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:53:\"child-theme-configurator/child-theme-configurator.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/child-theme-configurator\";s:4:\"slug\";s:24:\"child-theme-configurator\";s:6:\"plugin\";s:53:\"child-theme-configurator/child-theme-configurator.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/child-theme-configurator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/child-theme-configurator.2.6.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/child-theme-configurator/assets/icon-128x128.png?rev=1557885\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/child-theme-configurator/assets/banner-772x250.jpg?rev=1557885\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:53:\"child-theme-configurator/child-theme-configurator.php\";s:5:\"2.6.0\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(272, 'chld_thm_cfg_options_configvars', 'a:40:{s:8:\"addl_css\";N;s:8:\"forcedep\";N;s:8:\"swappath\";N;s:8:\"cssunreg\";N;s:9:\"csswphead\";N;s:10:\"cssnotheme\";N;s:7:\"reorder\";N;s:10:\"parnt_deps\";N;s:10:\"child_deps\";a:2:{i:0;s:10:\"neve-style\";i:1;s:10:\"neve-style\";}s:9:\"hasstyles\";N;s:11:\"parntloaded\";s:10:\"neve-style\";s:11:\"childloaded\";N;s:11:\"ignoreparnt\";N;s:9:\"qpriority\";i:10;s:9:\"mpriority\";i:10;s:7:\"enqueue\";s:4:\"none\";s:8:\"handling\";s:7:\"primary\";s:9:\"templates\";a:85:{i:0;s:7:\"404.php\";i:1;s:7:\"500.php\";i:2;s:20:\"archive-download.php\";i:3;s:12:\"comments.php\";i:4;s:14:\"footer-pwa.php\";i:5;s:10:\"footer.php\";i:6;s:14:\"header-pwa.php\";i:7;s:10:\"header.php\";i:8;s:9:\"index.php\";i:9;s:11:\"offline.php\";i:10;s:8:\"page.php\";i:11;s:10:\"search.php\";i:12;s:14:\"searchform.php\";i:13;s:16:\"sidebar-shop.php\";i:14;s:11:\"sidebar.php\";i:15;s:19:\"single-download.php\";i:16;s:10:\"single.php\";i:17;s:30:\"taxonomy-download_category.php\";i:18;s:25:\"taxonomy-download_tag.php\";i:19;s:34:\"woocommerce/product-searchform.php\";i:20;s:22:\"views/archive-post.php\";i:21;s:21:\"views/page-header.php\";i:22;s:17:\"views/sidebar.php\";i:23;s:19:\"vendor/autoload.php\";i:24;s:37:\"vendor/composer/autoload_classmap.php\";i:25;s:34:\"vendor/composer/autoload_files.php\";i:26;s:39:\"vendor/composer/autoload_namespaces.php\";i:27;s:33:\"vendor/composer/autoload_psr4.php\";i:28;s:29:\"vendor/composer/installed.php\";i:29;s:39:\"vendor/codeinwp/themeisle-sdk/start.php\";i:30;s:61:\"vendor/codeinwp/themeisle-sdk/assets/js/build/index.asset.php\";i:31;s:43:\"template-parts/content-download-archive.php\";i:32;s:42:\"template-parts/content-download-single.php\";i:33;s:31:\"template-parts/content-none.php\";i:34;s:31:\"template-parts/content-page.php\";i:35;s:38:\"template-parts/content-pagebuilder.php\";i:36;s:33:\"template-parts/content-single.php\";i:37;s:26:\"template-parts/content.php\";i:38;s:50:\"page-templates/template-pagebuilder-full-width.php\";i:39;s:28:\"inc/core/settings/config.php\";i:40;s:43:\"inc/compatibility/starter-content/about.php\";i:41;s:45:\"inc/compatibility/starter-content/contact.php\";i:42;s:42:\"inc/compatibility/starter-content/home.php\";i:43;s:48:\"inc/compatibility/starter-content/portofolio.php\";i:44;s:53:\"inc/compatibility/starter-content/project-details.php\";i:45;s:48:\"inc/compatibility/starter-content/theme-mods.php\";i:46;s:65:\"inc/compatibility/block-patterns/dark-header-centered-content.php\";i:47;s:62:\"inc/compatibility/block-patterns/four-columns-team-members.php\";i:48;s:57:\"inc/compatibility/block-patterns/gallery-grid-buttons.php\";i:49;s:58:\"inc/compatibility/block-patterns/gallery-title-buttons.php\";i:50;s:70:\"inc/compatibility/block-patterns/light-header-left-aligned-content.php\";i:51;s:57:\"inc/compatibility/block-patterns/testimonials-columns.php\";i:52;s:62:\"inc/compatibility/block-patterns/three-columns-images-text.php\";i:53;s:71:\"inc/compatibility/block-patterns/three-columns-images-texts-content.php\";i:54;s:65:\"inc/compatibility/block-patterns/two-columns-centered-content.php\";i:55;s:59:\"inc/compatibility/block-patterns/two-columns-image-text.php\";i:56;s:58:\"inc/compatibility/block-patterns/two-columns-with-text.php\";i:57;s:29:\"header-footer-grid/loader.php\";i:58;s:50:\"header-footer-grid/templates/component-wrapper.php\";i:59;s:51:\"header-footer-grid/templates/footer-row-wrapper.php\";i:60;s:47:\"header-footer-grid/templates/footer-wrapper.php\";i:61;s:47:\"header-footer-grid/templates/header-wrapper.php\";i:62;s:49:\"header-footer-grid/templates/row-wrapper-main.php\";i:63;s:51:\"header-footer-grid/templates/row-wrapper-mobile.php\";i:64;s:44:\"header-footer-grid/templates/row-wrapper.php\";i:65;s:37:\"header-footer-grid/templates/rows.php\";i:66;s:60:\"header-footer-grid/templates/components/component-button.php\";i:67;s:63:\"header-footer-grid/templates/components/component-cart-icon.php\";i:68;s:67:\"header-footer-grid/templates/components/component-edd-cart-icon.php\";i:69;s:68:\"header-footer-grid/templates/components/component-footer-sidebar.php\";i:70;s:58:\"header-footer-grid/templates/components/component-html.php\";i:71;s:58:\"header-footer-grid/templates/components/component-logo.php\";i:72;s:63:\"header-footer-grid/templates/components/component-menu-icon.php\";i:73;s:64:\"header-footer-grid/templates/components/component-nav-footer.php\";i:74;s:67:\"header-footer-grid/templates/components/component-nav-secondary.php\";i:75;s:57:\"header-footer-grid/templates/components/component-nav.php\";i:76;s:68:\"header-footer-grid/templates/components/component-palette-switch.php\";i:77;s:71:\"header-footer-grid/templates/components/component-search-responsive.php\";i:78;s:60:\"header-footer-grid/templates/components/component-search.php\";i:79;s:24:\"globals/google-fonts.php\";i:80;s:48:\"assets/apps/starter-sites/build/notice.asset.php\";i:81;s:41:\"assets/apps/metabox/build/index.asset.php\";i:82;s:47:\"assets/apps/dashboard/build/dashboard.asset.php\";i:83;s:56:\"assets/apps/customizer-controls/build/controls.asset.php\";i:84;s:49:\"assets/apps/components/build/components.asset.php\";}s:7:\"max_sel\";N;s:7:\"imports\";a:2:{s:5:\"child\";a:0:{}s:5:\"parnt\";a:0:{}}s:13:\"child_version\";s:5:\"3.5.3\";s:12:\"child_author\";s:9:\"ThemeIsle\";s:10:\"child_name\";s:10:\"Neve Child\";s:14:\"child_themeuri\";s:34:\"https://themeisle.com/themes/neve/\";s:15:\"child_authoruri\";s:21:\"https://themeisle.com\";s:11:\"child_descr\";s:796:\"Neve is a super fast, easily customizable, multi-purpose theme. It’s perfect for blogs, small business, startups, agencies, firms, e-commerce shops (WooCommerce storefront) as well as personal portfolio sites and most types of projects. A fully AMP optimized and responsive theme, Neve will load in mere seconds and adapt perfectly on any viewing device. While it is lightweight and has a minimalist design, the theme is highly extendable, it has a highly SEO optimized code, resulting in top rankings in Google search results. Neve works perfectly with Gutenberg and the most popular page builders (Elementor, Brizy, Beaver Builder, Visual Composer, SiteOrigin, Divi). Neve is also WooCommerce ready, responsive, RTL &amp; translation ready. Look no further. Neve is the perfect theme for you!\";s:10:\"child_tags\";s:374:\"blog,custom-logo,e-commerce,rtl-language-support,grid-layout,one-column,two-columns,custom-background,custom-colors,custom-header,custom-menu,featured-image-header,featured-images,flexible-header,full-width-template,sticky-post,theme-options,threaded-comments,translation-ready,accessibility-ready,wide-blocks,block-styles,footer-widgets,portfolio,left-sidebar,right-sidebar\";s:5:\"parnt\";s:4:\"neve\";s:5:\"child\";s:10:\"neve-child\";s:10:\"configtype\";s:5:\"theme\";s:6:\"valkey\";i:1;s:7:\"rulekey\";N;s:5:\"qskey\";N;s:6:\"selkey\";N;s:8:\"querykey\";N;s:8:\"tokenkey\";N;s:6:\"recent\";N;s:9:\"converted\";i:1;s:5:\"fsize\";i:1390;s:7:\"version\";s:5:\"2.6.0\";}', 'no'),
(273, 'chld_thm_cfg_options_dict_qs', 'a:0:{}', 'no'),
(274, 'chld_thm_cfg_options_dict_sel', 'a:0:{}', 'no'),
(275, 'chld_thm_cfg_options_dict_query', 'a:0:{}', 'no'),
(276, 'chld_thm_cfg_options_dict_rule', 'a:0:{}', 'no'),
(277, 'chld_thm_cfg_options_dict_val', 'a:1:{i:1;s:0:\"\";}', 'no'),
(278, 'chld_thm_cfg_options_dict_seq', 'a:0:{}', 'no'),
(279, 'chld_thm_cfg_options_dict_token', 'a:0:{}', 'no'),
(280, 'chld_thm_cfg_options_val_ndx', 'a:0:{}', 'no'),
(283, 'theme_mods_neve-child', 'a:78:{i:0;b:0;s:19:\"neve_ran_migrations\";b:1;s:24:\"neve_migrated_hfg_colors\";b:1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:13:\"ti_prev_theme\";s:4:\"csb4\";s:18:\"custom_css_post_id\";i:-1;s:17:\"logo_show_tagline\";i:0;s:26:\"nav-icon_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:5:\"right\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";i:1;s:5:\"right\";i:1;s:6:\"bottom\";i:1;s:4:\"left\";i:1;}s:4:\"type\";s:7:\"outline\";s:10:\"background\";s:0:\"\";s:15:\"backgroundHover\";s:0:\"\";s:4:\"text\";s:0:\"\";s:9:\"textHover\";s:0:\"\";}s:32:\"hfg_header_layout_top_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#f0f0f0\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:33:\"hfg_header_layout_main_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:17:\"var(--nv-site-bg)\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:35:\"hfg_header_layout_bottom_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#ffffff\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:36:\"hfg_header_layout_sidebar_background\";a:8:{s:4:\"type\";s:5:\"color\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:10:\"colorValue\";s:17:\"var(--nv-site-bg)\";s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:32:\"hfg_footer_layout_top_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:7:\"#ffffff\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:35:\"hfg_footer_layout_bottom_background\";a:8:{s:4:\"type\";s:5:\"color\";s:10:\"colorValue\";s:17:\"var(--nv-dark-bg)\";s:8:\"imageUrl\";s:0:\"\";s:10:\"focusPoint\";a:2:{s:1:\"x\";d:0.5;s:1:\"y\";d:0.5;}s:17:\"overlayColorValue\";s:0:\"\";s:14:\"overlayOpacity\";i:50;s:5:\"fixed\";b:0;s:11:\"useFeatured\";b:0;}s:24:\"neve_blog_archive_layout\";s:4:\"grid\";s:24:\"neve_post_excerpt_length\";d:40;s:28:\"neve_advanced_layout_options\";b:1;s:32:\"neve_blog_archive_sidebar_layout\";s:10:\"full-width\";s:31:\"neve_blog_archive_content_width\";i:100;s:21:\"neve_body_font_family\";s:0:\"\";s:25:\"neve_headings_font_family\";s:0:\"\";s:22:\"neve_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";i:1;s:5:\"right\";i:1;s:6:\"bottom\";i:1;s:4:\"left\";i:1;}s:4:\"type\";s:4:\"fill\";s:10:\"background\";s:24:\"var(--nv-primary-accent)\";s:15:\"backgroundHover\";s:26:\"var(--nv-secondary-accent)\";s:4:\"text\";s:7:\"#010101\";s:9:\"textHover\";s:7:\"#ffffff\";}s:24:\"neve_h1_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.2\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"39\";s:6:\"tablet\";s:2:\"55\";s:7:\"desktop\";i:70;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:1;}s:20:\"neve_container_width\";s:42:\"{\"mobile\":748,\"tablet\":992,\"desktop\":1170}\";s:28:\"neve_default_container_style\";s:9:\"contained\";s:24:\"neve_h2_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"34\";s:7:\"desktop\";s:2:\"46\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h3_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"20\";s:6:\"tablet\";s:2:\"20\";s:7:\"desktop\";s:2:\"24\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:31:\"neve_single_post_sidebar_layout\";s:5:\"right\";s:31:\"neve_other_pages_sidebar_layout\";s:10:\"full-width\";s:30:\"neve_single_post_content_width\";i:70;s:30:\"neve_other_pages_content_width\";i:100;s:21:\"neve_typeface_general\";a:6:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"16\";s:6:\"tablet\";i:16;s:7:\"desktop\";s:2:\"17\";}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.7\";s:6:\"tablet\";s:3:\"1.7\";s:7:\"desktop\";d:1.7;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";s:1:\"0\";}s:10:\"fontWeight\";s:3:\"400\";s:13:\"textTransform\";s:4:\"none\";s:4:\"flag\";b:0;}s:18:\"primary-menu_color\";s:20:\"var(--nv-text-color)\";s:25:\"primary-menu_active_color\";s:20:\"var(--nv-text-color)\";s:24:\"primary-menu_hover_color\";s:26:\"var(--nv-secondary-accent)\";s:31:\"primary-menu_component_typeface\";a:5:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";i:1;s:6:\"tablet\";i:1;s:7:\"desktop\";d:0.8;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";d:1.6;s:6:\"tablet\";d:1.6;s:7:\"desktop\";d:1.6;s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:9:\"uppercase\";}s:16:\"neve_grid_layout\";s:35:\"{\"desktop\":2,\"tablet\":2,\"mobile\":1}\";s:32:\"neve_secondary_button_appearance\";a:7:{s:12:\"borderRadius\";a:4:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"left\";s:1:\"0\";}s:11:\"borderWidth\";a:4:{s:3:\"top\";s:1:\"2\";s:5:\"right\";s:1:\"2\";s:6:\"bottom\";s:1:\"2\";s:4:\"left\";s:1:\"2\";}s:4:\"type\";s:7:\"outline\";s:10:\"background\";s:16:\"rgba(0, 0, 0, 0)\";s:15:\"backgroundHover\";s:17:\"var(--nv-dark-bg)\";s:4:\"text\";s:17:\"var(--nv-dark-bg)\";s:9:\"textHover\";s:22:\"var(--nv-text-dark-bg)\";}s:11:\"custom_logo\";i:168;s:14:\"logo_max_width\";s:38:\"{\"mobile\":32,\"tablet\":32,\"desktop\":32}\";s:19:\"neve_button_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:6:\"tablet\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:7:\"desktop\";a:4:{s:3:\"top\";s:2:\"12\";s:5:\"right\";s:2:\"24\";s:6:\"bottom\";s:2:\"12\";s:4:\"left\";s:2:\"24\";}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:33:\"neve_blog_list_alternative_layout\";b:1;s:24:\"neve_h4_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"16\";s:6:\"tablet\";s:2:\"16\";s:7:\"desktop\";s:2:\"20\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h5_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:24:\"neve_h6_typeface_general\";a:6:{s:10:\"fontWeight\";s:3:\"600\";s:13:\"textTransform\";s:4:\"none\";s:13:\"letterSpacing\";a:3:{s:6:\"mobile\";i:0;s:6:\"tablet\";i:0;s:7:\"desktop\";i:0;}s:10:\"lineHeight\";a:4:{s:6:\"mobile\";s:3:\"1.3\";s:6:\"tablet\";s:3:\"1.3\";s:7:\"desktop\";s:3:\"1.3\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}}s:8:\"fontSize\";a:4:{s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}}s:4:\"flag\";b:0;}s:18:\"neve_global_colors\";a:2:{s:13:\"activePalette\";s:4:\"base\";s:8:\"palettes\";a:4:{s:4:\"base\";a:3:{s:4:\"name\";s:4:\"Base\";s:13:\"allowDeletion\";b:0;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#fcaf3b\";s:19:\"nv-secondary-accent\";s:7:\"#ab641d\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#ededed\";s:10:\"nv-dark-bg\";s:7:\"#14171c\";s:13:\"nv-text-color\";s:7:\"#2b2b2b\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:8:\"darkMode\";a:3:{s:4:\"name\";s:9:\"Dark Mode\";s:13:\"allowDeletion\";b:0;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#fcaf3b\";s:19:\"nv-secondary-accent\";s:7:\"#ab641d\";s:10:\"nv-site-bg\";s:7:\"#121212\";s:11:\"nv-light-bg\";s:7:\"#2b2b2b\";s:10:\"nv-dark-bg\";s:7:\"#1a1a1a\";s:13:\"nv-text-color\";s:7:\"#ffffff\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:5:\"green\";a:3:{s:4:\"name\";s:5:\"Green\";s:13:\"allowDeletion\";b:1;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#55f5a3\";s:19:\"nv-secondary-accent\";s:7:\"#2b2b2b\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#f5f3eb\";s:10:\"nv-dark-bg\";s:7:\"#000000\";s:13:\"nv-text-color\";s:7:\"#000000\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}s:4:\"blue\";a:3:{s:4:\"name\";s:4:\"Blue\";s:13:\"allowDeletion\";b:1;s:6:\"colors\";a:9:{s:17:\"nv-primary-accent\";s:7:\"#3d6fe5\";s:19:\"nv-secondary-accent\";s:7:\"#01216b\";s:10:\"nv-site-bg\";s:7:\"#ffffff\";s:11:\"nv-light-bg\";s:7:\"#f0eff4\";s:10:\"nv-dark-bg\";s:7:\"#0d1317\";s:13:\"nv-text-color\";s:7:\"#121212\";s:15:\"nv-text-dark-bg\";s:7:\"#ffffff\";s:6:\"nv-c-1\";s:7:\"#77b978\";s:6:\"nv-c-2\";s:7:\"#f37262\";}}}}s:39:\"hfg_footer_layout_bottom_new_text_color\";s:22:\"var(--nv-text-dark-bg)\";s:12:\"logo_display\";s:9:\"logoTitle\";s:20:\"neve_button_typeface\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"14\";s:6:\"tablet\";s:2:\"14\";s:7:\"desktop\";s:2:\"16\";}s:4:\"flag\";b:1;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";d:1.6;s:6:\"tablet\";d:1.6;s:7:\"desktop\";d:1.6;}}s:25:\"neve_fallback_font_family\";s:28:\"Arial, Helvetica, sans-serif\";s:24:\"neve_form_fields_padding\";a:5:{s:3:\"top\";s:2:\"10\";s:6:\"bottom\";i:10;s:4:\"left\";i:12;s:5:\"right\";i:12;s:4:\"unit\";s:2:\"px\";}s:21:\"neve_form_button_type\";s:7:\"primary\";s:30:\"neve_form_fields_border_radius\";a:5:{s:3:\"top\";s:1:\"0\";s:5:\"right\";s:1:\"0\";s:4:\"left\";s:1:\"0\";s:6:\"bottom\";s:1:\"0\";s:4:\"unit\";s:2:\"px\";}s:34:\"neve_archive_typography_post_title\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"32\";s:7:\"desktop\";s:2:\"32\";}s:4:\"flag\";b:0;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:7:\"desktop\";s:0:\"\";}}s:38:\"neve_single_post_typography_post_title\";a:3:{s:8:\"fontSize\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"px\";s:6:\"tablet\";s:2:\"px\";s:7:\"desktop\";s:2:\"px\";}s:6:\"mobile\";s:2:\"28\";s:6:\"tablet\";s:2:\"40\";s:7:\"desktop\";s:2:\"65\";}s:4:\"flag\";b:1;s:10:\"lineHeight\";a:4:{s:6:\"suffix\";a:3:{s:6:\"mobile\";s:2:\"em\";s:6:\"tablet\";s:2:\"em\";s:7:\"desktop\";s:2:\"em\";}s:6:\"mobile\";s:0:\"\";s:6:\"tablet\";s:0:\"\";s:7:\"desktop\";s:0:\"\";}}s:20:\"hfg_footer_layout_v2\";s:240:\"{\"desktop\":{\"top\":{\"left\":[],\"c-left\":[],\"center\":[],\"c-right\":[],\"right\":[]},\"main\":{\"left\":[],\"c-left\":[],\"center\":[],\"c-right\":[],\"right\":[]},\"bottom\":{\"left\":[],\"c-left\":[{\"id\":\"footer_copyright\"}],\"center\":[],\"c-right\":[],\"right\":[]}}}\";s:33:\"neve_form_fields_background_color\";s:17:\"var(--nv-site-bg)\";s:38:\"neve_layout_single_post_elements_order\";s:29:\"[\"content\",\"tags\",\"comments\"]\";s:23:\"neve_post_header_layout\";s:5:\"cover\";s:22:\"neve_post_cover_height\";s:93:\"{\"mobile\":250,\"tablet\":30,\"desktop\":50,\"suffix\":{\"tablet\":\"vh\",\"desktop\":\"vh\",\"mobile\":\"px\"}}\";s:25:\"neve_post_title_alignment\";a:3:{s:6:\"mobile\";s:4:\"left\";s:6:\"tablet\";s:4:\"left\";s:7:\"desktop\";s:4:\"left\";}s:24:\"neve_post_title_position\";a:3:{s:6:\"mobile\";s:6:\"center\";s:6:\"tablet\";s:6:\"center\";s:7:\"desktop\";s:8:\"flex-end\";}s:26:\"neve_post_cover_text_color\";s:22:\"var(--nv-text-dark-bg)\";s:34:\"neve_post_cover_title_boxed_layout\";b:0;s:44:\"neve_post_cover_title_boxed_background_color\";s:17:\"var(--nv-dark-bg)\";s:26:\"neve_post_content_ordering\";s:36:\"[\"thumbnail\",\"title-meta\",\"excerpt\"]\";s:19:\"neve_enable_masonry\";b:0;s:30:\"neve_post_thumbnail_box_shadow\";i:2;s:18:\"primary-menu_style\";s:19:\"style-border-bottom\";s:32:\"neve_post_cover_background_color\";s:17:\"var(--nv-dark-bg)\";s:23:\"neve_post_cover_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";i:40;s:5:\"right\";i:15;s:6:\"bottom\";i:40;s:4:\"left\";i:15;}s:6:\"tablet\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:30;s:6:\"bottom\";i:60;s:4:\"left\";i:30;}s:7:\"desktop\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:40;s:6:\"bottom\";s:2:\"60\";s:4:\"left\";i:40;}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:31:\"neve_post_cover_overlay_opacity\";d:50;s:25:\"neve_post_cover_container\";s:9:\"contained\";s:35:\"neve_post_cover_title_boxed_padding\";a:6:{s:6:\"mobile\";a:4:{s:3:\"top\";i:40;s:5:\"right\";i:15;s:6:\"bottom\";i:40;s:4:\"left\";i:15;}s:6:\"tablet\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:30;s:6:\"bottom\";i:60;s:4:\"left\";i:30;}s:7:\"desktop\";a:4:{s:3:\"top\";i:60;s:5:\"right\";i:40;s:6:\"bottom\";s:2:\"60\";s:4:\"left\";i:40;}s:11:\"mobile-unit\";s:2:\"px\";s:11:\"tablet-unit\";s:2:\"px\";s:12:\"desktop-unit\";s:2:\"px\";}s:29:\"neve_form_fields_border_width\";a:5:{s:3:\"top\";s:1:\"2\";s:5:\"right\";s:1:\"2\";s:4:\"left\";s:1:\"2\";s:6:\"bottom\";s:1:\"2\";s:4:\"unit\";s:2:\"px\";}s:29:\"neve_form_fields_border_color\";s:18:\"var(--nv-light-bg)\";s:21:\"neve_input_text_color\";s:20:\"var(--nv-text-color)\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1677512835;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:12:\"shop-sidebar\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}s:19:\"footer-four-widgets\";a:0:{}}}}', 'yes'),
(817, 'themeisle_sdk_notifications', 'a:2:{s:17:\"last_notification\";a:2:{s:2:\"id\";s:16:\"neve_review_flag\";s:10:\"display_at\";i:1677599127;}s:24:\"last_notification_active\";i:0;}', 'yes'),
(986, '_transient_timeout_global_styles_neve-child', '1677691746', 'no'),
(987, '_transient_global_styles_neve-child', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--neve-link-color: var(--nv-primary-accent);--wp--preset--color--neve-link-hover-color: var(--nv-secondary-accent);--wp--preset--color--nv-site-bg: var(--nv-site-bg);--wp--preset--color--nv-light-bg: var(--nv-light-bg);--wp--preset--color--nv-dark-bg: var(--nv-dark-bg);--wp--preset--color--neve-text-color: var(--nv-text-color);--wp--preset--color--nv-text-dark-bg: var(--nv-text-dark-bg);--wp--preset--color--nv-c-1: var(--nv-c-1);--wp--preset--color--nv-c-2: var(--nv-c-2);--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(988, '_transient_timeout_global_styles_svg_filters_neve-child', '1677691746', 'no'),
(989, '_transient_global_styles_svg_filters_neve-child', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(991, '_site_transient_timeout_theme_roots', '1677693487', 'no'),
(992, '_site_transient_theme_roots', 'a:3:{s:4:\"csb4\";s:7:\"/themes\";s:10:\"neve-child\";s:7:\"/themes\";s:4:\"neve\";s:7:\"/themes\";}', 'no'),
(993, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1677691688;s:7:\"checked\";a:3:{s:4:\"csb4\";s:0:\"\";s:10:\"neve-child\";s:16:\"3.5.3.1677512807\";s:4:\"neve\";s:5:\"3.5.3\";}s:8:\"response\";a:1:{s:4:\"neve\";a:6:{s:5:\"theme\";s:4:\"neve\";s:11:\"new_version\";s:5:\"3.5.4\";s:3:\"url\";s:34:\"https://wordpress.org/themes/neve/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/theme/neve.3.5.4.zip\";s:8:\"requires\";s:3:\"5.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'page-db.php'),
(3, 5, '_wp_attached_file', '2023/02/logo-agency.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:23:\"2023/02/logo-agency.png\";s:8:\"filesize\";i:3756;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'neve'),
(8, 6, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(9, 6, 'neve_meta_disable_title', 'on'),
(10, 6, 'neve_meta_enable_content_width', 'on'),
(11, 6, 'neve_meta_content_width', '100'),
(13, 7, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(14, 7, 'neve_meta_disable_title', 'on'),
(15, 7, 'neve_meta_enable_content_width', 'on'),
(16, 7, 'neve_meta_content_width', '100'),
(18, 8, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(19, 8, 'neve_meta_disable_title', 'on'),
(20, 8, 'neve_meta_enable_content_width', 'on'),
(21, 8, 'neve_meta_content_width', '100'),
(23, 9, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(24, 9, 'neve_meta_disable_title', 'on'),
(25, 9, 'neve_meta_enable_content_width', 'on'),
(26, 9, 'neve_meta_content_width', '100'),
(28, 10, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(29, 10, 'neve_meta_disable_title', 'on'),
(30, 10, 'neve_meta_enable_content_width', 'on'),
(31, 10, 'neve_meta_content_width', '100'),
(33, 11, '_customize_changeset_uuid', 'ac0c6b31-c426-41e1-8249-288303bb563e'),
(34, 11, 'neve_meta_disable_title', 'on'),
(35, 11, 'neve_meta_enable_content_width', 'on'),
(36, 11, 'neve_meta_content_width', '100'),
(37, 19, '_menu_item_type', 'post_type'),
(38, 19, '_menu_item_menu_item_parent', '0'),
(39, 19, '_menu_item_object_id', '6'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(45, 20, '_menu_item_type', 'post_type'),
(46, 20, '_menu_item_menu_item_parent', '0'),
(47, 20, '_menu_item_object_id', '7'),
(48, 20, '_menu_item_object', 'page'),
(49, 20, '_menu_item_target', ''),
(50, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 20, '_menu_item_xfn', ''),
(52, 20, '_menu_item_url', ''),
(53, 21, '_menu_item_type', 'post_type'),
(54, 21, '_menu_item_menu_item_parent', '0'),
(55, 21, '_menu_item_object_id', '9'),
(56, 21, '_menu_item_object', 'page'),
(57, 21, '_menu_item_target', ''),
(58, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 21, '_menu_item_xfn', ''),
(60, 21, '_menu_item_url', ''),
(61, 22, '_menu_item_type', 'post_type'),
(62, 22, '_menu_item_menu_item_parent', '0'),
(63, 22, '_menu_item_object_id', '10'),
(64, 22, '_menu_item_object', 'page'),
(65, 22, '_menu_item_target', ''),
(66, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 22, '_menu_item_xfn', ''),
(68, 22, '_menu_item_url', ''),
(69, 23, '_menu_item_type', 'post_type'),
(70, 23, '_menu_item_menu_item_parent', '0'),
(71, 23, '_menu_item_object_id', '11'),
(72, 23, '_menu_item_object', 'page'),
(73, 23, '_menu_item_target', ''),
(74, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 23, '_menu_item_xfn', ''),
(76, 23, '_menu_item_url', ''),
(77, 12, '_wp_trash_meta_status', 'publish'),
(78, 12, '_wp_trash_meta_time', '1677187074'),
(80, 6, '_edit_lock', '1677190683:1'),
(81, 24, '_customize_restore_dismissed', '1'),
(83, 25, '_customize_restore_dismissed', '1'),
(84, 26, '_wp_trash_meta_status', 'publish'),
(85, 26, '_wp_trash_meta_time', '1677190311'),
(86, 27, '_wp_trash_meta_status', 'publish'),
(87, 27, '_wp_trash_meta_time', '1677190804'),
(88, 28, '_edit_lock', '1677512272:1'),
(89, 29, '_edit_lock', '1677511736:1'),
(90, 30, '_edit_lock', '1677511794:1'),
(91, 31, '_edit_lock', '1677511814:1'),
(92, 2, '_edit_lock', '1677512170:1'),
(93, 34, '_edit_lock', '1677512912:1'),
(94, 35, '_edit_lock', '1677512931:1'),
(95, 36, '_edit_lock', '1677513144:1'),
(96, 37, '_edit_lock', '1677598993:1'),
(97, 37, '_wp_page_template', 'page-templates/template-pagebuilder-full-width.php'),
(98, 37, '_edit_last', '1'),
(99, 3, '_edit_last', '1'),
(100, 3, '_edit_lock', '1677599017:1'),
(101, 47, '_menu_item_type', 'post_type'),
(102, 47, '_menu_item_menu_item_parent', '0'),
(103, 47, '_menu_item_object_id', '37'),
(104, 47, '_menu_item_object', 'page'),
(105, 47, '_menu_item_target', ''),
(106, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 47, '_menu_item_xfn', ''),
(108, 47, '_menu_item_url', ''),
(109, 47, '_menu_item_orphaned', '1677524597'),
(110, 48, '_menu_item_type', 'custom'),
(111, 48, '_menu_item_menu_item_parent', '0'),
(112, 48, '_menu_item_object_id', '48'),
(113, 48, '_menu_item_object', 'custom'),
(114, 48, '_menu_item_target', ''),
(115, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 48, '_menu_item_xfn', ''),
(117, 48, '_menu_item_url', '#'),
(118, 48, '_menu_item_orphaned', '1677524613'),
(119, 49, '_edit_lock', '1677524485:1'),
(120, 50, '_menu_item_type', 'custom'),
(121, 50, '_menu_item_menu_item_parent', '0'),
(122, 50, '_menu_item_object_id', '50'),
(123, 50, '_menu_item_object', 'custom'),
(124, 50, '_menu_item_target', ''),
(125, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(126, 50, '_menu_item_xfn', ''),
(127, 50, '_menu_item_url', '#'),
(129, 51, '_menu_item_type', 'post_type'),
(130, 51, '_menu_item_menu_item_parent', '50'),
(131, 51, '_menu_item_object_id', '37'),
(132, 51, '_menu_item_object', 'page'),
(133, 51, '_menu_item_target', ''),
(134, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 51, '_menu_item_xfn', ''),
(136, 51, '_menu_item_url', ''),
(138, 19, '_wp_old_date', '2023-02-23'),
(139, 20, '_wp_old_date', '2023-02-23'),
(140, 21, '_wp_old_date', '2023-02-23'),
(141, 22, '_wp_old_date', '2023-02-23'),
(142, 23, '_wp_old_date', '2023-02-23'),
(143, 52, '_edit_lock', '1677599363:1'),
(144, 52, '_edit_last', '1'),
(145, 52, '_wp_page_template', 'graficos_Hidro.php');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-02-23 18:14:37', '2023-02-23 21:14:37', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2023-02-23 18:14:37', '2023-02-23 21:14:37', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-02-23 18:14:37', '2023-02-23 21:14:37', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2023-02-23 18:14:37', '2023-02-23 21:14:37', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-02-23 18:14:37', '2023-02-23 21:14:37', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'closed', '', 'politica-de-privacidade', '', '', '2023-02-27 13:32:31', '2023-02-27 16:32:31', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-02-23 18:14:51', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-02-23 18:14:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', 'Attachment Description', 'Featured Logo', 'Attachment Caption', 'inherit', 'open', 'closed', '', 'featured-logo', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/02/logo-agency.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"url\":\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/hero.jpg\",\"dimRatio\":0,\"focalPoint\":{\"x\":0.5,\"y\":0.64},\"minHeight\":700,\"isDark\":false,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:700px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/hero.jpg\" style=\"object-position:50% 64%\" data-object-fit=\"cover\" data-object-position=\"50% 64%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"style\":{\"color\":{\"text\":\"#121212\"}}} -->\n<h1 class=\"has-text-align-center has-text-color\" style=\"color:#121212\">Create and grow your <br>unique website today</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"color\":{\"text\":\"#121212\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#121212;font-size:17px\">Programmatically work but low hanging fruit so new economy cross-pollination. Quick sync new <br>economy onward and upward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link wp-element-button\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"className\":\"is-style-secondary\"} -->\n<div class=\"wp-block-button is-style-secondary\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://demosites.io/\" target=\"_blank\" rel=\"noreferrer noopener\">SEE ALL DEMOS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\">\n\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-default\"} -->\n<div class=\"wp-block-image icon-style is-style-default\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Fixed Price Projects</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-default\"} -->\n<div class=\"wp-block-image icon-style is-style-default\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-02.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Receive on time</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-01.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Fast work turnaround</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Web Design</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Branding</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-04.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-03.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-left has-nv-text-dark-bg-color has-text-color\">We are driven by values</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"nv-text-dark-bg\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-nv-text-dark-bg-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Featured Work</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><a href=\"#\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><a href=\"#\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column \"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\"  width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">JANET MORRIS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column \"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-01.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">WILLIE BROWN</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-02.jpg\" alt=\"\"  width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">SEAN FISHER</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">Let’s work together on your <br>next web project</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-center has-medium-font-size\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus <br>nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Página Inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">About Us</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-06.jpg\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Our Story</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\",\"fontSize\":\"medium\"} -->\n<p class=\"has-neve-text-color-color has-text-color has-medium-font-size\">Are there any leftovers in the kitchen? what are the expectations but technologically savvy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Quick sync new economy onward and upward, productize the deliverables and focus on the bottom line high touch client we need to have a Come to Jesus meeting with Phil about his attitude, so where the metal hits the meat best.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-nv-text-dark-bg-color has-text-color\">We are driven by values</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"nv-text-dark-bg\"} -->\n<p class=\"has-nv-text-dark-bg-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. Line high touch client we need to have a Come to Jesus meeting with Phil about his attitude, so where the.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LET’S TALK</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"className\":\"ticss-4ce656f1\"} -->\n<div class=\"wp-block-column ticss-4ce656f1\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Super Efficient</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"ticss-f6fc7494\"} -->\n<div class=\"wp-block-column ticss-f6fc7494\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Deeply Committed</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"ticss-a5b4df29\"} -->\n<div class=\"wp-block-column ticss-a5b4df29\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Highly Skilled</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-01.jpg\" alt=\"\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Keith Marshall</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Designer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-02.jpg\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">George Williams</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Developer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Julia Castillo</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Client Service</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(8, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Get in touch</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-05.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Call us</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">509-728-8632 | Monday - Friday</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-06.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Email</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">info@example.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-04.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Offices</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">2982 Sun Valley Road, Pittsburgh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-nv-text-dark-bg-color has-text-color\">Send us a message or Come visit us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"white\"} -->\n<p class=\"has-white-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/map.png\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Portfolio</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Buzz Website</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Branding for Chatoue</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-06.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">IMB Internal Website</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-04.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Social App</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":80,\"height\":80,\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<p class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">“What is the point of being alive if you don’t at least <br>try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"nv-text-dark-bg\",\"style\":{\"typography\":{\"fontSize\":14}}} -->\n<p class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\" style=\"font-size:14px\">JANET MORRIS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Portofolio', '', 'publish', 'closed', 'closed', '', 'portofolio', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":320,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:320px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"70%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:70%\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">James Joyce</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":22}}} -->\n<p class=\"has-neve-text-color-color has-text-color\" style=\"font-size:22px\">How we helped James Joyce get a brand-consistent website that converts visitors into clients.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"30%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:30%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"66.79%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.79%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"34%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:34%\"><!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Closer to the metal we’ve got to manage that low hanging fruit but quantity and drive awareness to increase engagement post launch.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Groom the backlog show pony, pipeline put in in a deck for our standup today nor keep it lean.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\">VISIT WEBSITE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:image {\"width\":80,\"height\":80,\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">JANET MORRIS</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Other projects</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">Let’s work together on your <br>next web project</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-center has-medium-font-size\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus <br>nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Detalhes do projeto', '', 'publish', 'closed', 'closed', '', 'detalhes-do-projeto', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?page_id=11', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(12, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"post_type\",\n            \"title\": \"P\\u00e1gina Inicial\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"P\\u00e1gina Inicial\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Sobre\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sobre\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Portofolio\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Portofolio\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Detalhes do projeto\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Detalhes do projeto\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"neve::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"blogname\": {\n        \"starter_content\": true,\n        \"value\": \"Web Agency Demo 1\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::logo_show_tagline\": {\n        \"starter_content\": true,\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::nav-icon_button_appearance\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"borderRadius\": {\n                \"top\": \"0\",\n                \"left\": \"0\",\n                \"bottom\": \"0\",\n                \"right\": \"0\"\n            },\n            \"borderWidth\": {\n                \"top\": 1,\n                \"right\": 1,\n                \"bottom\": 1,\n                \"left\": 1\n            },\n            \"type\": \"outline\",\n            \"background\": \"\",\n            \"backgroundHover\": \"\",\n            \"text\": \"\",\n            \"textHover\": \"\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_header_layout_top_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"colorValue\": \"#f0f0f0\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_header_layout_main_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"colorValue\": \"var(--nv-site-bg)\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_header_layout_bottom_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"colorValue\": \"#ffffff\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_header_layout_sidebar_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"colorValue\": \"var(--nv-site-bg)\",\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_footer_layout_top_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"colorValue\": \"#ffffff\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_footer_layout_bottom_background\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"color\",\n            \"colorValue\": \"var(--nv-dark-bg)\",\n            \"imageUrl\": \"\",\n            \"focusPoint\": {\n                \"x\": 0.5,\n                \"y\": 0.5\n            },\n            \"overlayColorValue\": \"\",\n            \"overlayOpacity\": 50,\n            \"fixed\": false,\n            \"useFeatured\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_blog_archive_layout\": {\n        \"starter_content\": true,\n        \"value\": \"grid\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_excerpt_length\": {\n        \"starter_content\": true,\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_advanced_layout_options\": {\n        \"starter_content\": true,\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_blog_archive_sidebar_layout\": {\n        \"starter_content\": true,\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_blog_archive_content_width\": {\n        \"starter_content\": true,\n        \"value\": 100,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_body_font_family\": {\n        \"starter_content\": true,\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_headings_font_family\": {\n        \"starter_content\": true,\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_button_appearance\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"borderRadius\": {\n                \"top\": \"0\",\n                \"right\": \"0\",\n                \"bottom\": \"0\",\n                \"left\": \"0\"\n            },\n            \"borderWidth\": {\n                \"top\": 1,\n                \"right\": 1,\n                \"bottom\": 1,\n                \"left\": 1\n            },\n            \"type\": \"fill\",\n            \"background\": \"var(--nv-primary-accent)\",\n            \"backgroundHover\": \"var(--nv-secondary-accent)\",\n            \"text\": \"#010101\",\n            \"textHover\": \"#ffffff\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h1_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.2\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"39\",\n                \"tablet\": \"55\",\n                \"desktop\": 70,\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": true\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_container_width\": {\n        \"starter_content\": true,\n        \"value\": \"{\\\"mobile\\\":748,\\\"tablet\\\":992,\\\"desktop\\\":1170}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_default_container_style\": {\n        \"starter_content\": true,\n        \"value\": \"contained\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h2_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.3\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"28\",\n                \"tablet\": \"34\",\n                \"desktop\": \"46\",\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h3_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.3\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"20\",\n                \"tablet\": \"20\",\n                \"desktop\": \"24\",\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_single_post_sidebar_layout\": {\n        \"starter_content\": true,\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_other_pages_sidebar_layout\": {\n        \"starter_content\": true,\n        \"value\": \"full-width\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_single_post_content_width\": {\n        \"starter_content\": true,\n        \"value\": 70,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_other_pages_content_width\": {\n        \"starter_content\": true,\n        \"value\": 100,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontSize\": {\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                },\n                \"mobile\": \"16\",\n                \"tablet\": 16,\n                \"desktop\": \"17\"\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.7\",\n                \"tablet\": \"1.7\",\n                \"desktop\": 1.7,\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": \"0\"\n            },\n            \"fontWeight\": \"400\",\n            \"textTransform\": \"none\",\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::primary-menu_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-text-color)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::primary-menu_active_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-text-color)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::primary-menu_hover_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-secondary-accent)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::primary-menu_component_typeface\": {\n        \"value\": {\n            \"fontSize\": {\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                },\n                \"mobile\": 1,\n                \"tablet\": 1,\n                \"desktop\": 0.8\n            },\n            \"lineHeight\": {\n                \"mobile\": 1.6,\n                \"tablet\": 1.6,\n                \"desktop\": 1.6,\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"uppercase\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:53\"\n    },\n    \"neve::neve_grid_layout\": {\n        \"starter_content\": true,\n        \"value\": \"{\\\"desktop\\\":2,\\\"tablet\\\":2,\\\"mobile\\\":1}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_secondary_button_appearance\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"borderRadius\": {\n                \"top\": \"0\",\n                \"right\": \"0\",\n                \"bottom\": \"0\",\n                \"left\": \"0\"\n            },\n            \"borderWidth\": {\n                \"top\": \"2\",\n                \"right\": \"2\",\n                \"bottom\": \"2\",\n                \"left\": \"2\"\n            },\n            \"type\": \"outline\",\n            \"background\": \"rgba(0, 0, 0, 0)\",\n            \"backgroundHover\": \"var(--nv-dark-bg)\",\n            \"text\": \"var(--nv-dark-bg)\",\n            \"textHover\": \"var(--nv-text-dark-bg)\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::custom_logo\": {\n        \"starter_content\": true,\n        \"value\": 168,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::logo_max_width\": {\n        \"starter_content\": true,\n        \"value\": \"{\\\"mobile\\\":32,\\\"tablet\\\":32,\\\"desktop\\\":32}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_button_padding\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"mobile\": {\n                \"top\": \"12\",\n                \"right\": \"24\",\n                \"bottom\": \"12\",\n                \"left\": \"24\"\n            },\n            \"tablet\": {\n                \"top\": \"12\",\n                \"right\": \"24\",\n                \"bottom\": \"12\",\n                \"left\": \"24\"\n            },\n            \"desktop\": {\n                \"top\": \"12\",\n                \"right\": \"24\",\n                \"bottom\": \"12\",\n                \"left\": \"24\"\n            },\n            \"mobile-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"desktop-unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_blog_list_alternative_layout\": {\n        \"starter_content\": true,\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h4_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.3\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"16\",\n                \"tablet\": \"16\",\n                \"desktop\": \"20\",\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h5_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.3\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"14\",\n                \"tablet\": \"14\",\n                \"desktop\": \"16\",\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_h6_typeface_general\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontWeight\": \"600\",\n            \"textTransform\": \"none\",\n            \"letterSpacing\": {\n                \"mobile\": 0,\n                \"tablet\": 0,\n                \"desktop\": 0\n            },\n            \"lineHeight\": {\n                \"mobile\": \"1.3\",\n                \"tablet\": \"1.3\",\n                \"desktop\": \"1.3\",\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                }\n            },\n            \"fontSize\": {\n                \"mobile\": \"14\",\n                \"tablet\": \"14\",\n                \"desktop\": \"16\",\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                }\n            },\n            \"flag\": false\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_global_colors\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"activePalette\": \"base\",\n            \"palettes\": {\n                \"base\": {\n                    \"name\": \"Base\",\n                    \"allowDeletion\": false,\n                    \"colors\": {\n                        \"nv-primary-accent\": \"#fcaf3b\",\n                        \"nv-secondary-accent\": \"#ab641d\",\n                        \"nv-site-bg\": \"#ffffff\",\n                        \"nv-light-bg\": \"#ededed\",\n                        \"nv-dark-bg\": \"#14171c\",\n                        \"nv-text-color\": \"#2b2b2b\",\n                        \"nv-text-dark-bg\": \"#ffffff\",\n                        \"nv-c-1\": \"#77b978\",\n                        \"nv-c-2\": \"#f37262\"\n                    }\n                },\n                \"darkMode\": {\n                    \"name\": \"Dark Mode\",\n                    \"allowDeletion\": false,\n                    \"colors\": {\n                        \"nv-primary-accent\": \"#fcaf3b\",\n                        \"nv-secondary-accent\": \"#ab641d\",\n                        \"nv-site-bg\": \"#121212\",\n                        \"nv-light-bg\": \"#2b2b2b\",\n                        \"nv-dark-bg\": \"#1a1a1a\",\n                        \"nv-text-color\": \"#ffffff\",\n                        \"nv-text-dark-bg\": \"#ffffff\",\n                        \"nv-c-1\": \"#77b978\",\n                        \"nv-c-2\": \"#f37262\"\n                    }\n                },\n                \"green\": {\n                    \"name\": \"Green\",\n                    \"allowDeletion\": true,\n                    \"colors\": {\n                        \"nv-primary-accent\": \"#55f5a3\",\n                        \"nv-secondary-accent\": \"#2b2b2b\",\n                        \"nv-site-bg\": \"#ffffff\",\n                        \"nv-light-bg\": \"#f5f3eb\",\n                        \"nv-dark-bg\": \"#000000\",\n                        \"nv-text-color\": \"#000000\",\n                        \"nv-text-dark-bg\": \"#ffffff\",\n                        \"nv-c-1\": \"#77b978\",\n                        \"nv-c-2\": \"#f37262\"\n                    }\n                },\n                \"blue\": {\n                    \"name\": \"Blue\",\n                    \"allowDeletion\": true,\n                    \"colors\": {\n                        \"nv-primary-accent\": \"#3d6fe5\",\n                        \"nv-secondary-accent\": \"#01216b\",\n                        \"nv-site-bg\": \"#ffffff\",\n                        \"nv-light-bg\": \"#f0eff4\",\n                        \"nv-dark-bg\": \"#0d1317\",\n                        \"nv-text-color\": \"#121212\",\n                        \"nv-text-dark-bg\": \"#ffffff\",\n                        \"nv-c-1\": \"#77b978\",\n                        \"nv-c-2\": \"#f37262\"\n                    }\n                }\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_footer_layout_bottom_new_text_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-text-dark-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::logo_display\": {\n        \"starter_content\": true,\n        \"value\": \"logoTitle\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_button_typeface\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontSize\": {\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                },\n                \"mobile\": \"14\",\n                \"tablet\": \"14\",\n                \"desktop\": \"16\"\n            },\n            \"flag\": true,\n            \"lineHeight\": {\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                },\n                \"mobile\": 1.6,\n                \"tablet\": 1.6,\n                \"desktop\": 1.6\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_fallback_font_family\": {\n        \"starter_content\": true,\n        \"value\": \"Arial, Helvetica, sans-serif\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_fields_padding\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"top\": \"10\",\n            \"bottom\": 10,\n            \"left\": 12,\n            \"right\": 12,\n            \"unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_button_type\": {\n        \"starter_content\": true,\n        \"value\": \"primary\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_fields_border_radius\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"top\": \"0\",\n            \"right\": \"0\",\n            \"left\": \"0\",\n            \"bottom\": \"0\",\n            \"unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_archive_typography_post_title\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontSize\": {\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                },\n                \"mobile\": \"28\",\n                \"tablet\": \"32\",\n                \"desktop\": \"32\"\n            },\n            \"flag\": false,\n            \"lineHeight\": {\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                },\n                \"mobile\": \"\",\n                \"tablet\": \"\",\n                \"desktop\": \"\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_single_post_typography_post_title\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"fontSize\": {\n                \"suffix\": {\n                    \"mobile\": \"px\",\n                    \"tablet\": \"px\",\n                    \"desktop\": \"px\"\n                },\n                \"mobile\": \"28\",\n                \"tablet\": \"40\",\n                \"desktop\": \"65\"\n            },\n            \"flag\": true,\n            \"lineHeight\": {\n                \"suffix\": {\n                    \"mobile\": \"em\",\n                    \"tablet\": \"em\",\n                    \"desktop\": \"em\"\n                },\n                \"mobile\": \"\",\n                \"tablet\": \"\",\n                \"desktop\": \"\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::hfg_footer_layout_v2\": {\n        \"starter_content\": true,\n        \"value\": \"{\\\"desktop\\\":{\\\"top\\\":{\\\"left\\\":[],\\\"c-left\\\":[],\\\"center\\\":[],\\\"c-right\\\":[],\\\"right\\\":[]},\\\"main\\\":{\\\"left\\\":[],\\\"c-left\\\":[],\\\"center\\\":[],\\\"c-right\\\":[],\\\"right\\\":[]},\\\"bottom\\\":{\\\"left\\\":[],\\\"c-left\\\":[{\\\"id\\\":\\\"footer_copyright\\\"}],\\\"center\\\":[],\\\"c-right\\\":[],\\\"right\\\":[]}}}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_fields_background_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-site-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_layout_single_post_elements_order\": {\n        \"starter_content\": true,\n        \"value\": \"[\\\"content\\\",\\\"tags\\\",\\\"comments\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_header_layout\": {\n        \"starter_content\": true,\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_height\": {\n        \"starter_content\": true,\n        \"value\": \"{\\\"mobile\\\":250,\\\"tablet\\\":30,\\\"desktop\\\":50,\\\"suffix\\\":{\\\"tablet\\\":\\\"vh\\\",\\\"desktop\\\":\\\"vh\\\",\\\"mobile\\\":\\\"px\\\"}}\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_title_alignment\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"mobile\": \"left\",\n            \"tablet\": \"left\",\n            \"desktop\": \"left\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_title_position\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"mobile\": \"center\",\n            \"tablet\": \"center\",\n            \"desktop\": \"flex-end\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_text_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-text-dark-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_title_boxed_layout\": {\n        \"starter_content\": true,\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_title_boxed_background_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-dark-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_content_ordering\": {\n        \"starter_content\": true,\n        \"value\": \"[\\\"thumbnail\\\",\\\"title-meta\\\",\\\"excerpt\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_enable_masonry\": {\n        \"starter_content\": true,\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_thumbnail_box_shadow\": {\n        \"starter_content\": true,\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::primary-menu_style\": {\n        \"starter_content\": true,\n        \"value\": \"style-border-bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_background_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-dark-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_padding\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"mobile\": {\n                \"top\": 40,\n                \"right\": 15,\n                \"bottom\": 40,\n                \"left\": 15\n            },\n            \"tablet\": {\n                \"top\": 60,\n                \"right\": 30,\n                \"bottom\": 60,\n                \"left\": 30\n            },\n            \"desktop\": {\n                \"top\": 60,\n                \"right\": 40,\n                \"bottom\": \"60\",\n                \"left\": 40\n            },\n            \"mobile-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"desktop-unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_overlay_opacity\": {\n        \"starter_content\": true,\n        \"value\": 50,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_container\": {\n        \"starter_content\": true,\n        \"value\": \"contained\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_post_cover_title_boxed_padding\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"mobile\": {\n                \"top\": 40,\n                \"right\": 15,\n                \"bottom\": 40,\n                \"left\": 15\n            },\n            \"tablet\": {\n                \"top\": 60,\n                \"right\": 30,\n                \"bottom\": 60,\n                \"left\": 30\n            },\n            \"desktop\": {\n                \"top\": 60,\n                \"right\": 40,\n                \"bottom\": \"60\",\n                \"left\": 40\n            },\n            \"mobile-unit\": \"px\",\n            \"tablet-unit\": \"px\",\n            \"desktop-unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_fields_border_width\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"top\": \"2\",\n            \"right\": \"2\",\n            \"left\": \"2\",\n            \"bottom\": \"2\",\n            \"unit\": \"px\"\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_form_fields_border_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-light-bg)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    },\n    \"neve::neve_input_text_color\": {\n        \"starter_content\": true,\n        \"value\": \"var(--nv-text-color)\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:17:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac0c6b31-c426-41e1-8249-288303bb563e', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 0, 'http://localhost/wordpress/?p=12', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(13, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"url\":\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/hero.jpg\",\"dimRatio\":0,\"focalPoint\":{\"x\":0.5,\"y\":0.64},\"minHeight\":700,\"isDark\":false,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:700px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/hero.jpg\" style=\"object-position:50% 64%\" data-object-fit=\"cover\" data-object-position=\"50% 64%\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":1,\"style\":{\"color\":{\"text\":\"#121212\"}}} -->\n<h1 class=\"has-text-align-center has-text-color\" style=\"color:#121212\">Create and grow your <br>unique website today</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"color\":{\"text\":\"#121212\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#121212;font-size:17px\">Programmatically work but low hanging fruit so new economy cross-pollination. Quick sync new <br>economy onward and upward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link wp-element-button\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"className\":\"is-style-secondary\"} -->\n<div class=\"wp-block-button is-style-secondary\"><a class=\"wp-block-button__link wp-element-button\" href=\"https://demosites.io/\" target=\"_blank\" rel=\"noreferrer noopener\">SEE ALL DEMOS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\">\n\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-default\"} -->\n<div class=\"wp-block-image icon-style is-style-default\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Fixed Price Projects</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-default\"} -->\n<div class=\"wp-block-image icon-style is-style-default\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-02.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Receive on time</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-01.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Fast work turnaround</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Web Design</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Branding</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-04.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-03.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"left\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-left has-nv-text-dark-bg-color has-text-color\">We are driven by values</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"nv-text-dark-bg\",\"style\":{\"typography\":{\"fontSize\":17}}} -->\n<p class=\"has-text-align-left has-nv-text-dark-bg-color has-text-color\" style=\"font-size:17px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"left\"} -->\n<div class=\"wp-block-buttons alignleft\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Featured Work</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><a href=\"#\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><a href=\"#\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column \"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\"  width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">JANET MORRIS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column \"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-01.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">WILLIE BROWN</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:image {\"className\":\"is-style-rounded\", \"width\":80,\"height\":80} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-02.jpg\" alt=\"\"  width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color has-normal-font-size\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">SEAN FISHER</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">Let’s work together on your <br>next web project</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-center has-medium-font-size\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus <br>nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 6, 'http://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">About Us</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-06.jpg\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Our Story</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\",\"fontSize\":\"medium\"} -->\n<p class=\"has-neve-text-color-color has-text-color has-medium-font-size\">Are there any leftovers in the kitchen? what are the expectations but technologically savvy.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Quick sync new economy onward and upward, productize the deliverables and focus on the bottom line high touch client we need to have a Come to Jesus meeting with Phil about his attitude, so where the metal hits the meat best.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-nv-text-dark-bg-color has-text-color\">We are driven by values</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"nv-text-dark-bg\"} -->\n<p class=\"has-nv-text-dark-bg-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo. Line high touch client we need to have a Come to Jesus meeting with Phil about his attitude, so where the.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LET’S TALK</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":50} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"className\":\"ticss-4ce656f1\"} -->\n<div class=\"wp-block-column ticss-4ce656f1\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Super Efficient</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"ticss-f6fc7494\"} -->\n<div class=\"wp-block-column ticss-f6fc7494\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Deeply Committed</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"className\":\"ticss-a5b4df29\"} -->\n<div class=\"wp-block-column ticss-a5b4df29\"><!-- wp:image {\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<figure class=\"wp-block-image icon-style is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-03.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"left\",\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-left has-text-align-center has-neve-text-color-color has-text-color\">Highly Skilled</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-left has-neve-text-color-color has-text-color\" style=\"font-size:15px\">Lorem ipsum dolor sit amet elit do, consectetur adipiscing, sed eiusmod tempor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-01.jpg\" alt=\"\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Keith Marshall</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Designer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-02.jpg\" alt=\"\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">George Williams</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Developer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"align\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-image is-style-default\"><figure class=\"aligncenter \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"align\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Julia Castillo</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Client Service</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"align\":\"center\"} -->\n<ul class=\"wp-block-social-links aligncenter\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"linkedin\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 7, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Get in touch</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":420,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:420px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-05.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Call us</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">509-728-8632 | Monday - Friday</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-06.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Email</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">info@example.com</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {} -->\n<div class=\"wp-block-column\"><!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":48,\"height\":48,\"className\":\"icon-style is-style-rounded\"} -->\n<div class=\"wp-block-image icon-style is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/icon-04.svg\" alt=\"\" width=\"48\" height=\"48\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:heading {\"level\":3,\"className\":\"has-text-align-center\",\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Offices</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":15}}} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\" style=\"font-size:15px\">2982 Sun Valley Road, Pittsburgh</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":24} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":30} -->\n<div style=\"height:30px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:heading {\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-nv-text-dark-bg-color has-text-color\">Send us a message or Come visit us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"white\"} -->\n<p class=\"has-white-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/map.png\" alt=\"\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 8, 'http://localhost/wordpress/?p=15', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(16, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">Portfolio</h1>\n<!-- /wp:heading --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image \"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Buzz Website</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Branding for Chatoue</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-06.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">IMB Internal Website</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-04.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"textColor\":\"neve-text-color\"} -->\n<h3 class=\"has-text-align-center has-neve-text-color-color has-text-color\">Social App</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-text-align-center has-neve-text-color-color has-text-color\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">PROJECT DETAILS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n<!-- wp:image {\"align\":\"center\",\"width\":80,\"height\":80,\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure></div>\n<!-- /wp:image -->\n\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<p class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">“What is the point of being alive if you don’t at least <br>try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"nv-text-dark-bg\",\"style\":{\"typography\":{\"fontSize\":14}}} -->\n<p class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\" style=\"font-size:14px\">JANET MORRIS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Portofolio', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 9, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":320,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:320px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"70%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:70%\"><!-- wp:heading {\"level\":1,\"className\":\"has-text-align-left\",\"textColor\":\"neve-text-color\"} -->\n<h1 class=\"has-text-align-left has-neve-text-color-color has-text-color\">James Joyce</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\",\"style\":{\"typography\":{\"fontSize\":22}}} -->\n<p class=\"has-neve-text-color-color has-text-color\" style=\"font-size:22px\">How we helped James Joyce get a brand-consistent website that converts visitors into clients.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"30%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:30%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-light-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-light-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"66.79%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:66.79%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-05.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"34%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:34%\"><!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Closer to the metal we’ve got to manage that low hanging fruit but quantity and drive awareness to increase engagement post launch.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">Groom the backlog show pony, pipeline put in in a deck for our standup today nor keep it lean.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\">VISIT WEBSITE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:image {\"width\":80,\"height\":80,\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image  is-style-rounded\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/team-03.jpg\" alt=\"\" width=\"80\" height=\"80\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">“What is the point of being alive if you don’t at least try to do something remarkable?”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"textColor\":\"neve-text-color\"} -->\n<p class=\"has-neve-text-color-color has-text-color\">JANET MORRIS</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-site-bg\",\"minHeight\":600,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-site-bg-background-color has-background-dim\" style=\"min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:spacer {\"height\":80} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textColor\":\"neve-text-color\"} -->\n<h2 class=\"has-neve-text-color-color has-text-color\">Other projects</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-columns are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-02.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"50%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:50%\"><!-- wp:image {\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/wordpress/wp-content/themes/neve/assets/img/starter-content/card-01.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:cover {\"overlayColor\":\"nv-dark-bg\",\"minHeight\":300,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-nv-dark-bg-background-color has-background-dim\" style=\"min-height:300px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"textColor\":\"nv-text-dark-bg\"} -->\n<h2 class=\"has-text-align-center has-nv-text-dark-bg-color has-text-color\">Let’s work together on your <br>next web project</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-center has-medium-font-size\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus <br>nec ullamcorper mattis, pulvinar dapibus leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"align\":\"center\", \"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons aligncenter\"><!-- wp:button {\"className\":\"is-style-primary\"} -->\n<div class=\"wp-block-button is-style-primary\"><a class=\"wp-block-button__link\" href=\"#\">LEARN MORE</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":140} -->\n<div style=\"height:140px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'Detalhes do projeto', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 10, 'http://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2023-02-23 18:17:53', '2023-02-23 21:17:53', '', 11, 'http://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-02-27 16:04:52', '2023-02-23 21:17:53', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2023-02-27 16:04:52', '2023-02-27 19:04:52', '', 0, 'http://localhost/wordpress/2023/02/23/19/', 1, 'nav_menu_item', '', 0),
(20, 1, '2023-02-27 16:04:53', '2023-02-23 21:17:53', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/2023/02/23/20/', 2, 'nav_menu_item', '', 0),
(21, 1, '2023-02-27 16:04:53', '2023-02-23 21:17:53', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/2023/02/23/21/', 3, 'nav_menu_item', '', 0),
(22, 1, '2023-02-27 16:04:53', '2023-02-23 21:17:53', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/2023/02/23/22/', 4, 'nav_menu_item', '', 0),
(23, 1, '2023-02-27 16:04:53', '2023-02-23 21:17:53', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/2023/02/23/23/', 5, 'nav_menu_item', '', 0),
(24, 1, '2023-02-23 18:20:16', '0000-00-00 00:00:00', '{\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:20:16\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:20:16\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2d78fc6b-3c9b-467d-8098-fc607a4d07f7', '', '', '2023-02-23 18:20:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2023-02-23 18:54:57', '0000-00-00 00:00:00', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"blog-sidebar\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"shop-sidebar\": [\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"footer-four-widgets\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 21:52:57\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '96ab2d3e-6b22-48af-b26e-471261fa4395', '', '', '2023-02-23 18:54:57', '2023-02-23 21:54:57', '', 0, 'http://localhost/wordpress/?p=25', 0, 'customize_changeset', '', 0),
(26, 1, '2023-02-23 19:11:51', '2023-02-23 22:11:51', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"blog-sidebar\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"shop-sidebar\": [\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"footer-four-widgets\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 22:11:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cc97f2ce-0fbf-4887-9e21-07496031d5e2', '', '', '2023-02-23 19:11:51', '2023-02-23 22:11:51', '', 0, 'http://localhost/wordpress/2023/02/23/cc97f2ce-0fbf-4887-9e21-07496031d5e2/', 0, 'customize_changeset', '', 0),
(27, 1, '2023-02-23 19:20:04', '2023-02-23 22:20:04', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"blog-sidebar\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"shop-sidebar\": [\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"footer-one-widgets\": [],\n            \"footer-two-widgets\": [],\n            \"footer-three-widgets\": [],\n            \"footer-four-widgets\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-02-23 22:20:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'decf2ba4-85af-472c-8e3f-49f64218bf7c', '', '', '2023-02-23 19:20:04', '2023-02-23 22:20:04', '', 0, 'http://localhost/wordpress/2023/02/23/decf2ba4-85af-472c-8e3f-49f64218bf7c/', 0, 'customize_changeset', '', 0),
(28, 1, '2023-02-23 19:21:04', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-23 19:21:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2023-02-27 12:31:17', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:31:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-02-27 12:31:31', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:31:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2023-02-27 12:32:19', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:32:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-02-27 12:46:47', '2023-02-27 15:46:47', '', 'neve-child', '', 'publish', 'closed', 'closed', '', 'neve-child', '', '', '2023-02-27 12:46:47', '2023-02-27 15:46:47', '', 0, 'http://localhost/wordpress/2023/02/27/neve-child/', 0, 'custom_css', '', 0),
(33, 1, '2023-02-27 12:46:47', '2023-02-27 15:46:47', '', 'neve-child', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-02-27 12:46:47', '2023-02-27 15:46:47', '', 32, 'http://localhost/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-02-27 12:50:25', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:50:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-02-27 12:50:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:50:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2023-02-27 12:51:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 12:51:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 1, '2023-02-27 12:53:29', '2023-02-27 15:53:29', '', 'Leitura Agua', '', 'publish', 'closed', 'closed', '', 'fffff', '', '', '2023-02-27 16:03:00', '2023-02-27 19:03:00', '', 0, 'http://localhost/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 1, '2023-02-27 12:53:29', '2023-02-27 15:53:29', '', 'fffff', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-02-27 12:53:29', '2023-02-27 15:53:29', '', 37, 'http://localhost/wordpress/?p=38', 0, 'revision', '', 0),
(41, 1, '2023-02-27 13:32:31', '2023-02-27 16:32:31', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-02-27 13:32:31', '2023-02-27 16:32:31', '', 3, 'http://localhost/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-02-27 13:33:08', '2023-02-27 16:33:08', '', 'teste', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-02-27 13:33:08', '2023-02-27 16:33:08', '', 37, 'http://localhost/wordpress/?p=42', 0, 'revision', '', 0),
(45, 1, '2023-02-27 15:11:29', '2023-02-27 18:11:29', '', 'fffff', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-02-27 15:11:29', '2023-02-27 18:11:29', '', 37, 'http://localhost/wordpress/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-02-27 16:02:59', '2023-02-27 19:02:59', '', 'Leitura Agua', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2023-02-27 16:02:59', '2023-02-27 19:02:59', '', 37, 'http://localhost/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-02-27 16:03:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-02-27 16:03:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2023-02-27 16:03:33', '0000-00-00 00:00:00', '', 'Hidrometro', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-02-27 16:03:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2023-02-27 16:03:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-02-27 16:03:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=49', 0, 'page', '', 0),
(50, 1, '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 'Consumo de Agua', '', 'publish', 'closed', 'closed', '', 'consumo-de-agua', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/?p=50', 6, 'nav_menu_item', '', 0),
(51, 1, '2023-02-27 16:04:53', '2023-02-27 19:04:53', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2023-02-27 16:04:53', '2023-02-27 19:04:53', '', 0, 'http://localhost/wordpress/?p=51', 7, 'nav_menu_item', '', 0),
(52, 1, '2023-02-27 16:08:26', '2023-02-27 19:08:26', '', 'Graficos', '', 'publish', 'closed', 'closed', '', 'graficos', '', '', '2023-02-27 16:08:27', '2023-02-27 19:08:27', '', 0, 'http://localhost/wordpress/?page_id=52', 0, 'page', '', 0),
(53, 1, '2023-02-27 16:05:56', '2023-02-27 19:05:56', '', 'Graficos', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2023-02-27 16:05:56', '2023-02-27 19:05:56', '', 52, 'http://localhost/wordpress/?p=53', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(50, 2, 0),
(51, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'teste'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"42d593d86fd0ec8c60374776df3add4d9f5bd3893ef5c6eeebaa0609d8284495\";a:4:{s:10:\"expiration\";i:1677864627;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0\";s:5:\"login\";i:1677691827;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"editorMode\";s:6:\"visual\";s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:9:\"_modified\";s:24:\"2023-02-27T19:28:00.780Z\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'teste', '$P$BrJlxJfxD4kxVWMqzj4LrGD617tnxF1', 'teste', 'helioporto@stm.jus.br', 'http://localhost/wordpress', '2023-02-23 21:14:37', '', 0, 'teste');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
