-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 11:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zig`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria_fluxo_caixa`
--

CREATE TABLE `categoria_fluxo_caixa` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categoria_fluxo_caixa`
--

INSERT INTO `categoria_fluxo_caixa` (`id`, `descricao`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Padrao', '2022-10-08 04:49:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_cliente_tipo` int(11) NOT NULL,
  `id_cliente_segmento` int(11) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `cpf` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `id_empresa`, `id_cliente_tipo`, `id_cliente_segmento`, `nome`, `email`, `cnpj`, `cpf`, `telefone`, `celular`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 4, 'Caua Rabão', 'caua@email.com', '', '111.111.111-11', '(00) 0000-0000', '', '2023-10-19 14:37:49', '2023-10-19 14:37:49', NULL),
(2, 1, 1, 49, 'Claudio Cristoffer', 'claudio.do.pneu@email.com', '', '111.111.111-11', '(00) 0000-0000', '', '2023-10-19 11:41:48', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clientes_enderecos`
--

CREATE TABLE `clientes_enderecos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `id_cliente` int(11) NOT NULL DEFAULT 0,
  `cep` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `complemento` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes_enderecos`
--

INSERT INTO `clientes_enderecos` (`id`, `id_empresa`, `id_cliente`, `cep`, `endereco`, `bairro`, `cidade`, `estado`, `numero`, `complemento`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '79.200-000', 'Rua Bolivar Mendes', 'Vila Trindade', 'Aquidauana', 'MS', 60, '', '2023-10-19 11:42:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clientes_segmentos`
--

CREATE TABLE `clientes_segmentos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes_segmentos`
--

INSERT INTO `clientes_segmentos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Restaurante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Hamburgueria', '2020-05-28 14:28:08', '2020-05-28 14:28:09'),
(3, 'Pizzaria', '2020-05-28 14:28:52', '2020-05-28 14:28:53'),
(4, 'Outros...', '2020-06-02 04:00:26', '2020-06-02 04:00:27'),
(5, 'Arte e Antiguidades', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(6, 'Artigos Religiosos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(7, 'Assinaturas e Revistas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(8, 'Automóveis e Veículos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(9, 'Bebês e Cia', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(10, 'Blu-Ray', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(11, 'Brindes / Materiais Promocionais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(12, 'Brinquedos e Games', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(13, 'Casa e Decoração', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(14, 'CDs', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(15, 'Colecionáveis', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(16, 'Compras Coletivas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(17, 'Construção e Ferramentas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(18, 'Cosméticos e Perfumaria', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(19, 'Cursos e Educação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(20, 'Discos de Vinil', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(21, 'DVDs', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(22, 'Eletrodomésticos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(23, 'Eletrônicos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(24, 'Emissoras de Rádio', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(25, 'Emissoras de Televisão', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(26, 'Empregos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(27, 'Empresas de Telemarketing', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(28, 'Esporte e Lazer', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(29, 'Fitas K7 Gravadas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(30, 'Flores, Cestas e Presentes', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(31, 'Fotografia', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(32, 'HD-DVD', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(33, 'Igrejas / Templos / Instituições Religiosas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(34, 'Indústria, Comércio e Negócios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(35, 'Infláveis Promocionais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(36, 'Informática', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(37, 'Ingressos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(38, 'Instrumentos Musicais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(39, 'Joalheria', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(40, 'Lazer', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(41, 'LD', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(42, 'Livros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(43, 'MD', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(44, 'Moda e Acessórios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(45, 'Motéis', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(46, 'Música Digital', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(47, 'Natal', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(48, 'Negócios e Oportunidades', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(49, 'Outros Serviços', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(50, 'Outros Serviços de Avaliação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(51, 'Papelaria e Escritório', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(52, 'Páscoa', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(53, 'Pet Shop', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(54, 'Saúde', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(55, 'Serviço Advocaticios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(56, 'Serviço de Distribuição de Jornais / Revistas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(57, 'Serviços Administrativos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(58, 'Serviços Artísticos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(59, 'Serviços de Abatedouros / Matadouros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(60, 'Serviços de Aeroportos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(61, 'Serviços de Agências', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(62, 'Serviços de Aluguel / Locação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(63, 'Serviços de Armazenagem', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(64, 'Serviços de Assessorias', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(65, 'Serviços de Assistência Técnica / Instalações ', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(66, 'Serviços de Associações', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(67, 'Serviços de Bancos de Sangue', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(68, 'Serviços de Bibliotecas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(69, 'Serviços de Cartórios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(70, 'Serviços de Casas Lotéricas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(71, 'Serviços de Confecções', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(72, 'Serviços de Consórcios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(73, 'Serviços de Consultorias', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(74, 'Serviços de Cooperativas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(75, 'Serviços de Despachante', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(76, 'Serviços de Engenharia', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(77, 'Serviços de Estacionamentos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(78, 'Serviços de Estaleiros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(79, 'Serviços de Exportação / Importação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(80, 'Serviços de Geólogos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(81, 'Serviços de joalheiros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(82, 'Serviços de Leiloeiros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(83, 'Serviços de limpeza', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(84, 'Serviços de Loja de Conveniência', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(85, 'Serviços de Mão de Obra', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(86, 'Serviços de Órgão Públicos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(87, 'Serviços de Pesquisas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(88, 'Serviços de Portos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(89, 'Serviços de Saúde / Bem Estar', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(90, 'Serviços de Seguradoras', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(91, 'Serviços de Segurança', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(92, 'Serviços de Sinalização', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(93, 'Serviços de Sindicatos / Federações', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(94, 'Serviços de Traduções', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(95, 'Serviços de Transporte', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(96, 'Serviços de Utilidade Pública', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(97, 'Serviços em Agricultura / Pecuária / Piscicultura', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(98, 'Serviços em Alimentação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(99, 'Serviços em Arte', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(100, 'Serviços em Cine / Foto / Som', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(101, 'Serviços em Comunicação', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(102, 'Serviços em Construção', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(103, 'Serviços em Ecologia / Meio Ambiente', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(104, 'Serviços em Eletroeletrônica / Metal Mecânica', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(105, 'Serviços em Festas / Eventos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(106, 'Serviços em Informática', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(107, 'Serviços em Internet', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(108, 'Serviços em Jóias / Relógios / Óticas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(109, 'Serviços em Telefonia', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(110, 'Serviços em Veículos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(111, 'Serviços Esotéricos / Místicos', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(112, 'Serviços Financeiros', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(113, 'Serviços Funerários', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(114, 'Serviços Gerais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(115, 'Serviços Gráficos / Editoriais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(116, 'Serviços para Animais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(117, 'Serviços para Deficientes', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(118, 'Serviços para Escritórios', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(119, 'Serviços para Roupas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(120, 'Serviços Socias / Assistenciais', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(121, 'Sex Shop', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(122, 'Shopping Centers', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(123, 'Tabacaria', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(124, 'Tarifas Bancárias', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(125, 'Tarifas Telefônicas', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(126, 'Telefonia', '2021-01-11 20:10:15', '0000-00-00 00:00:00'),
(127, 'Turismo', '2021-01-11 20:10:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `clientes_tipos`
--

CREATE TABLE `clientes_tipos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes_tipos`
--

INSERT INTO `clientes_tipos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Pessoa Fisica', '2020-05-28 14:24:51', '2020-05-28 14:24:52'),
(2, 'Pessoa Juridica', '2020-05-28 14:25:05', '2020-05-28 14:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `config_pdv`
--

CREATE TABLE `config_pdv` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_tipo_pdv` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_pdv`
--

INSERT INTO `config_pdv` (`id`, `id_empresa`, `id_tipo_pdv`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2023-10-17 14:21:45', '2023-10-17 14:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `id_segmento` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `email`, `telefone`, `celular`, `id_segmento`, `created_at`, `updated_at`) VALUES
(1, 'Conveniencia Cristo Rei', 'conv.cristorei@gmail.com', '(67) 9982-9102', '(67) 99829-1021', 84, '2023-10-17 12:54:41', '2023-10-17 12:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `fiadores`
--

CREATE TABLE `fiadores` (
  `id` int(5) NOT NULL,
  `cliente_id` varchar(255) DEFAULT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  `checkbox` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fluxo_caixa`
--

CREATE TABLE `fluxo_caixa` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(11) DEFAULT NULL,
  `descricao` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `tipo_movimento` int(11) DEFAULT NULL COMMENT '0 = Saída, 1 = Entrada',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_acessos`
--

CREATE TABLE `log_acessos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL DEFAULT 0,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_acessos`
--

INSERT INTO `log_acessos` (`id`, `id_usuario`, `id_empresa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1006, 1, 1, '2022-10-08 06:15:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 1, 1, '2022-10-09 03:05:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 1, 1, '2022-10-09 03:11:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 1, 1, '2022-10-09 03:14:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 1, 1, '2022-10-09 03:16:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 1, 1, '2022-10-09 03:19:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 1, 1, '2022-10-09 03:19:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 1, 1, '2022-10-09 03:21:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 1, 1, '2022-10-09 03:24:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 1, 1, '2022-10-09 03:25:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 1, 1, '2022-10-09 03:27:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 1, 1, '2022-10-09 03:30:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 1, 1, '2022-10-09 03:30:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 1, 1, '2022-10-09 03:31:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 1, 1, '2022-10-09 03:31:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 1, 1, '2022-10-09 03:31:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 1, 1, '2022-10-09 03:32:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 1, 1, '2022-10-09 03:33:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 1, 1, '2022-10-09 03:33:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 1, 1, '2022-10-09 03:33:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 1, 1, '2022-10-09 03:34:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 1, 1, '2022-10-09 03:38:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 1, 1, '2022-10-09 03:38:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 1, 1, '2022-10-09 03:38:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 1, 1, '2022-10-09 03:44:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 1, 1, '2022-10-09 03:44:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, 1, 1, '2022-10-09 03:44:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, 1, 1, '2022-10-09 03:48:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, 1, 1, '2022-10-09 03:49:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, 1, 1, '2022-10-10 03:24:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, 1, 1, '2022-10-12 01:43:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, 1, 1, '2022-10-15 04:02:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, 1, 1, '2022-10-15 04:22:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, 1, 1, '2022-10-15 14:24:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, 1, 1, '2022-10-27 01:00:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, 1, 1, '2022-11-05 00:43:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, 1, 1, '2022-11-05 06:14:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, 1, 1, '2022-11-05 06:14:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, 1, 1, '2022-11-05 06:31:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, 1, 1, '2022-11-06 22:03:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, 1, 1, '2022-11-06 22:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, 1, 1, '2022-11-06 22:05:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, 1, 1, '2022-11-06 22:05:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, 1, 1, '2022-11-06 22:06:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, 1, 1, '2022-11-06 22:07:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, 1, 1, '2022-11-06 22:07:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1052, 1, 1, '2022-11-06 22:10:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1053, 1, 1, '2022-11-06 22:11:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1054, 1, 1, '2022-11-06 22:15:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1055, 1, 1, '2022-11-06 22:16:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1056, 1, 1, '2022-11-06 22:16:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1057, 1, 1, '2022-11-06 22:17:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1058, 1, 1, '2022-11-07 01:11:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1059, 1, 1, '2022-11-08 00:26:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1060, 1, 1, '2022-11-10 19:20:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1061, 1, 1, '2022-11-11 13:48:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1062, 1, 1, '2023-10-17 11:31:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063, 81, 1, '2023-10-17 12:50:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1064, 1, 1, '2023-10-17 14:14:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1065, 81, 1, '2023-10-17 15:22:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1066, 83, 1, '2023-10-17 15:22:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1067, 83, 1, '2023-10-18 21:57:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1068, 83, 1, '2023-10-19 14:59:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1069, 82, 1, '2023-10-19 15:02:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1070, 82, 1, '2023-10-23 10:51:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1071, 82, 1, '2023-11-04 15:06:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `meios_pagamentos`
--

CREATE TABLE `meios_pagamentos` (
  `id` int(11) NOT NULL,
  `legenda` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meios_pagamentos`
--

INSERT INTO `meios_pagamentos` (`id`, `legenda`, `created_at`, `updated_at`) VALUES
(1, 'Dinheiro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Crédito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Débito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Pix', '2021-12-27 19:06:48', '0000-00-00 00:00:00'),
(6, 'Fiado', '2021-12-27 19:06:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(33, '1593605143', 'cria geral', '2022-11-02 04:33:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perfis`
--

CREATE TABLE `perfis` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perfis`
--

INSERT INTO `perfis` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '2020-06-21 17:00:15', '0000-00-00 00:00:00'),
(2, 'Administrador', '2020-07-10 13:07:34', '0000-00-00 00:00:00'),
(4, 'Vendedor', '2020-04-25 04:53:32', '0000-00-00 00:00:00'),
(5, 'Gerente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `preco` double NOT NULL DEFAULT 0,
  `descricao` text DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `ativar_quantidade` int(11) NOT NULL DEFAULT 0 COMMENT 'SIM = 1, NÃO = 0',
  `quantidade` int(11) DEFAULT 0,
  `mostrar_em_vendas` int(11) DEFAULT 1 COMMENT 'SIM =1, NÃO = 0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recuperacao_de_senha`
--

CREATE TABLE `recuperacao_de_senha` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recuperacao_de_senha`
--

INSERT INTO `recuperacao_de_senha` (`id`, `user_id`, `hash`, `created_at`, `updated_at`) VALUES
(26, 1, 'NGM1ZTJmYWQ1MTk3MTYyZDE0NGQ2MmUwNjg1MjExNWYyZmQ0ZGYwNw==', '2022-10-10 03:23:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sexos`
--

CREATE TABLE `sexos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sexos`
--

INSERT INTO `sexos` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Masculino', '2020-02-21 18:08:58', '0000-00-00 00:00:00'),
(2, 'Feminino', '2020-02-21 18:09:09', '0000-00-00 00:00:00'),
(3, 'Não Binario', '2020-02-21 18:09:09', '0000-00-00 00:00:00'),
(4, 'Transsexual', '2023-10-17 12:47:37', '0000-00-00 00:00:00'),
(5, 'Carro de Formula 1', '2023-10-17 12:47:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tipos_pdv`
--

CREATE TABLE `tipos_pdv` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipos_pdv`
--

INSERT INTO `tipos_pdv` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Padrão', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Diferencial', '2020-05-23 21:02:09', '2020-05-23 21:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL DEFAULT 0,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  `remember_expire_date` timestamp NULL DEFAULT NULL,
  `id_sexo` int(11) DEFAULT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_empresa`, `nome`, `email`, `password`, `remember_token`, `remember_expire_date`, `id_sexo`, `id_perfil`, `imagem`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Felipe', 'ifms.linux@gmail.com', 'd59a1e7ed7c72d0be4224780291d998b17aa6573', NULL, NULL, 1, 1, 'public/imagem/perfil_usuarios/1697489019.png', 1, '2023-10-19 15:36:22', '2023-10-19 14:58:47', '2023-10-17 12:49:32'),
(81, 1, 'Adriana Xavier', 'adriana@cristorei', '34565caa4470dd2089c8ffc2d56a91818efd4dd8', NULL, NULL, 2, 1, 'public/imagem/perfil_usuarios/adriana.png', 1, '2023-10-19 15:36:13', '2023-10-17 15:22:29', '0000-00-00 00:00:00'),
(82, 1, 'Henrique', 'henrique@cristorei', '34565caa4470dd2089c8ffc2d56a91818efd4dd8', NULL, NULL, 1, 1, 'public/imagem/perfil_usuarios/henrique.png', 1, '2023-11-04 15:07:33', '2023-11-04 15:07:33', '0000-00-00 00:00:00'),
(83, 1, 'Caixa', 'caixa@cristorei', '34565caa4470dd2089c8ffc2d56a91818efd4dd8', NULL, NULL, 1, 4, 'public/imagem/perfil_usuarios/caixa.png', 1, '2023-10-19 15:02:00', '2023-10-19 15:02:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_meio_pagamento` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `preco` double DEFAULT 0,
  `quantidade` int(11) DEFAULT NULL,
  `valor` double NOT NULL DEFAULT 0,
  `valor_recebido` double DEFAULT NULL COMMENT 'Este valor é preenchido somente quando a opção de pagamento for dinheiro',
  `troco` double DEFAULT NULL COMMENT 'Este campo é preenchido quando houver troco durante a venda',
  `data_compensacao` date DEFAULT NULL,
  `codigo_venda` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria_fluxo_caixa`
--
ALTER TABLE `categoria_fluxo_caixa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clientes_tipos_clientes` (`id_cliente_tipo`),
  ADD KEY `FK_clientes_clientes_segmentos` (`id_cliente_segmento`),
  ADD KEY `FK_clientes_empresas` (`id_empresa`);

--
-- Indexes for table `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_clientes_enderecos_empresas` (`id_empresa`),
  ADD KEY `FK_clientes_enderecos_clientes` (`id_cliente`);

--
-- Indexes for table `clientes_segmentos`
--
ALTER TABLE `clientes_segmentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes_tipos`
--
ALTER TABLE `clientes_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_pdv`
--
ALTER TABLE `config_pdv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_config_pdv_clientes` (`id_empresa`),
  ADD KEY `FK_config_pdv_tipo_pdv` (`id_tipo_pdv`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_empresas_clientes_segmentos` (`id_segmento`);

--
-- Indexes for table `fiadores`
--
ALTER TABLE `fiadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fluxo_caixa`
--
ALTER TABLE `fluxo_caixa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fluxo_caixa_empresas` (`id_empresa`),
  ADD KEY `FK_fluxo_caixa_categoria_fluxo_caixa` (`id_categoria`);

--
-- Indexes for table `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_log_usuarios` (`id_usuario`),
  ADD KEY `FK_log_clientes` (`id_empresa`);

--
-- Indexes for table `meios_pagamentos`
--
ALTER TABLE `meios_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perfis`
--
ALTER TABLE `perfis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_produtos_clientes` (`id_empresa`);

--
-- Indexes for table `recuperacao_de_senha`
--
ALTER TABLE `recuperacao_de_senha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipos_pdv`
--
ALTER TABLE `tipos_pdv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_usuarios_sexo` (`id_sexo`),
  ADD KEY `FK_usuarios_perfis` (`id_perfil`),
  ADD KEY `FK_usuarios_clientes` (`id_empresa`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_vendas_meios_de_pagamento` (`id_meio_pagamento`),
  ADD KEY `FK_vendas_usuarios` (`id_usuario`),
  ADD KEY `FK_vendas_clientes` (`id_empresa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria_fluxo_caixa`
--
ALTER TABLE `categoria_fluxo_caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clientes_segmentos`
--
ALTER TABLE `clientes_segmentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `clientes_tipos`
--
ALTER TABLE `clientes_tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_pdv`
--
ALTER TABLE `config_pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fiadores`
--
ALTER TABLE `fiadores`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fluxo_caixa`
--
ALTER TABLE `fluxo_caixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `log_acessos`
--
ALTER TABLE `log_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1072;

--
-- AUTO_INCREMENT for table `meios_pagamentos`
--
ALTER TABLE `meios_pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `perfis`
--
ALTER TABLE `perfis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `recuperacao_de_senha`
--
ALTER TABLE `recuperacao_de_senha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tipos_pdv`
--
ALTER TABLE `tipos_pdv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_clientes_clientes_segmentos` FOREIGN KEY (`id_cliente_segmento`) REFERENCES `clientes_segmentos` (`id`),
  ADD CONSTRAINT `FK_clientes_empresas` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_clientes_tipos_clientes` FOREIGN KEY (`id_cliente_tipo`) REFERENCES `clientes_tipos` (`id`);

--
-- Constraints for table `clientes_enderecos`
--
ALTER TABLE `clientes_enderecos`
  ADD CONSTRAINT `FK_clientes_enderecos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `FK_clientes_enderecos_empresas` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `config_pdv`
--
ALTER TABLE `config_pdv`
  ADD CONSTRAINT `FK_config_pdv_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_config_pdv_tipo_pdv` FOREIGN KEY (`id_tipo_pdv`) REFERENCES `tipos_pdv` (`id`);

--
-- Constraints for table `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `FK_empresas_clientes_segmentos` FOREIGN KEY (`id_segmento`) REFERENCES `clientes_segmentos` (`id`);

--
-- Constraints for table `fluxo_caixa`
--
ALTER TABLE `fluxo_caixa`
  ADD CONSTRAINT `FK_fluxo_caixa_categoria_fluxo_caixa` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_fluxo_caixa` (`id`),
  ADD CONSTRAINT `FK_fluxo_caixa_empresas` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `log_acessos`
--
ALTER TABLE `log_acessos`
  ADD CONSTRAINT `FK_log_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_log_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_produtos_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_usuarios_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_usuarios_perfis` FOREIGN KEY (`id_perfil`) REFERENCES `perfis` (`id`),
  ADD CONSTRAINT `FK_usuarios_sexo` FOREIGN KEY (`id_sexo`) REFERENCES `sexos` (`id`);

--
-- Constraints for table `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `FK_vendas_clientes` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `FK_vendas_meios_de_pagamento` FOREIGN KEY (`id_meio_pagamento`) REFERENCES `meios_pagamentos` (`id`),
  ADD CONSTRAINT `FK_vendas_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
