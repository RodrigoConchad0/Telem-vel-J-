-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- SO do servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- A despejar estrutura da base de dados para assistencia_telemoveis
DROP DATABASE IF EXISTS `assistencia_telemoveis`;
CREATE DATABASE IF NOT EXISTS `assistencia_telemoveis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `assistencia_telemoveis`;

-- A despejar estrutura para tabela assistencia_telemoveis.componentes
DROP TABLE IF EXISTS `componentes`;
CREATE TABLE IF NOT EXISTS `componentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idmodelo` int DEFAULT NULL,
  `tiporeparacao` varchar(50) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `nome` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela assistencia_telemoveis.componentes: ~654 rows (aproximadamente)
INSERT INTO `componentes` (`id`, `idmodelo`, `tiporeparacao`, `preco`, `nome`) VALUES
	(1, 1, 'bateria', 50, 'Oppo A58'),
	(2, 1, 'CameraFrontal', 50, 'Oppo A58'),
	(3, 1, 'CameraTraseira', 79.67, 'Oppo A58'),
	(4, 1, 'VidroEcra', 80.65, 'Oppo A58'),
	(5, 1, 'BotaoPower', 82.54, 'Oppo A58'),
	(6, 1, 'ConectorCarga', 70.99, 'Oppo A58'),
	(7, 2, 'bateria', 50, 'Oppo A58 X'),
	(8, 2, 'CameraFrontal', 50, 'Oppo A58 X'),
	(9, 2, 'CameraTraseira', 79.67, 'Oppo A58 X'),
	(10, 2, 'VidroEcra', 80.65, 'Oppo A58 X'),
	(11, 2, 'BotaoPower', 82.54, 'Oppo A58 X'),
	(12, 2, 'ConectorCarga', 70.99, 'Oppo A58 X'),
	(13, 3, 'bateria', 50, 'Oppo A78'),
	(14, 3, 'CameraFrontal', 50, 'Oppo A78'),
	(15, 3, 'CameraTraseira', 89.95, 'Oppo A78'),
	(16, 3, 'VidroEcra', 97.95, 'Oppo A78'),
	(17, 3, 'BotaoPower', 89.95, 'Oppo A78'),
	(18, 3, 'ConectorCarga', 79.95, 'Oppo A78'),
	(19, 4, 'bateria', 50, 'Oppo A98'),
	(20, 4, 'CameraFrontal', 50, 'Oppo A98'),
	(21, 4, 'CameraTraseira', 95.95, 'Oppo A98'),
	(22, 4, 'VidroEcra', 97.95, 'Oppo A98'),
	(23, 4, 'BotaoPower', 91.95, 'Oppo A98'),
	(24, 4, 'ConectorCarga', 81.95, 'Oppo A98'),
	(25, 5, 'bateria', 60, 'Oppo Find X6'),
	(26, 5, 'CameraFrontal', 59.95, 'Oppo Find X6'),
	(27, 5, 'CameraTraseira', 89.95, 'Oppo Find X6'),
	(28, 5, 'VidroEcra', 148, 'Oppo Find X6'),
	(29, 5, 'BotaoPower', 80.95, 'Oppo Find X6'),
	(30, 5, 'ConectorCarga', 100, 'Oppo Find X6'),
	(31, 6, 'bateria', 60, 'Opoo Reno 10'),
	(32, 6, 'CameraFrontal', 59.95, 'Opoo Reno 10'),
	(33, 6, 'CameraTraseira', 131.95, 'Opoo Reno 10'),
	(34, 6, 'VidroEcra', 174.95, 'Opoo Reno 10'),
	(35, 6, 'BotaoPower', 80.95, 'Opoo Reno 10'),
	(36, 6, 'ConectorCarga', 100, 'Opoo Reno 10'),
	(37, 7, 'bateria', 60, 'Oppo Reno 10 pro'),
	(38, 7, 'CameraFrontal', 59.95, 'Oppo Reno 10 pro'),
	(39, 7, 'CameraTraseira', 140.95, 'Oppo Reno 10 pro'),
	(40, 7, 'VidroEcra', 105.95, 'Oppo Reno 10 pro'),
	(41, 7, 'BotaoPower', 80.95, 'Oppo Reno 10 pro'),
	(42, 7, 'ConectorCarga', 90, 'Oppo Reno 10 pro'),
	(43, 8, 'bateria', 60, 'Oppo Reno 12'),
	(44, 8, 'CameraFrontal', 69.95, 'Oppo Reno 12'),
	(45, 8, 'CameraTraseira', 120.95, 'Oppo Reno 12'),
	(46, 8, 'VidroEcra', 141.95, 'Oppo Reno 12'),
	(47, 8, 'BotaoPower', 129.95, 'Oppo Reno 12'),
	(48, 8, 'ConectorCarga', 120.95, 'Oppo Reno 12'),
	(49, 9, 'bateria', 60, 'Oppo Reno 12 Pro'),
	(50, 9, 'CameraFrontal', 70.95, 'Oppo Reno 12 Pro'),
	(51, 9, 'CameraTraseira', 150.95, 'Oppo Reno 12 Pro'),
	(52, 9, 'VidroEcra', 141.95, 'Oppo Reno 12 Pro'),
	(53, 9, 'BotaoPower', 130.95, 'Oppo Reno 12 Pro'),
	(54, 9, 'ConectorCarga', 119.95, 'Oppo Reno 12 Pro'),
	(55, 10, 'bateria', 60, 'iphone 8'),
	(56, 10, 'CameraFrontal', 70.95, 'iphone 8'),
	(57, 10, 'CameraTraseira', 150.95, 'iphone 8'),
	(58, 10, 'VidroEcra', 166.95, 'iphone 8'),
	(59, 10, 'BotaoPower', 89.95, 'iphone 8'),
	(60, 10, 'ConectorCarga', 120.95, 'iphone 8'),
	(61, 11, 'bateria', 70, 'Iphone 8 Plus'),
	(62, 11, 'CameraFrontal', 80.95, 'Iphone 8 Plus'),
	(63, 11, 'CameraTraseira', 130.95, 'Iphone 8 Plus'),
	(64, 11, 'VidroEcra', 157.95, 'Iphone 8 Plus'),
	(65, 11, 'BotaoPower', 99.95, 'Iphone 8 Plus'),
	(66, 11, 'ConectorCarga', 140.95, 'Iphone 8 Plus'),
	(67, 12, 'bateria', 70, 'Iphone X'),
	(68, 12, 'CameraFrontal', 80.95, 'Iphone X'),
	(69, 12, 'CameraTraseira', 150.95, 'Iphone X'),
	(70, 12, 'VidroEcra', 215.95, 'Iphone X'),
	(71, 12, 'BotaoPower', 149.65, 'Iphone X'),
	(72, 12, 'ConectorCarga', 139.95, 'Iphone X'),
	(73, 13, 'bateria', 70, 'Iphone X Plus'),
	(74, 13, 'CameraFrontal', 80.95, 'Iphone X Plus'),
	(75, 13, 'CameraTraseira', 150.95, 'Iphone X Plus'),
	(76, 13, 'VidroEcra', 271.95, 'Iphone X Plus'),
	(77, 13, 'BotaoPower', 109.95, 'Iphone X Plus'),
	(78, 13, 'ConectorCarga', 139.95, 'Iphone X Plus'),
	(79, 14, 'bateria', 80, 'Iphone 11'),
	(80, 14, 'CameraFrontal', 90.95, 'Iphone 11'),
	(81, 14, 'CameraTraseira', 150.95, 'Iphone 11'),
	(82, 14, 'VidroEcra', 182.95, 'Iphone 11'),
	(83, 14, 'BotaoPower', 120, 'Iphone 11'),
	(84, 14, 'ConectorCarga', 150.95, 'Iphone 11 Pro'),
	(85, 15, 'bateria', 80, 'Iphone 11 Pro'),
	(86, 15, 'CameraFrontal', 90.95, 'Iphone 11 Pro'),
	(87, 15, 'CameraTraseira', 150.95, 'Iphone 11 Pro'),
	(88, 15, 'VidroEcra', 305.95, 'Iphone 11 Pro'),
	(89, 15, 'BotaoPower', 150.95, 'Iphone 11 Pro'),
	(90, 15, 'ConectorCarga', 150.95, 'Iphone 11 Pro'),
	(91, 16, 'bateria', 80, 'phone 11 Pro Max'),
	(92, 16, 'CameraFrontal', 90.95, 'phone 11 Pro Max'),
	(93, 16, 'CameraTraseira', 150.95, 'phone 11 Pro Max'),
	(94, 16, 'VidroEcra', 350, 'phone 11 Pro Max'),
	(95, 16, 'BotaoPower', 150.95, 'phone 11 Pro Max'),
	(96, 16, 'ConectorCarga', 160.95, 'phone 11 Pro Max'),
	(97, 17, 'bateria', 90, 'Iphone 12'),
	(98, 17, 'CameraFrontal', 100, 'Iphone 12'),
	(99, 17, 'CameraTraseira', 190.95, 'Iphone 12'),
	(100, 17, 'VidroEcra', 291.3, 'Iphone 12'),
	(101, 17, 'BotaoPower', 160.95, 'Iphone 12'),
	(102, 17, 'ConectorCarga', 170.95, 'Iphone 12'),
	(103, 18, 'bateria', 90, 'Iphone 12 Pro'),
	(104, 18, 'CameraFrontal', 100.95, 'Iphone 12 Pro'),
	(105, 18, 'CameraTraseira', 195.95, 'Iphone 12 Pro'),
	(106, 18, 'VidroEcra', 353.95, 'Iphone 12 Pro'),
	(107, 18, 'BotaoPower', 160.95, 'Iphone 12 Pro'),
	(108, 18, 'ConectorCarga', 170.95, 'Iphone 12 Pro Max'),
	(109, 19, 'bateria', 90, 'Iphone 12 Pro Max'),
	(110, 19, 'CameraFrontal', 100.95, 'Iphone 12 Pro Max'),
	(111, 19, 'CameraTraseira', 190.95, 'Iphone 12 Pro Max'),
	(112, 19, 'VidroEcra', 380, 'Iphone 12 Pro Max'),
	(113, 19, 'BotaoPower', 160.95, 'Iphone 12 Pro Max'),
	(114, 19, 'ConectorCarga', 170.95, 'Iphone 12 Pro Max'),
	(133, 23, 'bateria', 80, 'Iphone 13'),
	(134, 23, 'CameraFrontal', 110.95, 'Iphone 13'),
	(135, 23, 'CameraTraseira', 130.95, 'Iphone 13'),
	(136, 23, 'VidroEcra', 165, 'Iphone 13'),
	(137, 23, 'BotaoPower', 90, 'Iphone 13'),
	(138, 23, 'ConectorCarga', 90.95, 'Iphone 13'),
	(139, 24, 'bateria', 80, 'Iphone 13 Pro'),
	(140, 24, 'CameraFrontal', 120.95, 'Iphone 13 Pro'),
	(141, 24, 'CameraTraseira', 140.95, 'Iphone 13 Pro'),
	(142, 24, 'VidroEcra', 272.95, 'Iphone 13 Pro'),
	(143, 24, 'BotaoPower', 90, 'Iphone 13 Pro'),
	(144, 24, 'ConectorCarga', 100.95, 'Iphone 13 Pro'),
	(145, 25, 'bateria', 80, 'Iphone 13 Pro Max'),
	(146, 25, 'CameraFrontal', 130.95, 'Iphone 13 Pro Max'),
	(147, 25, 'CameraTraseira', 150.95, 'Iphone 13 Pro Max'),
	(148, 25, 'VidroEcra', 206.95, 'Iphone 13 Pro Max'),
	(149, 25, 'BotaoPower', 90, 'Iphone 13 Pro Max'),
	(150, 25, 'ConectorCarga', 100.95, 'Iphone 13 Pro Max'),
	(157, 27, 'bateria', 50, 'Iphone 14'),
	(158, 27, 'CameraFrontal', 100.95, 'Iphone 14'),
	(159, 27, 'CameraTraseira', 140.95, 'Iphone 14'),
	(160, 27, 'VidroEcra', 222.95, 'Iphone 14'),
	(161, 27, 'BotaoPower', 70, 'Iphone 14'),
	(162, 27, 'ConectorCarga', 90.95, 'Iphone 14'),
	(163, 28, 'bateria', 50, 'Iphone 14 Pro'),
	(164, 28, 'CameraFrontal', 120, 'Iphone 14 Pro'),
	(165, 28, 'CameraTraseira', 180.95, 'Iphone 14 Pro'),
	(166, 28, 'VidroEcra', 443.95, 'Iphone 14 Pro'),
	(167, 28, 'BotaoPower', 70, 'Iphone 14 Pro'),
	(168, 28, 'ConectorCarga', 90.95, 'Iphone 14 Pro'),
	(169, 29, 'bateria', 50, 'Iphone 14 Pro Max'),
	(170, 29, 'CameraFrontal', 60.95, 'Iphone 14 Pro Max'),
	(171, 29, 'CameraTraseira', 90.95, 'Iphone 14 Pro Max'),
	(172, 29, 'VidroEcra', 99.95, 'Iphone 14 Pro Max'),
	(173, 29, 'BotaoPower', 50, 'Iphone 14 Pro Max'),
	(174, 29, 'ConectorCarga', 70.95, 'Iphone 15'),
	(175, 30, 'bateria', 50, 'Iphone 15'),
	(176, 30, 'CameraFrontal', 60.95, 'Iphone 15'),
	(177, 30, 'CameraTraseira', 90.95, 'Iphone 15'),
	(178, 30, 'VidroEcra', 210.95, 'Iphone 15'),
	(179, 30, 'BotaoPower', 50, 'Iphone 15'),
	(180, 30, 'ConectorCarga', 70.95, 'Iphone 15'),
	(181, 31, 'bateria', 50, 'Iphone 15 Pro'),
	(182, 31, 'CameraFrontal', 60.95, 'Iphone 15 Pro'),
	(183, 31, 'CameraTraseira', 100.95, 'Iphone 15 Pro'),
	(184, 31, 'VidroEcra', 211.95, 'Iphone 15 Pro'),
	(185, 31, 'BotaoPower', 50, 'Iphone 15 Pro'),
	(186, 31, 'ConectorCarga', 70.95, 'Iphone 15 Pro'),
	(187, 32, 'bateria', 50, 'Iphone 15 Pro Max'),
	(188, 32, 'CameraFrontal', 40.95, 'Iphone 15 Pro Max'),
	(189, 32, 'CameraTraseira', 170.95, 'Iphone 15 Pro Max'),
	(190, 32, 'VidroEcra', 302.95, 'Iphone 15 Pro Max'),
	(191, 32, 'BotaoPower', 50, 'Iphone 15 Pro Max'),
	(192, 32, 'ConectorCarga', 60.95, 'Iphone 15 Pro Max'),
	(193, 33, 'bateria', 50, 'Samsung S24'),
	(194, 33, 'CameraFrontal', 80.95, 'Samsung S24'),
	(195, 33, 'CameraTraseira', 130.95, 'Samsung S24'),
	(196, 33, 'VidroEcra', 207.9, 'Samsung S24'),
	(197, 33, 'BotaoPower', 60, 'Samsung S24'),
	(198, 33, 'ConectorCarga', 60.95, 'Samsung S24'),
	(199, 34, 'bateria', 50, 'S24 Ultra'),
	(200, 34, 'CameraFrontal', 80.95, 'S24 Ultra'),
	(201, 34, 'CameraTraseira', 160.95, 'S24 Ultra'),
	(202, 34, 'VidroEcra', 321.95, 'S24 Ultra'),
	(203, 34, 'BotaoPower', 60, 'S24 Ultra'),
	(204, 34, 'ConectorCarga', 50.95, 'S24 Ultra'),
	(205, 35, 'bateria', 50, 'S24 Plus'),
	(206, 35, 'CameraFrontal', 80.95, 'S24 Plus'),
	(207, 35, 'CameraTraseira', 140.95, 'S24 Plus'),
	(208, 35, 'VidroEcra', 207.95, 'S24 Plus'),
	(209, 35, 'BotaoPower', 60, 'S24 Plus'),
	(210, 35, 'ConectorCarga', 60.95, 'S24 Plus'),
	(211, 36, 'bateria', 50, 'S23'),
	(212, 36, 'CameraFrontal', 100.95, 'S23'),
	(213, 36, 'CameraTraseira', 130.95, 'S23'),
	(214, 36, 'VidroEcra', 200.95, 'S23'),
	(215, 36, 'BotaoPower', 80.95, 'S23'),
	(216, 36, 'ConectorCarga', 70, 'S23'),
	(217, 37, 'bateria', 50, 'S23 Ultra'),
	(218, 37, 'CameraFrontal', 110.95, 'S23 Ultra'),
	(219, 37, 'CameraTraseira', 125.95, 'S23 Ultra'),
	(220, 37, 'VidroEcra', 220.95, 'S23 Ultra'),
	(221, 37, 'BotaoPower', 80.95, 'S23 Ultra'),
	(222, 37, 'ConectorCarga', 70.95, 'S23 Ultra'),
	(223, 38, 'bateria', 50, 'S23 Plus'),
	(224, 38, 'CameraFrontal', 110.95, 'S23 Plus'),
	(225, 38, 'CameraTraseira', 130.95, 'S23 Plus'),
	(226, 38, 'VidroEcra', 200.95, 'S23 Plus'),
	(227, 38, 'BotaoPower', 80.95, 'S23 Plus'),
	(228, 38, 'ConectorCarga', 70, 'S23 Plus'),
	(229, 39, 'bateria', 50.95, 'S22'),
	(230, 39, 'CameraFrontal', 70.95, 'S22'),
	(231, 39, 'CameraTraseira', 100.95, 'S22'),
	(232, 39, 'VidroEcra', 255.95, 'S22'),
	(233, 39, 'BotaoPower', 80.95, 'S22'),
	(234, 39, 'ConectorCarga', 70, 'S22'),
	(235, 40, 'bateria', 50, 'S22 Ultra'),
	(236, 40, 'CameraFrontal', 70.95, 'S22 Ultra'),
	(237, 40, 'CameraTraseira', 99.95, 'S22 Ultra'),
	(238, 40, 'VidroEcra', 255.95, 'S22 Ultra'),
	(239, 40, 'BotaoPower', 79.95, 'S22 Ultra'),
	(240, 40, 'ConectorCarga', 70, 'S22 Ultra'),
	(241, 41, 'bateria', 50, 'S22 Plus'),
	(242, 41, 'CameraFrontal', 69.95, 'S22 Plus'),
	(243, 41, 'CameraTraseira', 99.65, 'S22 Plus'),
	(244, 41, 'VidroEcra', 190.95, 'S22 Plus'),
	(245, 41, 'BotaoPower', 70.95, 'S22 Plus'),
	(246, 41, 'ConectorCarga', 70, 'S22 Plus'),
	(247, 42, 'bateria', 50, 'S21'),
	(248, 42, 'CameraFrontal', 49.95, 'S21'),
	(249, 42, 'CameraTraseira', 49.95, 'S21'),
	(250, 42, 'VidroEcra', 167.95, 'S21'),
	(251, 42, 'BotaoPower', 39.95, 'S21'),
	(252, 42, 'ConectorCarga', 60.95, 'S21'),
	(253, 43, 'bateria', 50, 'S21 Ultra'),
	(254, 43, 'CameraFrontal', 49.95, 'S21 Ultra'),
	(255, 43, 'CameraTraseira', 99.95, 'S21 Ultra'),
	(256, 43, 'VidroEcra', 217.95, 'S21 Ultra'),
	(257, 43, 'BotaoPower', 69.95, 'S21 Ultra'),
	(258, 43, 'ConectorCarga', 79.95, 'S21 Ultra'),
	(259, 44, 'bateria', 49.95, 'S21 Plus'),
	(260, 44, 'CameraFrontal', 79.95, 'S21 Plus'),
	(261, 44, 'CameraTraseira', 100.95, 'S21 Plus'),
	(262, 44, 'VidroEcra', 207.95, 'S21 Plus'),
	(263, 44, 'BotaoPower', 45.95, 'S21 Plus'),
	(264, 44, 'ConectorCarga', 69.95, 'S20'),
	(265, 45, 'bateria', 50, 'S20'),
	(266, 45, 'CameraFrontal', 69.95, 'S20'),
	(267, 45, 'CameraTraseira', 99.95, 'S20'),
	(268, 45, 'VidroEcra', 209.95, 'S20'),
	(269, 45, 'BotaoPower', 44.95, 'S20'),
	(270, 45, 'ConectorCarga', 69.95, 'S20'),
	(271, 46, 'bateria', 90, 'S20 Ultra'),
	(272, 46, 'CameraFrontal', 40.95, 'S20 Ultra'),
	(273, 46, 'CameraTraseira', 52.95, 'S20 Ultra'),
	(274, 46, 'VidroEcra', 501.95, 'S20 Ultra'),
	(275, 46, 'BotaoPower', 60.95, 'S20 Ultra'),
	(276, 46, 'ConectorCarga', 81.95, 'S20 Ultra'),
	(277, 47, 'bateria', 90, 'S20 Plus'),
	(278, 47, 'CameraFrontal', 40.95, 'S20 Plus'),
	(279, 47, 'CameraTraseira', 52.95, 'S20 Plus'),
	(280, 47, 'VidroEcra', 477.95, 'S20 Plus'),
	(281, 47, 'BotaoPower', 60.95, 'S20 Plus'),
	(282, 47, 'ConectorCarga', 81.95, 'S20 Plus'),
	(283, 48, 'bateria', 90, 'S10'),
	(284, 48, 'CameraFrontal', 40.95, 'S10'),
	(285, 48, 'CameraTraseira', 52.95, 'S10'),
	(286, 48, 'VidroEcra', 457.95, 'S10'),
	(287, 48, 'BotaoPower', 60.95, 'S10'),
	(288, 48, 'ConectorCarga', 81.95, 'S10'),
	(289, 49, 'bateria', 90, 'S10 Ultra'),
	(290, 49, 'CameraFrontal', 40.95, 'S10 Ultra'),
	(291, 49, 'CameraTraseira', 52.95, 'S10 Ultra'),
	(292, 49, 'VidroEcra', 407.95, 'S10 Ultra'),
	(293, 49, 'BotaoPower', 60.95, 'S10 Ultra'),
	(294, 49, 'ConectorCarga', 81.95, 'S10 Ultra'),
	(295, 50, 'bateria', 90, 'S10e'),
	(296, 50, 'CameraFrontal', 40.95, 'S10e'),
	(297, 50, 'CameraTraseira', 52.95, 'S10e'),
	(298, 50, 'VidroEcra', 397.95, 'S10e'),
	(299, 50, 'BotaoPower', 60.95, 'S10e'),
	(300, 50, 'ConectorCarga', 81.95, 'S10e'),
	(301, 51, 'bateria', 90, 'S9'),
	(302, 51, 'CameraFrontal', 40.95, 'S9'),
	(303, 51, 'CameraTraseira', 52.95, 'S9'),
	(304, 51, 'VidroEcra', 467.95, 'S9'),
	(305, 51, 'BotaoPower', 60.95, 'S9'),
	(306, 51, 'ConectorCarga', 81.95, 'S9'),
	(307, 52, 'bateria', 40.95, 'S9 Plus'),
	(308, 52, 'CameraFrontal', 40.95, 'S9 Plus'),
	(309, 52, 'CameraTraseira', 52.95, 'S9 Plus'),
	(310, 52, 'VidroEcra', 477.95, 'S9 Plus'),
	(311, 52, 'BotaoPower', 60.95, 'S9 Plus'),
	(312, 52, 'ConectorCarga', 81.95, 'S9 Plus'),
	(313, 53, 'bateria', 90, 'S8'),
	(314, 53, 'CameraFrontal', 40.95, 'S8'),
	(315, 53, 'CameraTraseira', 42.95, 'S8'),
	(316, 53, 'VidroEcra', 397.95, 'S8'),
	(317, 53, 'BotaoPower', 60.95, 'S8'),
	(318, 53, 'ConectorCarga', 81.95, 'S8'),
	(319, 54, 'bateria', 80, 'S8 Plus'),
	(320, 54, 'CameraFrontal', 60.95, 'S8 Plus'),
	(321, 54, 'CameraTraseira', 90.95, 'S8 Plus'),
	(322, 54, 'VidroEcra', 156.95, 'S8 Plus'),
	(323, 54, 'BotaoPower', 65.95, 'S8 Plus'),
	(324, 54, 'ConectorCarga', 75.95, 'S8 Plus'),
	(325, 55, 'bateria', 80, 'Z Fold 5'),
	(326, 55, 'CameraFrontal', 55.95, 'Z Fold 5'),
	(327, 55, 'CameraTraseira', 85.95, 'Z Fold 5'),
	(328, 55, 'VidroEcra', 124.95, 'Z Fold 5'),
	(329, 55, 'BotaoPower', 65.95, 'Z Fold 5'),
	(330, 55, 'ConectorCarga', 75.95, 'Z Fold 5'),
	(331, 56, 'bateria', 80, 'Z Fold 4'),
	(332, 56, 'CameraFrontal', 50.95, 'Z Fold 4'),
	(333, 56, 'CameraTraseira', 70.95, 'Z Fold 4'),
	(334, 56, 'VidroEcra', 114.95, 'Z Fold 4'),
	(335, 56, 'BotaoPower', 65.95, 'Z Fold 4'),
	(336, 56, 'ConectorCarga', 75.95, 'Z Fold 3'),
	(337, 57, 'bateria', 70, 'Z Fold 3'),
	(338, 57, 'CameraFrontal', 40.95, 'Z Fold 3'),
	(339, 57, 'CameraTraseira', 65.95, 'Z Fold 3'),
	(340, 57, 'VidroEcra', 144.95, 'Z Fold 3'),
	(341, 57, 'BotaoPower', 65.95, 'Z Fold 3'),
	(342, 57, 'ConectorCarga', 70.95, 'Z Fold 3'),
	(343, 58, 'bateria', 70, 'Z Fold 2'),
	(344, 58, 'CameraFrontal', 40.95, 'Z Fold 2'),
	(345, 58, 'CameraTraseira', 65.95, 'Z Fold 2'),
	(346, 58, 'VidroEcra', 124.95, 'Z Fold 2'),
	(347, 58, 'BotaoPower', 65.95, 'Z Fold 2'),
	(348, 58, 'ConectorCarga', 70.95, 'Z Fold 2'),
	(349, 59, 'bateria', 70, 'Z Flip 5'),
	(350, 59, 'CameraFrontal', 40.95, 'Z Flip 5'),
	(351, 59, 'CameraTraseira', 65.95, 'Z Flip 5'),
	(352, 59, 'VidroEcra', 107.95, 'Z Flip 5'),
	(353, 59, 'BotaoPower', 65.95, 'Z Flip 5'),
	(354, 59, 'ConectorCarga', 70.95, 'Z Flip 5'),
	(355, 60, 'bateria', 70, 'Z Flip 4'),
	(356, 60, 'CameraFrontal', 40.95, 'Z Flip 4'),
	(357, 60, 'CameraTraseira', 65.95, 'Z Flip 4'),
	(358, 60, 'VidroEcra', 100.95, 'Z Flip 4'),
	(359, 60, 'BotaoPower', 65.95, 'Z Flip 4'),
	(360, 60, 'ConectorCarga', 70.95, 'Z Flip 4'),
	(361, 61, 'bateria', 50, 'Z Flip 3'),
	(362, 61, 'CameraFrontal', 40.95, 'Z Flip 3'),
	(363, 61, 'CameraTraseira', 70.95, 'Z Flip 3'),
	(364, 61, 'VidroEcra', 144.95, 'Z Flip 3'),
	(365, 61, 'BotaoPower', 50.95, 'Z Flip 3'),
	(366, 61, 'ConectorCarga', 60.95, 'Z Flip 3'),
	(367, 62, 'bateria', 50, 'Z Flip 2'),
	(368, 62, 'CameraFrontal', 40.95, 'Z Flip 2'),
	(369, 62, 'CameraTraseira', 70.95, 'Z Flip 2'),
	(370, 62, 'VidroEcra', 144.95, 'Z Flip 2'),
	(371, 62, 'BotaoPower', 50.95, 'Z Flip 2'),
	(372, 62, 'ConectorCarga', 60.95, 'Z Flip 2'),
	(373, 63, 'bateria', 50, 'A73'),
	(374, 63, 'CameraFrontal', 39.65, 'A73'),
	(375, 63, 'CameraTraseira', 60.95, 'A73'),
	(376, 63, 'VidroEcra', 90.95, 'A73'),
	(377, 63, 'BotaoPower', 50.95, 'A73'),
	(378, 63, 'ConectorCarga', 60.95, 'A73'),
	(379, 64, 'bateria', 50, 'A72'),
	(380, 64, 'CameraFrontal', 50.95, 'A72'),
	(381, 64, 'CameraTraseira', 80.95, 'A72'),
	(382, 64, 'VidroEcra', 254.95, 'A72'),
	(383, 64, 'BotaoPower', 100.95, 'A72'),
	(384, 64, 'ConectorCarga', 100.95, 'A72'),
	(385, 65, 'bateria', 50, 'A71'),
	(386, 65, 'CameraFrontal', 74.95, 'A71'),
	(387, 65, 'CameraTraseira', 89.85, 'A71'),
	(388, 65, 'VidroEcra', 253.95, 'A71'),
	(389, 65, 'BotaoPower', 100.95, 'A71'),
	(390, 65, 'ConectorCarga', 74.95, 'A71'),
	(391, 66, 'bateria', 50, 'A54'),
	(392, 66, 'CameraFrontal', 75.95, 'A54'),
	(393, 66, 'CameraTraseira', 120.95, 'A54'),
	(394, 66, 'VidroEcra', 345.95, 'A54'),
	(395, 66, 'BotaoPower', 80.95, 'A54'),
	(396, 66, 'ConectorCarga', 70.95, 'A54'),
	(397, 67, 'bateria', 50, 'A53'),
	(398, 67, 'CameraFrontal', 80.95, 'A53'),
	(399, 67, 'CameraTraseira', 120.95, 'A53'),
	(400, 67, 'VidroEcra', 334.95, 'A53'),
	(401, 67, 'BotaoPower', 80.95, 'A53'),
	(402, 67, 'ConectorCarga', 70.95, 'A53'),
	(421, 68, 'bateria', 50, 'A52'),
	(422, 68, 'CameraFrontal', 70.95, 'A52'),
	(423, 68, 'CameraTraseira', 120.95, 'A52'),
	(424, 68, 'VidroEcra', 220.95, 'A52'),
	(425, 68, 'BotaoPower', 70.95, 'A52'),
	(426, 68, 'ConectorCarga', 65.95, 'A52'),
	(427, 69, 'bateria', 60, 'A51'),
	(428, 69, 'CameraFrontal', 75.56, 'A51'),
	(429, 69, 'CameraTraseira', 120.95, 'A51'),
	(430, 69, 'VidroEcra', 200.95, 'A51'),
	(431, 69, 'BotaoPower', 70.95, 'A51'),
	(432, 69, 'ConectorCarga', 65.95, 'A51'),
	(433, 70, 'bateria', 60, 'A34'),
	(434, 70, 'CameraFrontal', 70.95, 'A34'),
	(435, 70, 'CameraTraseira', 120.95, 'A34'),
	(436, 70, 'VidroEcra', 180.95, 'A34'),
	(437, 70, 'BotaoPower', 70.95, 'A34'),
	(438, 70, 'ConectorCarga', 65.95, 'A34'),
	(439, 71, 'bateria', 60, 'A33'),
	(440, 71, 'CameraFrontal', 75.95, 'A33'),
	(441, 71, 'CameraTraseira', 120.95, 'A33'),
	(442, 71, 'VidroEcra', 170.85, 'A33'),
	(443, 71, 'BotaoPower', 68.95, 'A33'),
	(444, 71, 'ConectorCarga', 65.95, 'A33'),
	(445, 72, 'bateria', 60, 'A14'),
	(446, 72, 'CameraFrontal', 75.95, 'A14'),
	(447, 72, 'CameraTraseira', 100.95, 'A14'),
	(448, 72, 'VidroEcra', 170.85, 'A14'),
	(449, 72, 'BotaoPower', 68.95, 'A14'),
	(450, 72, 'ConectorCarga', 65.95, 'A14'),
	(451, 73, 'bateria', 60, 'Note 9'),
	(452, 73, 'CameraFrontal', 75.95, 'Note 9'),
	(453, 73, 'CameraTraseira', 110.95, 'Note 9'),
	(454, 73, 'VidroEcra', 170.95, 'Note 9'),
	(455, 73, 'BotaoPower', 68.95, 'Note 9'),
	(456, 73, 'ConectorCarga', 65.95, 'Note 9'),
	(457, 74, 'bateria', 60, 'Note 8'),
	(458, 74, 'CameraFrontal', 75.95, 'Note 8'),
	(459, 74, 'CameraTraseira', 110.95, 'Note 8'),
	(460, 74, 'VidroEcra', 190.85, 'Note 8'),
	(461, 74, 'BotaoPower', 68.95, 'Note 8'),
	(462, 74, 'ConectorCarga', 71.95, 'Note 8'),
	(463, 75, 'bateria', 60, 'Xiomi 14 Pro'),
	(464, 75, 'CameraFrontal', 76.85, 'Xiomi 14 Pro'),
	(465, 75, 'CameraTraseira', 111.95, 'Xiomi 14 Pro'),
	(466, 75, 'VidroEcra', 185.95, 'Xiomi 14 Pro'),
	(467, 75, 'BotaoPower', 67.95, 'Xiomi 14 Pro'),
	(468, 75, 'ConectorCarga', 64.95, 'Xiomi 14 Pro'),
	(469, 76, 'bateria', 60, 'Xiomi 14'),
	(470, 76, 'CameraFrontal', 80.95, 'Xiomi 14'),
	(471, 76, 'CameraTraseira', 125.95, 'Xiomi 14'),
	(472, 76, 'VidroEcra', 165.95, 'Xiomi 14'),
	(473, 76, 'BotaoPower', 67.95, 'Xiomi 14'),
	(474, 76, 'ConectorCarga', 70.95, 'Xiomi 14'),
	(475, 77, 'bateria', 60, 'Xiomi 13'),
	(476, 77, 'CameraFrontal', 74.95, 'Xiomi 13'),
	(477, 77, 'CameraTraseira', 120.95, 'Xiomi 13'),
	(478, 77, 'VidroEcra', 170.95, 'Xiomi 13'),
	(479, 77, 'BotaoPower', 70.95, 'Xiomi 13'),
	(480, 77, 'ConectorCarga', 71.95, 'Xiomi 13'),
	(481, 78, 'bateria', 60, 'Xiomi 13'),
	(482, 78, 'CameraFrontal', 73.54, 'Xiomi 13 Pro'),
	(483, 78, 'CameraTraseira', 111.95, 'Xiomi 13 Pro'),
	(484, 78, 'VidroEcra', 190.85, 'Xiomi 13 Pro'),
	(485, 78, 'BotaoPower', 70.95, 'Xiomi 13 Pro'),
	(486, 78, 'ConectorCarga', 65.95, 'Xiomi 13 Pro'),
	(487, 79, 'bateria', 60, 'Xiomi 13 Pro Plus'),
	(488, 79, 'CameraFrontal', 64.95, 'Xiomi 13 Pro Plus'),
	(489, 79, 'CameraTraseira', 111.95, 'Xiomi 13 Pro Plus'),
	(490, 79, 'VidroEcra', 150.95, 'Xiomi 13 Pro Plus'),
	(491, 79, 'BotaoPower', 50.95, 'Xiomi 13 Pro Plus'),
	(492, 79, 'ConectorCarga', 65.95, 'Xiomi 13 Pro Plus'),
	(493, 80, 'bateria', 60, 'Xiomi 13 Ultra'),
	(494, 80, 'CameraFrontal', 65.4, 'Xiomi 13 Ultra'),
	(495, 80, 'CameraTraseira', 100.95, 'Xiomi 13 Ultra'),
	(496, 80, 'VidroEcra', 160.95, 'Xiomi 13 Ultra'),
	(497, 80, 'BotaoPower', 70.95, 'Xiomi 13 Ultra'),
	(498, 80, 'ConectorCarga', 65.95, 'Xiomi 13 Ultra'),
	(499, 81, 'bateria', 60, 'Xiomi 12'),
	(500, 81, 'CameraFrontal', 100.95, 'Xiomi 12'),
	(501, 81, 'CameraTraseira', 120.56, 'Xiomi 12'),
	(502, 81, 'VidroEcra', 150.95, 'Xiomi 12'),
	(503, 81, 'BotaoPower', 75.95, 'Xiomi 12'),
	(504, 81, 'ConectorCarga', 70.95, 'Xiomi 12'),
	(505, 82, 'bateria', 70, 'Xiomi 12T'),
	(506, 82, 'CameraFrontal', 100.95, 'Xiomi 12T'),
	(507, 82, 'CameraTraseira', 155.95, 'Xiomi 12T'),
	(508, 82, 'VidroEcra', 200.95, 'Xiomi 12T'),
	(509, 82, 'BotaoPower', 80.95, 'Xiomi 12T'),
	(510, 82, 'ConectorCarga', 70.95, 'Xiomi 12T'),
	(511, 83, 'bateria', 70, 'Xiomi 12T Pro'),
	(512, 83, 'CameraFrontal', 100.95, 'Xiomi 12T Pro'),
	(513, 83, 'CameraTraseira', 140.85, 'Xiomi 12T Pro'),
	(514, 83, 'VidroEcra', 200.95, 'Xiomi 12T Pro'),
	(515, 83, 'BotaoPower', 90.95, 'Xiomi 12T Pro'),
	(516, 83, 'ConectorCarga', 70.95, 'Xiomi 12T Pro'),
	(517, 84, 'bateria', 70, 'Xiomi Mi 11'),
	(518, 84, 'CameraFrontal', 100.95, 'Xiomi Mi 11'),
	(519, 84, 'CameraTraseira', 140.95, 'Xiomi Mi 11'),
	(520, 84, 'VidroEcra', 210.95, 'Xiomi Mi 11'),
	(521, 84, 'BotaoPower', 91.95, 'Xiomi Mi 11'),
	(522, 84, 'ConectorCarga', 71.95, 'Xiomi Mi 11'),
	(523, 85, 'bateria', 70, 'Xiomi Mi 11 Lite'),
	(524, 85, 'CameraFrontal', 90.94, 'Xiomi Mi 11 Lite'),
	(525, 85, 'CameraTraseira', 110.95, 'Xiomi Mi 11 Lite'),
	(526, 85, 'VidroEcra', 201.95, 'Xiomi Mi 11 Lite'),
	(527, 85, 'BotaoPower', 91.95, 'Xiomi Mi 11 Lite'),
	(528, 85, 'ConectorCarga', 70.95, 'Xiomi Mi 11 Lite'),
	(529, 86, 'bateria', 80, 'Xiomi Mi 11 Ultra'),
	(530, 86, 'CameraFrontal', 90.95, 'Xiomi Mi 11 Ultra'),
	(531, 86, 'CameraTraseira', 140.95, 'Xiomi Mi 11 Ultra'),
	(532, 86, 'VidroEcra', 210.95, 'Xiomi Mi 11 Ultra'),
	(533, 86, 'BotaoPower', 91.95, 'Xiomi Mi 11 Ultra'),
	(534, 86, 'ConectorCarga', 80.95, 'Xiomi Mi 11 Ultra'),
	(535, 87, 'bateria', 80, 'Xiomi Redmi Note 10'),
	(536, 87, 'CameraFrontal', 90.95, 'Xiomi Redmi Note 10'),
	(537, 87, 'CameraTraseira', 140.95, 'Xiomi Redmi Note 10'),
	(538, 87, 'VidroEcra', 210.95, 'Xiomi Redmi Note 10'),
	(539, 87, 'BotaoPower', 91.95, 'Xiomi Redmi Note 10'),
	(540, 87, 'ConectorCarga', 80.95, 'Xiomi Redmi Note 10'),
	(541, 88, 'bateria', 80, 'Xiomi Mi 10'),
	(542, 88, 'CameraFrontal', 80.95, 'Xiomi Mi 10'),
	(543, 88, 'CameraTraseira', 95.95, 'Xiomi Mi 10'),
	(544, 88, 'VidroEcra', 150.95, 'Xiomi Mi 10'),
	(545, 88, 'BotaoPower', 91.95, 'Xiomi Mi 10'),
	(546, 88, 'ConectorCarga', 80.95, 'Xiomi Mi 10'),
	(547, 89, 'bateria', 80, 'Xiomi Mi 10 Ultra'),
	(548, 89, 'CameraFrontal', 80.95, 'Xiomi Mi 10 Ultra'),
	(549, 89, 'CameraTraseira', 95.95, 'Xiomi Mi 10 Ultra'),
	(550, 89, 'VidroEcra', 150.95, 'Xiomi Mi 10 Ultra'),
	(551, 89, 'BotaoPower', 90.95, 'Xiomi Mi 10 Ultra'),
	(552, 89, 'ConectorCarga', 80.95, 'Xiomi Mi 10 Ultra'),
	(553, 90, 'bateria', 80, 'Xiomi Redmi Note 10 Pro'),
	(554, 90, 'CameraFrontal', 81.95, 'Xiomi Redmi Note 10 Pro'),
	(555, 90, 'CameraTraseira', 95.95, 'Xiomi Redmi Note 10 Pro'),
	(556, 90, 'VidroEcra', 170.23, 'Xiomi Redmi Note 10 Pro'),
	(557, 90, 'BotaoPower', 90.95, 'Xiomi Redmi Note 10 Pro'),
	(558, 90, 'ConectorCarga', 75.95, 'Xiomi Redmi Note 10 Pro'),
	(559, 91, 'bateria', 80, 'Xiomi Redmi Note 11'),
	(560, 91, 'CameraFrontal', 80.95, 'Xiomi Redmi Note 11'),
	(561, 91, 'CameraTraseira', 95.95, 'Xiomi Redmi Note 11'),
	(562, 91, 'VidroEcra', 170.95, 'Xiomi Redmi Note 11'),
	(563, 91, 'BotaoPower', 80.95, 'Xiomi Redmi Note 11'),
	(564, 91, 'ConectorCarga', 70.95, 'Xiomi Redmi Note 11'),
	(565, 92, 'bateria', 80, 'Xiomi Redmi Note 11 Pro'),
	(566, 92, 'CameraFrontal', 70.95, 'Xiomi Redmi Note 11 Pro'),
	(567, 92, 'CameraTraseira', 80.95, 'Xiomi Redmi Note 11 Pro'),
	(568, 92, 'VidroEcra', 150.95, 'Xiomi Redmi Note 11 Pro'),
	(569, 92, 'BotaoPower', 80.01, 'Xiomi Redmi Note 11 Pro'),
	(570, 92, 'ConectorCarga', 70.99, 'Xiomi Redmi Note 11 Pro'),
	(571, 93, 'bateria', 8, 'Xiomi Redmi Note 12'),
	(572, 93, 'CameraFrontal', 65.95, 'Xiomi Redmi Note 12'),
	(573, 93, 'CameraTraseira', 85.95, 'Xiomi Redmi Note 12'),
	(574, 93, 'VidroEcra', 150.95, 'Xiomi Redmi Note 12'),
	(575, 93, 'BotaoPower', 70.95, 'Xiomi Redmi Note 12'),
	(576, 93, 'ConectorCarga', 67.95, 'Xiomi Redmi Note 12'),
	(577, 94, 'bateria', 80, 'Xiomi Redmi Note 12 Pro'),
	(578, 94, 'CameraFrontal', 76.95, 'Xiomi Redmi Note 12 Pro'),
	(579, 94, 'CameraTraseira', 90.95, 'Xiomi Redmi Note 12 Pro'),
	(580, 94, 'VidroEcra', 150.95, 'Xiomi Redmi Note 12 Pro'),
	(581, 94, 'BotaoPower', 80.95, 'Xiomi Redmi Note 12 Pro'),
	(582, 94, 'ConectorCarga', 70.95, 'Xiomi Redmi Note 12 Pro'),
	(583, 95, 'bateria', 70, 'Xiomi Redmi Note 13'),
	(584, 95, 'CameraFrontal', 76.95, 'Xiomi Redmi Note 13'),
	(585, 95, 'CameraTraseira', 100.95, 'Xiomi Redmi Note 13'),
	(586, 95, 'VidroEcra', 180.95, 'Xiomi Redmi Note 13'),
	(587, 95, 'BotaoPower', 60.95, 'Xiomi Redmi Note 13'),
	(588, 95, 'ConectorCarga', 70.95, 'Xiomi Redmi Note 13'),
	(589, 96, 'bateria', 80, 'Xiomi Redmi Note 13 Pro'),
	(590, 96, 'CameraFrontal', 100.95, 'Xiomi Redmi Note 13 Pro'),
	(591, 96, 'CameraTraseira', 120.95, 'Xiomi Redmi Note 13 Pro'),
	(592, 96, 'VidroEcra', 170.95, 'Xiomi Redmi Note 13 Pro'),
	(593, 96, 'BotaoPower', 100.95, 'Xiomi Redmi Note 13 Pro'),
	(594, 96, 'ConectorCarga', 80.95, 'Xiomi Redmi Note 13 Pro'),
	(595, 97, 'bateria', 70, 'Xiomi Redmi Note 13 Pro Plus'),
	(596, 97, 'CameraFrontal', 80.95, 'Xiomi Redmi Note 13 Pro Plus'),
	(597, 97, 'CameraTraseira', 100.95, 'Xiomi Redmi Note 13 Pro Plus'),
	(598, 97, 'VidroEcra', 150.95, 'Xiomi Redmi Note 13 Pro Plus'),
	(599, 97, 'BotaoPower', 80.95, 'Xiomi Redmi Note 13 Pro Plus'),
	(600, 97, 'ConectorCarga', 70.95, 'Xiomi Redmi Note 13 Pro Plus'),
	(601, 98, 'bateria', 70, 'Mate 60 Pro'),
	(602, 98, 'CameraFrontal', 70.95, 'Mate 60 Pro'),
	(603, 98, 'CameraTraseira', 90.95, 'Mate 60 Pro'),
	(604, 98, 'VidroEcra', 140.95, 'Mate 60 Pro'),
	(605, 98, 'BotaoPower', 80.95, 'Mate 60 Pro'),
	(606, 98, 'ConectorCarga', 50.95, 'Mate 60 Pro'),
	(607, 99, 'bateria', 70, 'Mate 60 Pro Plus'),
	(608, 99, 'CameraFrontal', 70.95, 'Mate 60 Pro Plus'),
	(609, 99, 'CameraTraseira', 80.95, 'Mate 60 Pro Plus'),
	(610, 99, 'VidroEcra', 140.95, 'Mate 60 Pro Plus'),
	(611, 99, 'BotaoPower', 70.95, 'Mate 60 Pro Plus'),
	(612, 99, 'ConectorCarga', 50.95, 'Mate 60 Pro Plus'),
	(613, 100, 'bateria', 60, 'Mate X3'),
	(614, 100, 'CameraFrontal', 70.95, 'Mate X3'),
	(615, 100, 'CameraTraseira', 90.95, 'Mate X3'),
	(616, 100, 'VidroEcra', 160.95, 'Mate X3'),
	(617, 100, 'BotaoPower', 70.95, 'Mate X3'),
	(618, 100, 'ConectorCarga', 50.95, 'Mate X3'),
	(619, 101, 'bateria', 60, 'Mate X5'),
	(620, 101, 'CameraFrontal', 70.95, 'Mate X5'),
	(621, 101, 'CameraTraseira', 90.95, 'Mate X5'),
	(622, 101, 'VidroEcra', 150.95, 'Mate X5'),
	(623, 101, 'BotaoPower', 70.95, 'Mate X5'),
	(624, 101, 'ConectorCarga', 50.05, 'Mate X5'),
	(625, 102, 'bateria', 70, 'Nova 10 SE'),
	(626, 102, 'CameraFrontal', 60.95, 'Nova 10 SE'),
	(627, 102, 'CameraTraseira', 100.95, 'Nova 10 SE'),
	(628, 102, 'VidroEcra', 170.95, 'Nova 10 SE'),
	(629, 102, 'BotaoPower', 70.95, 'Nova 10 SE'),
	(630, 102, 'ConectorCarga', 60.96, 'Nova 10 SE'),
	(631, 103, 'bateria', 60, 'Nova 11'),
	(632, 103, 'CameraFrontal', 70.95, 'Nova 11'),
	(633, 103, 'CameraTraseira', 90.95, 'Nova 11'),
	(634, 103, 'VidroEcra', 170.95, 'Nova 11'),
	(635, 103, 'BotaoPower', 60.95, 'Nova 11'),
	(636, 103, 'ConectorCarga', 60.95, 'Nova 11'),
	(637, 104, 'bateria', 60, 'Nova 11i'),
	(638, 104, 'CameraFrontal', 70.95, 'Nova 11i'),
	(639, 104, 'CameraTraseira', 90.95, 'Nova 11i'),
	(640, 104, 'VidroEcra', 170.95, 'Nova 11i'),
	(641, 104, 'BotaoPower', 60.95, 'Nova 11i'),
	(642, 104, 'ConectorCarga', 50.95, 'Nova 11i'),
	(643, 105, 'bateria', 60, 'Nova 11 Pro'),
	(644, 105, 'CameraFrontal', 60.95, 'Nova 11 Pro'),
	(645, 105, 'CameraTraseira', 80.95, 'Nova 11 Pro'),
	(646, 105, 'VidroEcra', 150.95, 'Nova 11 Pro'),
	(647, 105, 'BotaoPower', 60.95, 'Nova 11 Pro'),
	(648, 105, 'ConectorCarga', 50.95, 'Nova 11 Pro'),
	(649, 106, 'bateria', 60, 'Nova y91'),
	(650, 106, 'CameraFrontal', 50.95, 'Nova y91'),
	(651, 106, 'CameraTraseira', 80.95, 'Nova y91'),
	(652, 106, 'VidroEcra', 120.95, 'Nova y91'),
	(653, 106, 'BotaoPower', 70.06, 'Nova y91'),
	(654, 106, 'ConectorCarga', 60.96, 'Nova y91'),
	(655, 107, 'bateria', 60, 'Mate 60 RS'),
	(656, 107, 'CameraFrontal', 50.95, 'Mate 60 RS'),
	(657, 107, 'CameraTraseira', 69.96, 'Mate 60 RS'),
	(658, 107, 'VidroEcra', 178.95, 'Mate 60 RS'),
	(659, 107, 'BotaoPower', 50.95, 'Mate 60 RS'),
	(660, 107, 'ConectorCarga', 50.95, 'Mate 60 RS'),
	(661, 108, 'bateria', 70, 'P60 Pro'),
	(662, 108, 'CameraFrontal', 40.95, 'P60 Pro'),
	(663, 108, 'CameraTraseira', 100.95, 'P60 Pro'),
	(664, 108, 'VidroEcra', 170.95, 'P60 Pro'),
	(665, 108, 'BotaoPower', 60.95, 'P60 Pro'),
	(666, 108, 'ConectorCarga', 70.95, 'P60 Pro'),
	(667, 109, 'bateria', 70, 'P60 Art'),
	(668, 109, 'CameraFrontal', 50.95, 'P60 Art'),
	(669, 109, 'CameraTraseira', 80.95, 'P60 Art'),
	(670, 109, 'VidroEcra', 130.95, 'P60 Art'),
	(671, 109, 'BotaoPower', 60.95, 'P60 Art'),
	(672, 109, 'ConectorCarga', 70.95, 'P60 Art'),
	(673, 110, 'bateria', 60, 'P60'),
	(674, 110, 'CameraFrontal', 40.96, 'P60'),
	(675, 110, 'CameraTraseira', 80.95, 'P60'),
	(676, 110, 'VidroEcra', 160.95, 'P60'),
	(677, 110, 'BotaoPower', 80.9, 'P60'),
	(678, 110, 'ConectorCarga', 70.95, 'P60'),
	(679, 111, 'bateria', 60, 'P50 Pocket'),
	(680, 111, 'CameraFrontal', 80.95, 'P50 Pocket'),
	(681, 111, 'CameraTraseira', 100.95, 'P50 Pocket'),
	(682, 111, 'VidroEcra', 150.95, 'P50 Pocket'),
	(683, 111, 'BotaoPower', 80.95, 'P50 Pocket'),
	(684, 111, 'ConectorCarga', 70.95, 'P50 Pocket'),
	(685, 112, 'bateria', 60, 'Enjoy 60'),
	(686, 112, 'CameraFrontal', 80.95, 'Enjoy 60'),
	(687, 112, 'CameraTraseira', 100.95, 'Enjoy 60'),
	(688, 112, 'VidroEcra', 150.95, 'Enjoy 60'),
	(689, 112, 'BotaoPower', 80.95, 'Enjoy 60'),
	(690, 112, 'ConectorCarga', 70.95, 'Enjoy 60'),
	(691, 113, 'bateria', 60, 'Enjoy 60X'),
	(692, 113, 'CameraFrontal', 80.95, 'Enjoy 60X'),
	(693, 113, 'CameraTraseira', 100.95, 'Enjoy 60X'),
	(694, 113, 'VidroEcra', 150.95, 'Enjoy 60X'),
	(695, 113, 'BotaoPower', 70.95, 'Enjoy 60X'),
	(696, 113, 'ConectorCarga', 79.95, 'Enjoy 60X');

-- A despejar estrutura para tabela assistencia_telemoveis.formularios
DROP TABLE IF EXISTS `formularios`;
CREATE TABLE IF NOT EXISTS `formularios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contato_preferido` enum('email','telefone') NOT NULL,
  `dispositivo` varchar(255) DEFAULT NULL,
  `descricao_problemas` text,
  `preco` double DEFAULT NULL,
  `estado` enum('AGUARDA_CONTACTO','CONTACTADO','A_REPARAR','PRONTO') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'AGUARDA_CONTACTO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela assistencia_telemoveis.formularios: ~3 rows (aproximadamente)
INSERT INTO `formularios` (`id`, `nome_completo`, `telefone`, `email`, `contato_preferido`, `dispositivo`, `descricao_problemas`, `preco`, `estado`) VALUES
	(45, 'rodrigo cochado', '922724010', 'rodrigofdgn@gmail.com', 'telefone', 'Samsung S24', 'bateria', 50, 'PRONTO'),
	(46, 'rodrigo cochado', '927724010', 'rodrigo@gmail.com', 'telefone', 'Modelo não encontrado', 'ta complicado', NULL, 'PRONTO'),
	(50, 'catarina silva', '927724010', 'catarina@gmail.com', 'email', 'Iphone 8 Plus', 'nao funciona', NULL, 'PRONTO');

-- A despejar estrutura para tabela assistencia_telemoveis.modelo
DROP TABLE IF EXISTS `modelo`;
CREATE TABLE IF NOT EXISTS `modelo` (
  `id` int DEFAULT NULL,
  `nome` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela assistencia_telemoveis.modelo: ~0 rows (aproximadamente)
INSERT INTO `modelo` (`id`, `nome`) VALUES
	(1, 'Iphone8'),
	(2, 'Iphone8Plus'),
	(3, 'IphoneX'),
	(4, 'IphoneXPlus'),
	(5, 'Iphone11'),
	(6, 'Iphone11Pro'),
	(7, 'Iphone11ProMax'),
	(8, 'Iphone12'),
	(9, 'Iphone12Pro'),
	(10, 'Iphone12ProMax'),
	(11, 'Iphone13'),
	(12, 'Iphone13Pro'),
	(13, 'Iphone13ProMax'),
	(14, 'Iphone14'),
	(15, 'Iphone14Pro'),
	(16, 'Iphone14ProMax'),
	(17, 'Iphone15'),
	(18, 'Iphone15Pro'),
	(19, 'Iphone15ProMax'),
	(23, 'S24'),
	(24, 'S24U'),
	(25, 'S24P'),
	(27, 'S23'),
	(28, 'S23U'),
	(29, 'S23P'),
	(30, 'S22'),
	(31, 'S22U'),
	(32, 'S22P'),
	(33, 'S21'),
	(34, 'S21U'),
	(35, 'S21P'),
	(36, 'S20'),
	(37, 'S20U'),
	(38, 'S20P'),
	(39, 'S10'),
	(40, 'S10U'),
	(41, 'S10E'),
	(42, 'S9'),
	(43, 'S9P'),
	(44, 'S8'),
	(45, 'S8P'),
	(46, 'ZF5'),
	(47, 'ZF4'),
	(48, 'ZF3'),
	(49, 'ZF2'),
	(50, 'ZFlip5'),
	(51, 'ZFlip4'),
	(52, 'ZFlip3'),
	(53, 'ZFlip2'),
	(54, 'A73'),
	(55, 'A72'),
	(56, 'A71'),
	(57, 'A54'),
	(58, 'A53'),
	(59, 'A52'),
	(60, 'A51'),
	(61, 'A34'),
	(62, 'A33'),
	(63, 'A14'),
	(64, 'N9'),
	(65, 'N8'),
	(66, 'M60P'),
	(67, 'M60PP'),
	(68, 'MX3'),
	(69, 'MX5'),
	(70, 'N10SE'),
	(71, 'N11'),
	(72, 'N11I'),
	(73, 'N11P'),
	(74, 'NY91'),
	(75, 'M60RS'),
	(76, 'P60P'),
	(77, 'P60A'),
	(78, 'P60'),
	(79, 'P50Pocket'),
	(80, 'E60'),
	(81, 'E60X'),
	(82, 'X14P'),
	(83, 'X14'),
	(84, 'X13'),
	(85, 'X13P'),
	(86, 'X13PP'),
	(87, 'X13U'),
	(88, 'X12'),
	(89, 'X12T'),
	(90, 'X12TP'),
	(91, 'XMI11'),
	(92, 'XMI11L'),
	(93, 'XMI11U'),
	(94, 'XRN10'),
	(95, 'XMI10'),
	(96, 'XMI10U'),
	(97, 'XRN10P'),
	(98, 'XRN11'),
	(99, 'XRN11P'),
	(100, 'XRN12'),
	(101, 'XRN12P'),
	(102, 'XRN13'),
	(103, 'XRN13P'),
	(104, 'XRN13PP'),
	(105, 'OA58'),
	(106, 'OA58X'),
	(107, 'OA78'),
	(108, 'OA98'),
	(109, 'OFX6'),
	(110, 'OR10'),
	(111, 'OR10P'),
	(112, 'OR12'),
	(113, 'OR12P');

-- A despejar estrutura para tabela assistencia_telemoveis.valida_login
DROP TABLE IF EXISTS `valida_login`;
CREATE TABLE IF NOT EXISTS `valida_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A despejar dados para tabela assistencia_telemoveis.valida_login: ~5 rows (aproximadamente)
INSERT INTO `valida_login` (`id`, `username`, `password`) VALUES
	(1, 'duarteparedes', 'admin'),
	(2, 'rodrigoconchado', 'admin1'),
	(5, 'user2', 'web'),
	(6, 'user2345', 'web1'),
	(7, 'user2345', 'web2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
