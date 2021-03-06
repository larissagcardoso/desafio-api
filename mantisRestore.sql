-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2020 às 02:08
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mantis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_api_token_table`
--

CREATE TABLE `mantis_api_token_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_used` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_api_token_table`
--

INSERT INTO `mantis_api_token_table` (`id`, `user_id`, `name`, `hash`, `date_created`, `date_used`) VALUES
(4, 2, 'TokenTesteApi', 'ac002b6cd3486aa4d34bc484e4ac46dd4b43104beff3efce9f752614d6e3e5ac', 1575893951, 1),
(7, 1, 'Teste', '1900cab04569adb4194ead94daf9e52d0d0db5ad4feae436dd13dd00085d2b3b', 1580590848, 1580605123);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bugnote_table`
--

CREATE TABLE `mantis_bugnote_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reporter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bugnote_text_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `note_type` int(11) DEFAULT 0,
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_modified` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bugnote_table`
--

INSERT INTO `mantis_bugnote_table` (`id`, `bug_id`, `reporter_id`, `bugnote_text_id`, `view_state`, `note_type`, `note_attr`, `time_tracking`, `last_modified`, `date_submitted`) VALUES
(8, 18, 1, 8, 10, 0, '', 0, 1576851068, 1576851068),
(9, 18, 1, 9, 10, 0, '', 0, 1580597168, 1576851069),
(10, 18, 1, 10, 10, 0, '', 0, 1580597168, 1576851070),
(11, 18, 1, 11, 10, 0, '', 0, 1580597168, 1576851070),
(12, 18, 1, 12, 10, 0, '', 0, 1576855112, 1576855112),
(13, 18, 1, 13, 10, 0, '', 0, 1580597169, 1576855113),
(14, 18, 1, 14, 10, 0, '', 0, 1580597169, 1576855113),
(16, 18, 1, 16, 10, 0, '', 0, 1576855563, 1576855563),
(17, 18, 1, 17, 10, 0, '', 0, 1580597169, 1576855563),
(18, 18, 1, 18, 10, 0, '', 0, 1580597169, 1576855564),
(20, 18, 1, 20, 10, 0, '', 0, 1576866131, 1576866131),
(21, 18, 1, 21, 10, 0, '', 0, 1580597169, 1576866131),
(22, 18, 1, 22, 10, 0, '', 0, 1580597169, 1576866131),
(24, 18, 1, 24, 10, 0, '', 0, 1576869837, 1576869837),
(25, 18, 1, 25, 10, 0, '', 0, 1580597169, 1576869838),
(26, 18, 1, 26, 10, 0, '', 0, 1580597169, 1576869838),
(28, 18, 1, 28, 10, 0, '', 0, 1576870339, 1576870339),
(29, 18, 1, 29, 10, 0, '', 0, 1580597169, 1576870339),
(30, 18, 1, 30, 10, 0, '', 0, 1580597169, 1576870340),
(32, 18, 1, 32, 10, 0, '', 0, 1576870511, 1576870511),
(33, 18, 1, 33, 10, 0, '', 0, 1580597169, 1576870511),
(34, 18, 1, 34, 10, 0, '', 0, 1580597169, 1576870512),
(64, 18, 1, 64, 10, 0, '', 0, 1579281763, 1579281763),
(65, 18, 1, 65, 10, 0, '', 0, 1580597170, 1579281763),
(66, 18, 1, 66, 10, 0, '', 0, 1580597170, 1579281763),
(68, 18, 1, 68, 10, 0, '', 0, 1579281921, 1579281921),
(69, 18, 1, 69, 10, 0, '', 0, 1580597170, 1579281921),
(70, 18, 1, 70, 10, 0, '', 0, 1580597170, 1579281922),
(72, 18, 1, 72, 10, 0, '', 0, 1579281962, 1579281962),
(73, 18, 1, 73, 10, 0, '', 0, 1580597170, 1579281963),
(74, 18, 1, 74, 10, 0, '', 0, 1580597170, 1579281963),
(76, 18, 1, 76, 10, 0, '', 0, 1579284761, 1579284761),
(77, 18, 1, 77, 10, 0, '', 0, 1580597170, 1579284761),
(78, 18, 1, 78, 10, 0, '', 0, 1580597170, 1579284762),
(80, 18, 1, 80, 10, 0, '', 0, 1579285038, 1579285038),
(81, 18, 1, 81, 10, 0, '', 0, 1580597170, 1579285039),
(82, 18, 1, 82, 10, 0, '', 0, 1580597170, 1579285039),
(84, 18, 1, 84, 10, 0, '', 0, 1579285086, 1579285086),
(85, 18, 1, 85, 10, 0, '', 0, 1580597170, 1579285086),
(86, 18, 1, 86, 10, 0, '', 0, 1580597170, 1579285087),
(88, 18, 1, 88, 10, 0, '', 0, 1579784436, 1579784436),
(89, 18, 1, 89, 10, 0, '', 0, 1580597170, 1579784436),
(90, 18, 1, 90, 10, 0, '', 0, 1580597170, 1579784436),
(92, 18, 1, 92, 10, 0, '', 0, 1579784529, 1579784529),
(93, 18, 1, 93, 10, 0, '', 0, 1580597170, 1579784530),
(94, 18, 1, 94, 10, 0, '', 0, 1580597170, 1579784530),
(96, 18, 1, 96, 10, 0, '', 0, 1579785045, 1579785045),
(97, 18, 1, 97, 10, 0, '', 0, 1580597170, 1579785046),
(98, 18, 1, 98, 10, 0, '', 0, 1580597171, 1579785046),
(100, 18, 1, 100, 10, 0, '', 0, 1579785147, 1579785147),
(101, 18, 1, 101, 10, 0, '', 0, 1580597171, 1579785148),
(102, 18, 1, 102, 10, 0, '', 0, 1580597171, 1579785148),
(104, 18, 1, 104, 10, 0, '', 0, 1579785310, 1579785310),
(105, 18, 1, 105, 10, 0, '', 0, 1580597171, 1579785310),
(106, 18, 1, 106, 10, 0, '', 0, 1580597171, 1579785311),
(108, 18, 1, 108, 10, 0, '', 0, 1579796109, 1579796109),
(109, 18, 1, 109, 10, 0, '', 0, 1580597171, 1579796110),
(110, 18, 1, 110, 10, 0, '', 0, 1580597171, 1579796110),
(112, 18, 1, 112, 10, 0, '', 0, 1580579385, 1580579385),
(113, 18, 1, 113, 10, 0, '', 0, 1580597171, 1580579386),
(114, 18, 1, 114, 10, 0, '', 0, 1580597171, 1580579386),
(116, 18, 1, 116, 10, 0, '', 0, 1580579803, 1580579803),
(117, 18, 1, 117, 10, 0, '', 0, 1580597171, 1580579803),
(118, 18, 1, 118, 10, 0, '', 0, 1580597171, 1580579804),
(120, 18, 1, 120, 10, 0, '', 0, 1580588096, 1580588096),
(121, 18, 1, 121, 10, 0, '', 0, 1580597171, 1580588096),
(122, 18, 1, 122, 10, 0, '', 0, 1580597171, 1580588097),
(124, 18, 1, 124, 10, 0, '', 0, 1580596827, 1580596827),
(125, 18, 1, 125, 10, 0, '', 0, 1580597171, 1580596827),
(126, 18, 1, 126, 10, 0, '', 0, 1580597171, 1580596828),
(128, 18, 1, 128, 10, 0, '', 0, 1580597173, 1580597173),
(129, 18, 1, 129, 10, 0, '', 0, 1580597173, 1580597173),
(130, 18, 1, 130, 10, 0, '', 0, 1580597174, 1580597174),
(132, 56, 1, 132, 10, 0, '', 0, 1580605092, 1580605092),
(133, 56, 1, 133, 10, 0, '', 0, 1580605093, 1580605093),
(134, 56, 1, 134, 10, 0, '', 0, 1580605093, 1580605093);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bugnote_text_table`
--

CREATE TABLE `mantis_bugnote_text_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bugnote_text_table`
--

INSERT INTO `mantis_bugnote_text_table` (`id`, `note`) VALUES
(8, 'Data Driven Providers 1'),
(9, 'Data Driven Providers 2'),
(10, 'Data Driven Providers 3'),
(11, 'Data Driven Providers 4'),
(12, 'Data Driven Providers 1'),
(13, 'Data Driven Providers 2'),
(14, 'Data Driven Providers 3'),
(16, 'Data Driven Providers 1'),
(17, 'Data Driven Providers 2'),
(18, 'Data Driven Providers 3'),
(20, 'Data Driven Providers 1'),
(21, 'Data Driven Providers 2'),
(22, 'Data Driven Providers 3'),
(24, 'Data Driven Providers 1'),
(25, 'Data Driven Providers 2'),
(26, 'Data Driven Providers 3'),
(28, 'Data Driven Providers 1'),
(29, 'Data Driven Providers 2'),
(30, 'Data Driven Providers 3'),
(32, 'Data Driven Providers 1'),
(33, 'Data Driven Providers 2'),
(34, 'Data Driven Providers 3'),
(64, 'Data Driven Providers 1'),
(65, 'Data Driven Providers 2'),
(66, 'Data Driven Providers 3'),
(68, 'Data Driven Providers 1'),
(69, 'Data Driven Providers 2'),
(70, 'Data Driven Providers 3'),
(72, 'Data Driven Providers 1'),
(73, 'Data Driven Providers 2'),
(74, 'Data Driven Providers 3'),
(76, 'Data Driven Providers 1'),
(77, 'Data Driven Providers 2'),
(78, 'Data Driven Providers 3'),
(80, 'Data Driven Providers 1'),
(81, 'Data Driven Providers 2'),
(82, 'Data Driven Providers 3'),
(84, 'Data Driven Providers 1'),
(85, 'Data Driven Providers 2'),
(86, 'Data Driven Providers 3'),
(88, 'Data Driven Providers 1'),
(89, 'Data Driven Providers 2'),
(90, 'Data Driven Providers 3'),
(92, 'Data Driven Providers 1'),
(93, 'Data Driven Providers 2'),
(94, 'Data Driven Providers 3'),
(96, 'Data Driven Providers 1'),
(97, 'Data Driven Providers 2'),
(98, 'Data Driven Providers 3'),
(100, 'Data Driven Providers 1'),
(101, 'Data Driven Providers 2'),
(102, 'Data Driven Providers 3'),
(104, 'Data Driven Providers 1'),
(105, 'Data Driven Providers 2'),
(106, 'Data Driven Providers 3'),
(108, 'Data Driven Providers 1'),
(109, 'Data Driven Providers 2'),
(110, 'Data Driven Providers 3'),
(112, 'Data Driven Providers 1'),
(113, 'Data Driven Providers 2'),
(114, 'Data Driven Providers 3'),
(116, 'Data Driven Providers 1'),
(117, 'Data Driven Providers 2'),
(118, 'Data Driven Providers 3'),
(120, 'Data Driven Providers 1'),
(121, 'Data Driven Providers 2'),
(122, 'Data Driven Providers 3'),
(124, 'Data Driven Providers 1'),
(125, 'Data Driven Providers 2'),
(126, 'Data Driven Providers 3'),
(128, 'Data Driven Providers 1'),
(129, 'Data Driven Providers 2'),
(130, 'Data Driven Providers 3'),
(132, 'Data Driven Providers 1'),
(133, 'Data Driven Providers 2'),
(134, 'Data Driven Providers 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_file_table`
--

CREATE TABLE `mantis_bug_file_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob DEFAULT NULL,
  `date_added` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_history_table`
--

CREATE TABLE `mantis_bug_history_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `date_modified` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_history_table`
--

INSERT INTO `mantis_bug_history_table` (`id`, `user_id`, `bug_id`, `field_name`, `old_value`, `new_value`, `type`, `date_modified`) VALUES
(58, 1, 13, '', '', '', 1, 1576783454),
(59, 1, 13, 'priority', '30', '0', 0, 1576783519),
(60, 1, 13, 'summary', 'teste', 'Desafio Testes APIQV', 0, 1576783519),
(61, 1, 13, '', '0000005', '', 2, 1576783640),
(62, 1, 13, '', '0000005', '', 4, 1576783958),
(64, 1, 15, '', '', '', 1, 1576784076),
(66, 1, 17, '', '', '', 1, 1576784159),
(67, 1, 18, '', '', '', 1, 1576784430),
(70, 1, 18, 'priority', '30', '0', 0, 1576784472),
(71, 1, 18, 'summary', 'TestesAutomatizadosApi', 'Desafio Testes APINE', 0, 1576784472),
(72, 1, 18, '', '0000006', '', 2, 1576784474),
(74, 1, 18, '', '0000006', '', 4, 1576784475),
(77, 1, 18, '', '1', '', 12, 1576784477),
(78, 1, 18, 'summary', 'Desafio Testes APINE', 'Desafio Testes APICM', 0, 1576849681),
(79, 1, 18, '', '0000007', '', 2, 1576849683),
(81, 1, 18, '', '0000007', '', 4, 1576849684),
(84, 1, 18, '', '0000008', '', 2, 1576851069),
(85, 1, 18, '', '0000009', '', 2, 1576851070),
(86, 1, 18, '', '0000010', '', 2, 1576851070),
(87, 1, 18, '', '0000011', '', 2, 1576851070),
(88, 1, 18, 'summary', 'Desafio Testes APICM', 'Desafio Testes APIYR', 0, 1576855111),
(89, 1, 18, '', '0000012', '', 2, 1576855113),
(90, 1, 18, '', '0000013', '', 2, 1576855113),
(91, 1, 18, '', '0000014', '', 2, 1576855113),
(92, 1, 18, '', '0000015', '', 2, 1576855114),
(94, 1, 18, '', '0000015', '', 4, 1576855115),
(97, 1, 18, 'summary', 'Desafio Testes APIYR', 'Desafio Testes APIGC', 0, 1576855562),
(98, 1, 18, '', '0000016', '', 2, 1576855563),
(99, 1, 18, '', '0000017', '', 2, 1576855564),
(100, 1, 18, '', '0000018', '', 2, 1576855564),
(101, 1, 18, '', '0000019', '', 2, 1576855564),
(103, 1, 18, '', '0000019', '', 4, 1576855566),
(106, 1, 18, 'summary', 'Desafio Testes APIGC', 'Desafio Testes APIUX', 0, 1576866129),
(107, 1, 18, '', '0000020', '', 2, 1576866131),
(108, 1, 18, '', '0000021', '', 2, 1576866131),
(109, 1, 18, '', '0000022', '', 2, 1576866131),
(110, 1, 18, '', '0000023', '', 2, 1576866132),
(112, 1, 18, '', '0000023', '', 4, 1576866133),
(117, 1, 18, 'summary', 'Desafio Testes APIUX', 'Desafio Testes APIFK', 0, 1576869836),
(118, 1, 18, '', '0000024', '', 2, 1576869837),
(119, 1, 18, '', '0000025', '', 2, 1576869838),
(120, 1, 18, '', '0000026', '', 2, 1576869839),
(121, 1, 18, '', '0000027', '', 2, 1576869839),
(123, 1, 18, '', '0000027', '', 4, 1576869841),
(126, 1, 18, 'summary', 'Desafio Testes APIFK', 'Desafio Testes APIZC', 0, 1576870338),
(127, 1, 18, '', '0000028', '', 2, 1576870339),
(128, 1, 18, '', '0000029', '', 2, 1576870340),
(129, 1, 18, '', '0000030', '', 2, 1576870340),
(130, 1, 18, '', '0000031', '', 2, 1576870340),
(132, 1, 18, '', '0000031', '', 4, 1576870342),
(135, 1, 18, 'summary', 'Desafio Testes APIZC', 'Desafio Testes APIWN', 0, 1576870510),
(136, 1, 18, '', '0000032', '', 2, 1576870511),
(137, 1, 18, '', '0000033', '', 2, 1576870512),
(138, 1, 18, '', '0000034', '', 2, 1576870512),
(139, 1, 18, '', '0000035', '', 2, 1576870512),
(141, 1, 18, '', '0000035', '', 4, 1576870515),
(212, 1, 18, 'summary', 'Desafio Testes APIWN', 'Desafio Testes APILT', 0, 1579281762),
(213, 1, 18, '', '0000064', '', 2, 1579281763),
(214, 1, 18, '', '0000065', '', 2, 1579281763),
(215, 1, 18, '', '0000066', '', 2, 1579281764),
(216, 1, 18, '', '0000067', '', 2, 1579281764),
(218, 1, 18, '', '0000067', '', 4, 1579281766),
(221, 1, 18, 'summary', 'Desafio Testes APILT', 'Desafio Testes APIYP', 0, 1579281920),
(222, 1, 18, '', '0000068', '', 2, 1579281921),
(223, 1, 18, '', '0000069', '', 2, 1579281922),
(224, 1, 18, '', '0000070', '', 2, 1579281922),
(225, 1, 18, '', '0000071', '', 2, 1579281922),
(227, 1, 18, '', '0000071', '', 4, 1579281924),
(230, 1, 18, 'summary', 'Desafio Testes APIYP', 'Desafio Testes APIOV', 0, 1579281962),
(231, 1, 18, '', '0000072', '', 2, 1579281962),
(232, 1, 18, '', '0000073', '', 2, 1579281963),
(233, 1, 18, '', '0000074', '', 2, 1579281963),
(234, 1, 18, '', '0000075', '', 2, 1579281964),
(236, 1, 18, '', '0000075', '', 4, 1579281966),
(239, 1, 18, 'summary', 'Desafio Testes APIOV', 'Desafio Testes APIEQ', 0, 1579284760),
(240, 1, 18, '', '0000076', '', 2, 1579284761),
(241, 1, 18, '', '0000077', '', 2, 1579284761),
(242, 1, 18, '', '0000078', '', 2, 1579284762),
(243, 1, 18, '', '0000079', '', 2, 1579284762),
(245, 1, 18, '', '0000079', '', 4, 1579284764),
(248, 1, 18, 'summary', 'Desafio Testes APIEQ', 'Desafio Testes APIFS', 0, 1579285038),
(249, 1, 18, '', '0000080', '', 2, 1579285039),
(250, 1, 18, '', '0000081', '', 2, 1579285039),
(251, 1, 18, '', '0000082', '', 2, 1579285039),
(252, 1, 18, '', '0000083', '', 2, 1579285040),
(254, 1, 18, '', '0000083', '', 4, 1579285041),
(257, 1, 18, 'summary', 'Desafio Testes APIFS', 'Desafio Testes APINB', 0, 1579285086),
(258, 1, 18, '', '0000084', '', 2, 1579285086),
(259, 1, 18, '', '0000085', '', 2, 1579285087),
(260, 1, 18, '', '0000086', '', 2, 1579285087),
(261, 1, 18, '', '0000087', '', 2, 1579285088),
(263, 1, 18, '', '0000087', '', 4, 1579285089),
(266, 1, 18, 'summary', 'Desafio Testes APINB', 'Desafio Testes APIZP', 0, 1579784435),
(267, 1, 18, '', '0000088', '', 2, 1579784436),
(268, 1, 18, '', '0000089', '', 2, 1579784436),
(269, 1, 18, '', '0000090', '', 2, 1579784437),
(270, 1, 18, '', '0000091', '', 2, 1579784437),
(272, 1, 18, '', '0000091', '', 4, 1579784440),
(275, 1, 18, 'summary', 'Desafio Testes APIZP', 'Desafio Testes APIYE', 0, 1579784529),
(276, 1, 18, '', '0000092', '', 2, 1579784530),
(277, 1, 18, '', '0000093', '', 2, 1579784530),
(278, 1, 18, '', '0000094', '', 2, 1579784530),
(279, 1, 18, '', '0000095', '', 2, 1579784531),
(281, 1, 18, '', '0000095', '', 4, 1579784533),
(284, 1, 18, 'summary', 'Desafio Testes APIYE', 'Desafio Testes APIMV', 0, 1579785045),
(285, 1, 18, '', '0000096', '', 2, 1579785045),
(286, 1, 18, '', '0000097', '', 2, 1579785046),
(287, 1, 18, '', '0000098', '', 2, 1579785046),
(288, 1, 18, '', '0000099', '', 2, 1579785047),
(290, 1, 18, '', '0000099', '', 4, 1579785048),
(293, 1, 18, 'summary', 'Desafio Testes APIMV', 'Desafio Testes APIEZ', 0, 1579785146),
(294, 1, 18, '', '0000100', '', 2, 1579785147),
(295, 1, 18, '', '0000101', '', 2, 1579785148),
(296, 1, 18, '', '0000102', '', 2, 1579785148),
(297, 1, 18, '', '0000103', '', 2, 1579785149),
(299, 1, 18, '', '0000103', '', 4, 1579785151),
(302, 1, 18, 'summary', 'Desafio Testes APIEZ', 'Desafio Testes APIDJ', 0, 1579785309),
(303, 1, 18, '', '0000104', '', 2, 1579785310),
(304, 1, 18, '', '0000105', '', 2, 1579785310),
(305, 1, 18, '', '0000106', '', 2, 1579785311),
(306, 1, 18, '', '0000107', '', 2, 1579785311),
(308, 1, 18, '', '0000107', '', 4, 1579785314),
(311, 1, 18, 'summary', 'Desafio Testes APIDJ', 'Desafio Testes APIJC', 0, 1579796109),
(312, 1, 18, '', '0000108', '', 2, 1579796110),
(313, 1, 18, '', '0000109', '', 2, 1579796110),
(314, 1, 18, '', '0000110', '', 2, 1579796110),
(315, 1, 18, '', '0000111', '', 2, 1579796112),
(317, 1, 18, '', '0000111', '', 4, 1579796114),
(320, 1, 18, 'summary', 'Desafio Testes APIJC', 'Desafio Testes APIVH', 0, 1580579385),
(321, 1, 18, '', '0000112', '', 2, 1580579386),
(322, 1, 18, '', '0000113', '', 2, 1580579386),
(323, 1, 18, '', '0000114', '', 2, 1580579386),
(324, 1, 18, '', '0000115', '', 2, 1580579387),
(326, 1, 18, '', '0000115', '', 4, 1580579389),
(329, 1, 18, 'summary', 'Desafio Testes APIVH', 'Desafio Testes APIFG', 0, 1580579802),
(330, 1, 18, '', '0000116', '', 2, 1580579803),
(331, 1, 18, '', '0000117', '', 2, 1580579803),
(332, 1, 18, '', '0000118', '', 2, 1580579804),
(333, 1, 18, '', '0000119', '', 2, 1580579804),
(335, 1, 18, '', '0000119', '', 4, 1580579806),
(338, 1, 18, 'summary', 'Desafio Testes APIFG', 'Desafio Testes APIKK', 0, 1580588095),
(339, 1, 18, '', '0000120', '', 2, 1580588096),
(340, 1, 18, '', '0000121', '', 2, 1580588097),
(341, 1, 18, '', '0000122', '', 2, 1580588097),
(342, 1, 18, '', '0000123', '', 2, 1580588098),
(344, 1, 18, '', '0000123', '', 4, 1580588099),
(347, 1, 18, 'summary', 'Desafio Testes APIKK', 'Desafio Testes APISF', 0, 1580596826),
(348, 1, 18, '', '0000124', '', 2, 1580596827),
(349, 1, 18, '', '0000125', '', 2, 1580596827),
(350, 1, 18, '', '0000126', '', 2, 1580596828),
(351, 1, 18, '', '0000127', '', 2, 1580596828),
(353, 1, 18, '', '0000127', '', 4, 1580596830),
(356, 1, 18, 'summary', 'Desafio Testes APISF', 'Desafio Testes APIRI', 0, 1580597172),
(357, 1, 18, '', '0000128', '', 2, 1580597173),
(358, 1, 18, '', '0000129', '', 2, 1580597173),
(359, 1, 18, '', '0000130', '', 2, 1580597174),
(360, 1, 18, '', '0000131', '', 2, 1580597174),
(362, 1, 18, '', '0000131', '', 4, 1580597176),
(365, 1, 52, '', '', '', 1, 1580604969),
(366, 1, 53, '', '', '', 1, 1580605001),
(367, 1, 54, '', '', '', 1, 1580605021),
(368, 1, 55, '', '', '', 1, 1580605038),
(369, 1, 56, '', '', '', 1, 1580605068),
(370, 1, 56, 'priority', '30', '0', 0, 1580605092),
(371, 1, 56, 'summary', 'Testes Automacao Desafio 05', 'Desafio Testes APIHS', 0, 1580605092),
(372, 1, 56, '', '0000132', '', 2, 1580605092),
(373, 1, 56, '', '0000133', '', 2, 1580605093),
(374, 1, 56, '', '0000134', '', 2, 1580605093),
(375, 1, 56, '', '0000135', '', 2, 1580605094),
(377, 1, 56, '', '0000135', '', 4, 1580605095),
(380, 1, 56, '', '1', '', 12, 1580605097),
(381, 1, 58, '', '', '', 1, 1580605270);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_monitor_table`
--

CREATE TABLE `mantis_bug_monitor_table` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_monitor_table`
--

INSERT INTO `mantis_bug_monitor_table` (`user_id`, `bug_id`) VALUES
(1, 18),
(1, 56);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_relationship_table`
--

CREATE TABLE `mantis_bug_relationship_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `destination_bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `relationship_type` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_revision_table`
--

CREATE TABLE `mantis_bug_revision_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `bug_id` int(10) UNSIGNED NOT NULL,
  `bugnote_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_table`
--

CREATE TABLE `mantis_bug_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reporter_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `handler_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `priority` smallint(6) NOT NULL DEFAULT 30,
  `severity` smallint(6) NOT NULL DEFAULT 50,
  `reproducibility` smallint(6) NOT NULL DEFAULT 10,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `resolution` smallint(6) NOT NULL DEFAULT 10,
  `projection` smallint(6) NOT NULL DEFAULT 10,
  `eta` smallint(6) NOT NULL DEFAULT 10,
  `bug_text_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT 0,
  `sticky` tinyint(4) NOT NULL DEFAULT 0,
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `due_date` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`, `category_id`, `date_submitted`, `due_date`, `last_updated`) VALUES
(13, 2, 1, 0, 0, 0, 50, 10, 10, 10, 10, 10, 13, '', '', '', '', '', '', 0, 10, 'Desafio Testes APIQV', 0, 0, '', 2, 1576783454, 1, 1576783640),
(15, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 15, '', '', '', '', '', '', 0, 10, 'TestesAutomatizadosApi', 0, 0, '', 2, 1576784076, 1, 1576784076),
(17, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 17, '', '', '', '', '', '', 0, 10, 'TestesAutomatizadosApi', 0, 0, '', 2, 1576784158, 1, 1576784158),
(18, 2, 1, 0, 0, 0, 50, 70, 10, 10, 10, 10, 18, '', '', '', '', '', '', 0, 10, 'Desafio Testes APIRI', 0, 0, '', 2, 1576784430, 1, 1580597174),
(52, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 52, '', '', '', '', '', '', 0, 10, 'Testes Automacao Desafio 01', 0, 0, '', 2, 1580604969, 1, 1580604969),
(53, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 53, '', '', '', '', '', '', 0, 10, 'Testes Automacao Desafio 02', 0, 0, '', 3, 1580605001, 1, 1580605001),
(54, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 54, '', '', '', '', '', '', 0, 10, 'Testes Automacao Desafio 03', 0, 0, '', 2, 1580605020, 1, 1580605020),
(55, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 55, '', '', '', '', '', '', 0, 10, 'Testes Automacao Desafio 04', 0, 0, '', 2, 1580605037, 1, 1580605037),
(56, 2, 1, 0, 0, 0, 50, 70, 10, 10, 10, 10, 56, '', '', '', '', '', '', 0, 10, 'Desafio Testes APIHS', 0, 0, '', 3, 1580605067, 1, 1580605097),
(58, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 58, '', '', '', '', '', '', 0, 10, 'Testes Automacao Desafio 06', 0, 0, '', 3, 1580605270, 1, 1580605270);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_tag_table`
--

CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tag_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_attached` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_bug_text_table`
--

CREATE TABLE `mantis_bug_text_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_bug_text_table`
--

INSERT INTO `mantis_bug_text_table` (`id`, `description`, `steps_to_reproduce`, `additional_information`) VALUES
(13, 'teste', '', ''),
(15, 'Descricao do Projeto.', '', ''),
(17, 'Descricao do Projeto.', '', ''),
(18, 'Descricao do Projeto.', '', ''),
(52, 'Descricao do teste', '', ''),
(53, 'Descricao', '', ''),
(54, 'desc', '', ''),
(55, 'descricao', '', ''),
(56, 'descricao', '', ''),
(58, 'descricao', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_category_table`
--

CREATE TABLE `mantis_category_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_category_table`
--

INSERT INTO `mantis_category_table` (`id`, `project_id`, `user_id`, `name`, `status`) VALUES
(1, 0, 0, 'General', 0),
(2, 0, 0, 'Bug', 0),
(3, 0, 0, 'Melhoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_config_table`
--

CREATE TABLE `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `access_reqd` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 90,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_config_table`
--

INSERT INTO `mantis_config_table` (`config_id`, `project_id`, `user_id`, `access_reqd`, `type`, `value`) VALUES
('database_version', 0, 0, 90, 1, '209');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_project_table`
--

CREATE TABLE `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sequence` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_string_table`
--

CREATE TABLE `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) NOT NULL DEFAULT '',
  `text` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_custom_field_table`
--

CREATE TABLE `mantis_custom_field_table` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `possible_values` text DEFAULT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint(6) NOT NULL DEFAULT 0,
  `access_level_rw` smallint(6) NOT NULL DEFAULT 0,
  `length_min` int(11) NOT NULL DEFAULT 0,
  `length_max` int(11) NOT NULL DEFAULT 0,
  `require_report` tinyint(4) NOT NULL DEFAULT 0,
  `require_update` tinyint(4) NOT NULL DEFAULT 0,
  `display_report` tinyint(4) NOT NULL DEFAULT 0,
  `display_update` tinyint(4) NOT NULL DEFAULT 1,
  `require_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `display_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `display_closed` tinyint(4) NOT NULL DEFAULT 0,
  `require_closed` tinyint(4) NOT NULL DEFAULT 0,
  `filter_by` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_email_table`
--

CREATE TABLE `mantis_email_table` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  `submitted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_email_table`
--

INSERT INTO `mantis_email_table` (`email_id`, `email`, `subject`, `metadata`, `body`, `submitted`) VALUES
(42, 'CCAWBUHFU@teste.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"CCAWBUHFU\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=39&confirm_hash=aOnKx6HwAtGYbOhW5hqKB0zb9acZbFasNchUEqwnNkJBri1YdLeJOOw1JWTtxDTEZBAiX77PxaV64evY90aG\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580579393),
(43, 'CAPRHJDJC@teste.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"CAPRHJDJC\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=40&confirm_hash=7mf4uJz3gj0GywLxE2On0zRrPXO6wLqV21tdWmtalokvfDBhi1tv6I0zWh_-m_D9kfKsAGZZq6Lry71Kmwjj\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580579810),
(44, 'larissa@teste25.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"FOGJQRZIH\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=41&confirm_hash=_TCpdIajyRI4bnVg0eAT3nG7MlbDaWm5inu5tZ0jGyzHkoLkem9kj23pW9tdFHjA3CPWG1c91Foo2_qleAu4\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580588103),
(45, 'larissa@teste67.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"RURBWZFHT\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=42&confirm_hash=c4dNPeZhI4XXBTyjNj1fz2BRupbT_ohHZpiZTr1U21WWfaSahh69WJHodvJbXQhJpY5BYgSJQen5aO4BJRBQ\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580596008),
(46, 'larissa@teste79.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste YPGS\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=43&confirm_hash=fHMDc-t-A89VuYidIEyLh8PnQaozl2Osz2ewvQux9C-48_1Vmb4pdBeDeItQeyszaz8UZ2YC2BjPZPZP1dnT\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580596713),
(47, 'larissa@teste57.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste NUTC\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=44&confirm_hash=zieCSetjTmiyZOXHb3gWbfPCGRtbeEc5m4UM8ibC5ZxOhXhc1TtMj1Fm38zpKZ9mLPaYwQAyYL1RZo0nxqi-\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580596782),
(48, 'larissa@teste86.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste VRUT\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=45&confirm_hash=rVj8fufN9EJrQA7kf0Fcv1vb6rbqEgvsvGKPeMDlDMEjnUfUEa0n_CkDws47z2eztpo77CgGQIeF0K2Wo27-\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580596834),
(49, 'larissa@teste09.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste SFUH\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=46&confirm_hash=ykgt0gxDv7HLvSAiaf1yYH7fMyobKxCh2afIZuZygbm2FL8mTjmj6BCG_xJnqYztAFmhdevWXT1BgPObakob\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580596874),
(50, 'larissa@teste83.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste XJWI\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=47&confirm_hash=XvUuEmKg_uGVrWcjJHPLeygjhaJLi_08eSjwcoMDcfTw6nQARRRa9yZL5tCmbIMcsSI5ffRabVIj3wMoAP6n\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580597180),
(51, 'larissa@teste53.com', '[MantisBT] Account registration', 'a:3:{s:7:\"headers\";a:0:{}s:7:\"charset\";s:5:\"utf-8\";s:8:\"hostname\";s:9:\"localhost\";}', 'The user administrator has created an account for you with username \"larissa teste OHPW\". In order to complete your registration, visit the following URL (make sure it is entered as the single line) and set your own access password:\n\nhttp://localhost/mantis/verify.php?id=48&confirm_hash=MkVr7jRl97FmGdajLqYVmI6uzf_3FoS8fHmQ_xsNrlMu9EzE-ChdEvqVnOSq3qU20Mk0yhEfqqiSD3-SjUz_\n\nIf you did not request any registration, ignore this message and nothing will happen.\n\nDo not reply to this message', 1580605099);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_filters_table`
--

CREATE TABLE `mantis_filters_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `is_public` tinyint(4) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_filters_table`
--

INSERT INTO `mantis_filters_table` (`id`, `user_id`, `project_id`, `is_public`, `name`, `filter_string`) VALUES
(1, 2, -2, 0, '', 'v9#{\"_version\":\"v9\",\"_view_type\":\"advanced\",\"category_id\":[\"0\"],\"severity\":[0],\"status\":[10,20,30,40,50,80],\"per_page\":50,\"highlight_changed\":6,\"reporter_id\":[0],\"handler_id\":[0],\"project_id\":[-3],\"sort\":\"last_updated\",\"dir\":\"DESC\",\"filter_by_date\":false,\"start_month\":12,\"start_day\":1,\"start_year\":2019,\"end_month\":12,\"end_day\":9,\"end_year\":2019,\"filter_by_last_updated_date\":false,\"last_updated_start_month\":12,\"last_updated_start_day\":1,\"last_updated_start_year\":2019,\"last_updated_end_month\":12,\"last_updated_end_day\":9,\"last_updated_end_year\":2019,\"search\":\"\",\"hide_status\":[-2],\"resolution\":[0],\"build\":[\"0\"],\"version\":[\"0\"],\"fixed_in_version\":[\"0\"],\"target_version\":[\"0\"],\"priority\":[0],\"monitor_user_id\":[0],\"view_state\":0,\"custom_fields\":[],\"sticky\":true,\"relationship_type\":-1,\"relationship_bug\":0,\"profile_id\":[0],\"platform\":[\"0\"],\"os\":[\"0\"],\"os_build\":[\"0\"],\"tag_string\":\"\",\"tag_select\":0,\"note_user_id\":[0],\"match_type\":0}'),
(2, 1, -2, 0, '', 'v9#{\"_version\":\"v9\",\"_view_type\":\"simple\",\"category_id\":[\"0\"],\"severity\":[0],\"status\":[0],\"highlight_changed\":6,\"reporter_id\":[0],\"handler_id\":[0],\"project_id\":[-3],\"resolution\":[0],\"build\":[\"0\"],\"version\":[\"0\"],\"hide_status\":[90],\"monitor_user_id\":[0],\"sort\":\"last_updated\",\"dir\":\"DESC\",\"per_page\":50,\"match_type\":0,\"platform\":[\"0\"],\"os\":[\"0\"],\"os_build\":[\"0\"],\"fixed_in_version\":[\"0\"],\"target_version\":[\"0\"],\"profile_id\":[0],\"priority\":[0],\"note_user_id\":[0],\"sticky\":true,\"filter_by_date\":false,\"start_month\":\"02\",\"end_month\":\"02\",\"start_day\":1,\"end_day\":\"01\",\"start_year\":\"2020\",\"end_year\":\"2020\",\"filter_by_last_updated_date\":false,\"last_updated_start_month\":\"02\",\"last_updated_end_month\":\"02\",\"last_updated_start_day\":1,\"last_updated_end_day\":\"01\",\"last_updated_start_year\":\"2020\",\"last_updated_end_year\":\"2020\",\"search\":\"\",\"view_state\":0,\"tag_string\":\"\",\"tag_select\":0,\"relationship_type\":-1,\"relationship_bug\":0,\"custom_fields\":[],\"_source_query_id\":4}'),
(3, 1, 2, 1, 'Teste', 'v9#{\"_version\":\"v9\",\"_view_type\":\"simple\",\"category_id\":[\"0\"],\"severity\":[0],\"status\":[0],\"per_page\":50,\"highlight_changed\":6,\"reporter_id\":[0],\"handler_id\":[0],\"project_id\":[-3],\"sort\":\"last_updated\",\"dir\":\"DESC\",\"filter_by_date\":false,\"start_month\":2,\"start_day\":1,\"start_year\":2020,\"end_month\":2,\"end_day\":1,\"end_year\":2020,\"filter_by_last_updated_date\":false,\"last_updated_start_month\":2,\"last_updated_start_day\":1,\"last_updated_start_year\":2020,\"last_updated_end_month\":2,\"last_updated_end_day\":1,\"last_updated_end_year\":2020,\"search\":\"\",\"hide_status\":[90],\"resolution\":[0],\"build\":[\"0\"],\"version\":[\"0\"],\"fixed_in_version\":[\"0\"],\"target_version\":[\"0\"],\"priority\":[0],\"monitor_user_id\":[0],\"view_state\":0,\"custom_fields\":[],\"sticky\":true,\"relationship_type\":-1,\"relationship_bug\":0,\"profile_id\":[0],\"platform\":[\"0\"],\"os\":[\"0\"],\"os_build\":[\"0\"],\"tag_string\":\"\",\"tag_select\":0,\"note_user_id\":[0],\"match_type\":0}'),
(4, 1, 2, 0, 'Teste 1', 'v9#{\"_version\":\"v9\",\"_view_type\":\"simple\",\"category_id\":[\"0\"],\"severity\":[0],\"status\":[0],\"highlight_changed\":6,\"reporter_id\":[0],\"handler_id\":[0],\"project_id\":[-3],\"resolution\":[0],\"build\":[\"0\"],\"version\":[\"0\"],\"hide_status\":[90],\"monitor_user_id\":[0],\"sort\":\"last_updated\",\"dir\":\"DESC\",\"per_page\":50,\"match_type\":0,\"platform\":[\"0\"],\"os\":[\"0\"],\"os_build\":[\"0\"],\"fixed_in_version\":[\"0\"],\"target_version\":[\"0\"],\"profile_id\":[0],\"priority\":[0],\"note_user_id\":[0],\"sticky\":true,\"filter_by_date\":false,\"start_month\":\"02\",\"end_month\":\"02\",\"start_day\":1,\"end_day\":\"01\",\"start_year\":\"2020\",\"end_year\":\"2020\",\"filter_by_last_updated_date\":false,\"last_updated_start_month\":\"02\",\"last_updated_end_month\":\"02\",\"last_updated_start_day\":1,\"last_updated_end_day\":\"01\",\"last_updated_start_year\":\"2020\",\"last_updated_end_year\":\"2020\",\"search\":\"\",\"view_state\":0,\"tag_string\":\"\",\"tag_select\":0,\"relationship_type\":-1,\"relationship_bug\":0,\"custom_fields\":[]}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_news_table`
--

CREATE TABLE `mantis_news_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `announcement` tinyint(4) NOT NULL DEFAULT 0,
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `last_modified` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_posted` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_plugin_table`
--

CREATE TABLE `mantis_plugin_table` (
  `basename` varchar(40) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `priority` int(10) UNSIGNED NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_plugin_table`
--

INSERT INTO `mantis_plugin_table` (`basename`, `enabled`, `protected`, `priority`) VALUES
('MantisCoreFormatting', 1, 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_file_table`
--

CREATE TABLE `mantis_project_file_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob DEFAULT NULL,
  `date_added` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_hierarchy_table`
--

CREATE TABLE `mantis_project_hierarchy_table` (
  `child_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `inherit_parent` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_table`
--

CREATE TABLE `mantis_project_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT 10,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `view_state` smallint(6) NOT NULL DEFAULT 10,
  `access_min` smallint(6) NOT NULL DEFAULT 10,
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `inherit_global` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `category_id`, `inherit_global`) VALUES
(2, 'Desafio Testes Api', 10, 1, 10, 10, '', '', 1, 1),
(47, 'Projeto Testes Automacao 866', 10, 1, 10, 10, '/tmp/', 'Desafio Teste de API', 1, 1),
(48, 'Projeto Automacao Testes 104', 10, 1, 10, 10, '/tmp/', 'Desafio Teste de API', 1, 1),
(49, 'Projeto Automacao Testes 363', 10, 1, 10, 10, '/tmp/', 'Desafio Teste de API', 1, 1),
(50, 'Projeto Automacao Testes 523', 10, 1, 10, 10, '/tmp/', 'Desafio Teste de API', 1, 1),
(51, 'Projeto Automacao Testes 920', 10, 1, 10, 10, '/tmp/', 'Desafio Teste de API', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_user_list_table`
--

CREATE TABLE `mantis_project_user_list_table` (
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access_level` smallint(6) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_project_version_table`
--

CREATE TABLE `mantis_project_version_table` (
  `id` int(11) NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL DEFAULT 1,
  `obsolete` tinyint(4) NOT NULL DEFAULT 0,
  `date_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_project_version_table`
--

INSERT INTO `mantis_project_version_table` (`id`, `project_id`, `version`, `description`, `released`, `obsolete`, `date_order`) VALUES
(1, 2, 'v1.0.0', '', 1, 1, 1576764531),
(2, 2, 'v2.0.0', '', 1, 1, 1576764582),
(3, 2, 'v2', '', 1, 1, 1576764693),
(4, 11, 'v2.0.0', '', 1, 1, 1576771755),
(6, 33333, 'v2.0.0', '', 1, 1, 1576773070),
(15, 2, 'V.45', '', 1, 1, 1576870333),
(25, 2, 'V.41', '', 1, 1, 1579281916),
(26, 2, 'V.42', '', 1, 1, 1579281958),
(27, 2, 'V.68', '', 1, 1, 1579284757),
(28, 2, 'V.90', '', 1, 1, 1579285034),
(29, 2, 'V.18', '', 1, 1, 1579285081),
(30, 2, 'V.73', '', 1, 1, 1579784430),
(31, 2, 'V.39', '', 1, 1, 1579784524),
(32, 2, 'V.15', '', 1, 1, 1579785039),
(33, 2, 'V.77', '', 1, 1, 1579785141),
(34, 2, 'V.75', '', 1, 1, 1579785303),
(35, 2, 'V.19', '', 1, 1, 1579796104),
(36, 2, 'V.21', '', 1, 1, 1580579378),
(37, 2, 'V.84', '', 1, 1, 1580579796),
(38, 13, 'v1.0.0', '', 1, 1, 1580580438);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_sponsorship_table`
--

CREATE TABLE `mantis_sponsorship_table` (
  `id` int(11) NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `date_submitted` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_tag_table`
--

CREATE TABLE `mantis_tag_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_updated` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_tag_table`
--

INSERT INTO `mantis_tag_table` (`id`, `user_id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 1, 'dfdfdfd', 'gvgdgdfdf', 1576764877, 1576764877);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_tokens_table`
--

CREATE TABLE `mantis_tokens_table` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `expiry` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_tokens_table`
--

INSERT INTO `mantis_tokens_table` (`id`, `owner`, `type`, `value`, `timestamp`, `expiry`) VALUES
(3, 1, 5, '{\"filter\":false,\"sidebar\":false,\"resolved\":false,\"reported\":false,\"profile\":false}', 1575561314, 1612141301),
(7, 2, 5, '{\"filter\":false,\"sidebar\":false,\"resolved\":false,\"reported\":false,\"profile\":false}', 1575562335, 1607712822),
(77, 1, 3, '56,58,57,55,54', 1580579388, 1580691696),
(78, 39, 7, 'aOnKx6HwAtGYbOhW5hqKB0zb9acZbFasNchUEqwnNkJBri1YdLeJOOw1JWTtxDTEZBAiX77PxaV64evY90aG', 1580579393, 1581184193),
(79, 40, 7, '7mf4uJz3gj0GywLxE2On0zRrPXO6wLqV21tdWmtalokvfDBhi1tv6I0zWh_-m_D9kfKsAGZZq6Lry71Kmwjj', 1580579810, 1581184610),
(82, 41, 7, '_TCpdIajyRI4bnVg0eAT3nG7MlbDaWm5inu5tZ0jGyzHkoLkem9kj23pW9tdFHjA3CPWG1c91Foo2_qleAu4', 1580588103, 1581192903),
(84, 42, 7, 'c4dNPeZhI4XXBTyjNj1fz2BRupbT_ohHZpiZTr1U21WWfaSahh69WJHodvJbXQhJpY5BYgSJQen5aO4BJRBQ', 1580596008, 1581200808),
(85, 43, 7, 'fHMDc-t-A89VuYidIEyLh8PnQaozl2Osz2ewvQux9C-48_1Vmb4pdBeDeItQeyszaz8UZ2YC2BjPZPZP1dnT', 1580596713, 1581201513),
(86, 44, 7, 'zieCSetjTmiyZOXHb3gWbfPCGRtbeEc5m4UM8ibC5ZxOhXhc1TtMj1Fm38zpKZ9mLPaYwQAyYL1RZo0nxqi-', 1580596782, 1581201582),
(87, 45, 7, 'rVj8fufN9EJrQA7kf0Fcv1vb6rbqEgvsvGKPeMDlDMEjnUfUEa0n_CkDws47z2eztpo77CgGQIeF0K2Wo27-', 1580596834, 1581201634),
(88, 46, 7, 'ykgt0gxDv7HLvSAiaf1yYH7fMyobKxCh2afIZuZygbm2FL8mTjmj6BCG_xJnqYztAFmhdevWXT1BgPObakob', 1580596874, 1581201674),
(89, 47, 7, 'XvUuEmKg_uGVrWcjJHPLeygjhaJLi_08eSjwcoMDcfTw6nQARRRa9yZL5tCmbIMcsSI5ffRabVIj3wMoAP6n', 1580597179, 1581201979),
(90, 48, 7, 'MkVr7jRl97FmGdajLqYVmI6uzf_3FoS8fHmQ_xsNrlMu9EzE-ChdEvqVnOSq3qU20Mk0yhEfqqiSD3-SjUz_', 1580605099, 1581209899);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_pref_table`
--

CREATE TABLE `mantis_user_pref_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `project_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default_profile` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default_project` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `refresh_delay` int(11) NOT NULL DEFAULT 0,
  `redirect_delay` int(11) NOT NULL DEFAULT 0,
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_assigned` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_feedback` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_resolved` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_closed` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_reopened` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_bugnote` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_status` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_priority` tinyint(4) NOT NULL DEFAULT 0,
  `email_on_priority_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_status_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_bugnote_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_reopened_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_closed_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_resolved_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_feedback_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_assigned_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_on_new_min_severity` smallint(6) NOT NULL DEFAULT 10,
  `email_bugnote_limit` smallint(6) NOT NULL DEFAULT 0,
  `language` varchar(32) NOT NULL DEFAULT 'english',
  `timezone` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_user_pref_table`
--

INSERT INTO `mantis_user_pref_table` (`id`, `user_id`, `project_id`, `default_profile`, `default_project`, `refresh_delay`, `redirect_delay`, `bugnote_order`, `email_on_new`, `email_on_assigned`, `email_on_feedback`, `email_on_resolved`, `email_on_closed`, `email_on_reopened`, `email_on_bugnote`, `email_on_status`, `email_on_priority`, `email_on_priority_min_severity`, `email_on_status_min_severity`, `email_on_bugnote_min_severity`, `email_on_reopened_min_severity`, `email_on_closed_min_severity`, `email_on_resolved_min_severity`, `email_on_feedback_min_severity`, `email_on_assigned_min_severity`, `email_on_new_min_severity`, `email_bugnote_limit`, `language`, `timezone`) VALUES
(1, 2, 0, 0, 1, 30, 2, 'ASC', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto', 'America/Bahia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_print_pref_table`
--

CREATE TABLE `mantis_user_print_pref_table` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `print_pref` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_profile_table`
--

CREATE TABLE `mantis_user_profile_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mantis_user_table`
--

CREATE TABLE `mantis_user_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) NOT NULL DEFAULT '',
  `realname` varchar(191) NOT NULL DEFAULT '',
  `email` varchar(191) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0,
  `access_level` smallint(6) NOT NULL DEFAULT 10,
  `login_count` int(11) NOT NULL DEFAULT 0,
  `lost_password_request_count` smallint(6) NOT NULL DEFAULT 0,
  `failed_login_count` smallint(6) NOT NULL DEFAULT 0,
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `last_visit` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date_created` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mantis_user_table`
--

INSERT INTO `mantis_user_table` (`id`, `username`, `realname`, `email`, `password`, `enabled`, `protected`, `access_level`, `login_count`, `lost_password_request_count`, `failed_login_count`, `cookie_string`, `last_visit`, `date_created`) VALUES
(1, 'administrator', 'Administrador', 'root@localhost', '63a9f0ea7bb98050796b649e85481845', 1, 0, 90, 28, 0, 0, '9nfJBrFA8kjiWCiLGuGR9AKDdkYm_AwzPneQS5Q1oqaFh9dXEtirfb3eXWsTEWKk', 1580605301, 1575548637),
(2, 'larissa.cardoso', 'Larissa', 'larissacard13@gmail.com', '63a9f0ea7bb98050796b649e85481845', 1, 0, 25, 11, 0, 0, 'cNHfFrHudZe7Exltbi8sabUz_k-KrjYnkbIOpyB8Azdb5PHh2vGfhuwvXqCNNHDd', 1576176805, 1575561706),
(3, 'vtest10', 'Victor Test10', 'victor@teste.com', 'b50f424c1ed4110c340999ed434a7d26', 1, 0, 40, 0, 0, 0, 'IC8_AlmzEGkMPXw4Jy80w5Rr8Qmxf6IqvFIu5WHrW5abLDE6u4ewhE6X2gZUu5QF', 1576240046, 1576240046),
(4, 'jhbhjb', 'Victor Test10', 'victor@aaaa.com', '68cabd61e1ff552990f684009162d062', 1, 0, 40, 0, 0, 0, 'IhDqnlu3SCJ8YtX9S_ehTzJuIPqP6LmC9kqRAkPttRV8Sv8n-x7hcAVHNuluyUmm', 1576240365, 1576240365),
(8, 'efer', '123456', 'root@locddalhost', '634e53aaabc9df8e4ba5802485f56f05', 1, 0, 40, 0, 0, 0, 'F7ehcLJJQ6E_RGfDbhZ5LPxq6Wdy497Xa7oEoJop9dAXq6uWm6ajKPNOiAnFHz2J', 1576246473, 1576246473),
(12, 'RCEDFLUAU', 'RCEDFLUAU', 'RCEDFLUAU@teste.com', '1fa121d5e17541529701ccaf048ef96f', 1, 0, 40, 0, 0, 0, '5CRtfC7vUVvEVwDriUO0CsVviI03BY2zGShqbJS9pLiGOS88Xg2p9F8THO4CvmpT', 1576784530, 1576784530),
(42, 'RURBWZFHT', 'larissaRURBWZFHT', 'larissa@teste67.com', 'bb787dbfbd1159969d90ec44d2e6c7a3', 1, 0, 40, 0, 0, 0, 'yVSU06eDxaGVgOxSpqckdjfx9EJdEbwLVmdpirW3cRqrKVzAKnrrZMueW2Dl3MHj', 1580596008, 1580596008),
(43, 'larissa teste YPGS', 'larissaUZTXA', 'larissa@teste79.com', 'c13f5200475b5a0a77002a66f628b0ef', 1, 0, 40, 0, 0, 0, '_mLYb4nOgYjL9fuSbtDEpi98eV9bbCBW_8A4JVLaSCatcz_6GZjrBLrWftO1OaFP', 1580596712, 1580596712),
(44, 'larissa teste NUTC', 'larissaNUTCG', 'larissa@teste57.com', '57a3cebbaa86d4df7f63bc9922a3ace6', 1, 0, 40, 0, 0, 0, 'XEcCltUqUEdr4EdYY1LvAAUBApGo-dwZNI06DHYT5CJ1LGhCKQbOVBYzoTKNtXcy', 1580596782, 1580596782),
(46, 'larissa teste SFUH', 'larissaCXZSZ', 'larissa@teste09.com', '9e7ec8dbaa349b9382a55abdeefcf894', 1, 0, 40, 0, 0, 0, '_bwM5W9KfvS1rnWuGLsN5eFmxnIy-yCnRKDHhj_CWQhh81BQSVmSzNO1iwTcFZXp', 1580596874, 1580596874);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mantis_api_token_table`
--
ALTER TABLE `mantis_api_token_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_id_name` (`user_id`,`name`);

--
-- Índices para tabela `mantis_bugnote_table`
--
ALTER TABLE `mantis_bugnote_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug` (`bug_id`),
  ADD KEY `idx_last_mod` (`last_modified`);

--
-- Índices para tabela `mantis_bugnote_text_table`
--
ALTER TABLE `mantis_bugnote_text_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_bug_file_table`
--
ALTER TABLE `mantis_bug_file_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_file_bug_id` (`bug_id`),
  ADD KEY `idx_diskfile` (`diskfile`);

--
-- Índices para tabela `mantis_bug_history_table`
--
ALTER TABLE `mantis_bug_history_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_history_bug_id` (`bug_id`),
  ADD KEY `idx_history_user_id` (`user_id`),
  ADD KEY `idx_bug_history_date_modified` (`date_modified`);

--
-- Índices para tabela `mantis_bug_monitor_table`
--
ALTER TABLE `mantis_bug_monitor_table`
  ADD PRIMARY KEY (`user_id`,`bug_id`),
  ADD KEY `idx_bug_id` (`bug_id`);

--
-- Índices para tabela `mantis_bug_relationship_table`
--
ALTER TABLE `mantis_bug_relationship_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_relationship_source` (`source_bug_id`),
  ADD KEY `idx_relationship_destination` (`destination_bug_id`);

--
-- Índices para tabela `mantis_bug_revision_table`
--
ALTER TABLE `mantis_bug_revision_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_rev_type` (`type`),
  ADD KEY `idx_bug_rev_id_time` (`bug_id`,`timestamp`);

--
-- Índices para tabela `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  ADD KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  ADD KEY `idx_bug_status` (`status`),
  ADD KEY `idx_project` (`project_id`);

--
-- Índices para tabela `mantis_bug_tag_table`
--
ALTER TABLE `mantis_bug_tag_table`
  ADD PRIMARY KEY (`bug_id`,`tag_id`),
  ADD KEY `idx_bug_tag_tag_id` (`tag_id`);

--
-- Índices para tabela `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_category_project_name` (`project_id`,`name`);

--
-- Índices para tabela `mantis_config_table`
--
ALTER TABLE `mantis_config_table`
  ADD PRIMARY KEY (`config_id`,`project_id`,`user_id`);

--
-- Índices para tabela `mantis_custom_field_project_table`
--
ALTER TABLE `mantis_custom_field_project_table`
  ADD PRIMARY KEY (`field_id`,`project_id`);

--
-- Índices para tabela `mantis_custom_field_string_table`
--
ALTER TABLE `mantis_custom_field_string_table`
  ADD PRIMARY KEY (`field_id`,`bug_id`),
  ADD KEY `idx_custom_field_bug` (`bug_id`);

--
-- Índices para tabela `mantis_custom_field_table`
--
ALTER TABLE `mantis_custom_field_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_custom_field_name` (`name`);

--
-- Índices para tabela `mantis_email_table`
--
ALTER TABLE `mantis_email_table`
  ADD PRIMARY KEY (`email_id`);

--
-- Índices para tabela `mantis_filters_table`
--
ALTER TABLE `mantis_filters_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_news_table`
--
ALTER TABLE `mantis_news_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_plugin_table`
--
ALTER TABLE `mantis_plugin_table`
  ADD PRIMARY KEY (`basename`);

--
-- Índices para tabela `mantis_project_file_table`
--
ALTER TABLE `mantis_project_file_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_project_hierarchy_table`
--
ALTER TABLE `mantis_project_hierarchy_table`
  ADD UNIQUE KEY `idx_project_hierarchy` (`child_id`,`parent_id`),
  ADD KEY `idx_project_hierarchy_child_id` (`child_id`),
  ADD KEY `idx_project_hierarchy_parent_id` (`parent_id`);

--
-- Índices para tabela `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_name` (`name`),
  ADD KEY `idx_project_view` (`view_state`);

--
-- Índices para tabela `mantis_project_user_list_table`
--
ALTER TABLE `mantis_project_user_list_table`
  ADD PRIMARY KEY (`project_id`,`user_id`),
  ADD KEY `idx_project_user` (`user_id`);

--
-- Índices para tabela `mantis_project_version_table`
--
ALTER TABLE `mantis_project_version_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_project_version` (`project_id`,`version`);

--
-- Índices para tabela `mantis_sponsorship_table`
--
ALTER TABLE `mantis_sponsorship_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sponsorship_bug_id` (`bug_id`),
  ADD KEY `idx_sponsorship_user_id` (`user_id`);

--
-- Índices para tabela `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  ADD PRIMARY KEY (`id`,`name`),
  ADD KEY `idx_tag_name` (`name`);

--
-- Índices para tabela `mantis_tokens_table`
--
ALTER TABLE `mantis_tokens_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_typeowner` (`type`,`owner`);

--
-- Índices para tabela `mantis_user_pref_table`
--
ALTER TABLE `mantis_user_pref_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_user_print_pref_table`
--
ALTER TABLE `mantis_user_print_pref_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `mantis_user_profile_table`
--
ALTER TABLE `mantis_user_profile_table`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mantis_user_table`
--
ALTER TABLE `mantis_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  ADD UNIQUE KEY `idx_user_username` (`username`),
  ADD KEY `idx_enable` (`enabled`),
  ADD KEY `idx_access` (`access_level`),
  ADD KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mantis_api_token_table`
--
ALTER TABLE `mantis_api_token_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `mantis_bugnote_table`
--
ALTER TABLE `mantis_bugnote_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de tabela `mantis_bugnote_text_table`
--
ALTER TABLE `mantis_bugnote_text_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de tabela `mantis_bug_file_table`
--
ALTER TABLE `mantis_bug_file_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_history_table`
--
ALTER TABLE `mantis_bug_history_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT de tabela `mantis_bug_relationship_table`
--
ALTER TABLE `mantis_bug_relationship_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_revision_table`
--
ALTER TABLE `mantis_bug_revision_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_bug_table`
--
ALTER TABLE `mantis_bug_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `mantis_bug_text_table`
--
ALTER TABLE `mantis_bug_text_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `mantis_category_table`
--
ALTER TABLE `mantis_category_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `mantis_custom_field_table`
--
ALTER TABLE `mantis_custom_field_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_email_table`
--
ALTER TABLE `mantis_email_table`
  MODIFY `email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `mantis_filters_table`
--
ALTER TABLE `mantis_filters_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `mantis_news_table`
--
ALTER TABLE `mantis_news_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_project_file_table`
--
ALTER TABLE `mantis_project_file_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_project_table`
--
ALTER TABLE `mantis_project_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `mantis_project_version_table`
--
ALTER TABLE `mantis_project_version_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `mantis_sponsorship_table`
--
ALTER TABLE `mantis_sponsorship_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_tag_table`
--
ALTER TABLE `mantis_tag_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mantis_tokens_table`
--
ALTER TABLE `mantis_tokens_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `mantis_user_pref_table`
--
ALTER TABLE `mantis_user_pref_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mantis_user_profile_table`
--
ALTER TABLE `mantis_user_profile_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mantis_user_table`
--
ALTER TABLE `mantis_user_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
