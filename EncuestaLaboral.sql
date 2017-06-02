-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2017 at 05:17 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EncuestaLaboral`
--
CREATE DATABASE IF NOT EXISTS `EncuestaLaboral` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `EncuestaLaboral`;

-- --------------------------------------------------------

--
-- Table structure for table `ajustes`
--

CREATE TABLE IF NOT EXISTS `ajustes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codajuste` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codfactura` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rifcliente` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cliente` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `base_imponible` double DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  `totalajuste` double DEFAULT NULL,
  `concepto` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_ajuste` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_ajuste` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_ajuste` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `user_create` int(11) DEFAULT NULL,
  `monto_exento` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ajuste_codajuste_key` (`codajuste`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ajustes`
--

INSERT INTO `ajustes` (`id`, `codajuste`, `codfactura`, `rifcliente`, `cliente`, `base_imponible`, `iva`, `monto_iva`, `totalajuste`, `concepto`, `motivo_anulacion`, `estado`, `fecha_ajuste`, `hora_ajuste`, `tipo_ajuste`, `subtotal`, `user_create`, `monto_exento`) VALUES
(1, '00000001', '00000008', 'J-12345678', 'Importaciones C.A', 500, 1, 60, 560, 'Ajuste por error en cobro', NULL, 4, '2016-06-18', '07:25:24 am', '1', 560, 1, 0),
(2, '00000002', '00000009', 'J-12345678', 'Importaciones C.A', 500, 3, 0, 500, 'ajuste por error en cobro', NULL, 1, '2016-08-02', '03:22:16 pm', '1', 500, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auditoria`
--

CREATE TABLE IF NOT EXISTS `auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tabla` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1010 ;

--
-- Dumping data for table `auditoria`
--

INSERT INTO `auditoria` (`id`, `tabla`, `codigo`, `accion`, `fecha`, `hora`, `usuario`) VALUES
(823, '', '', 'Cerrada la Sesión', '2017-03-02', '09:39:28 am', 1),
(824, '', '', 'Inicio de Sesion', '2017-03-02', '09:39:45 am', 1),
(825, '', '', 'Cerrada la Sesión', '2017-03-02', '09:57:24 am', 1),
(826, '', '', 'Cerrada la Sesión', '2017-03-02', '10:12:18 am', 1),
(827, '', '', 'Cerrada la Sesión', '2017-03-02', '10:12:41 am', 1),
(828, '', '', 'Cerrada la Sesión', '2017-03-02', '10:14:33 am', 1),
(829, '', '', 'Cerrada la Sesión', '2017-03-02', '10:14:42 am', 1),
(830, '', '', 'Inicio de Sesion', '2017-03-02', '10:50:26 am', 4),
(831, '', '', 'Cerrada la Sesión', '2017-03-02', '11:21:12 am', 4),
(832, '', '', 'Inicio de Sesion', '2017-03-02', '11:21:22 am', 1),
(833, 'preguntas parte 1', '1', 'Nueva Pregunta', '2017-03-02', '01:09:10 pm', 1),
(834, 'preguntas parte 1', '2', 'Nueva Pregunta', '2017-03-02', '01:12:42 pm', 1),
(835, 'preguntas parte 1', '2', 'Editar Cargo', '2017-03-02', '01:27:05 pm', 1),
(836, 'preguntas parte 1', '2', 'Editar Cargo', '2017-03-02', '01:28:43 pm', 1),
(837, 'preguntas parte 1', '2', 'desactivar Pregunta', '2017-03-02', '01:32:07 pm', 1),
(838, 'preguntas parte 1', '2', 'activar Pregunta', '2017-03-02', '01:32:24 pm', 1),
(839, 'preguntas parte 1', '2', 'desactivar Pregunta', '2017-03-02', '01:33:02 pm', 1),
(840, 'preguntas parte 1', '2', 'activar Pregunta', '2017-03-02', '01:33:07 pm', 1),
(841, 'preguntas parte 2', '1', 'Nueva Pregunta', '2017-03-02', '01:42:18 pm', 1),
(842, 'preguntas parte 2', '2', 'Nueva Pregunta', '2017-03-02', '01:43:19 pm', 1),
(843, 'preguntas parte 2', '2', 'Editar Cargo', '2017-03-02', '01:43:39 pm', 1),
(844, 'preguntas parte 2', '2', 'Editar Cargo', '2017-03-02', '01:43:49 pm', 1),
(845, 'preguntas parte 2', '2', 'desactivar Pregunta', '2017-03-02', '01:43:55 pm', 1),
(846, 'preguntas parte 2', '2', 'activar Pregunta', '2017-03-02', '01:44:12 pm', 1),
(847, 'preguntas parte 1', '2', 'Editar Cargo', '2017-03-02', '01:51:41 pm', 1),
(848, 'preguntas parte 2', '2', 'Editar Cargo', '2017-03-02', '01:51:58 pm', 1),
(849, 'preguntas parte 2', '2', 'Editar Cargo', '2017-03-02', '01:52:10 pm', 1),
(850, 'respuestas parte 1', '1', 'Nueva Respuesta', '2017-03-02', '02:12:56 pm', 1),
(851, 'respuestas parte 1', '1', 'Editar Cargo', '2017-03-02', '02:14:53 pm', 1),
(852, 'respuestas parte 1', '1', 'Editar Cargo', '2017-03-02', '02:15:19 pm', 1),
(853, 'respuestas parte 1', '1', 'desactivar Respuesta', '2017-03-02', '02:15:42 pm', 1),
(854, 'respuestas parte 1', '1', 'activar Respuesta', '2017-03-02', '02:15:58 pm', 1),
(855, 'respuestas parte 1', '2', 'Nueva Respuesta', '2017-03-02', '02:16:15 pm', 1),
(856, 'respuestas parte 1', '3', 'Nueva Respuesta', '2017-03-02', '02:16:28 pm', 1),
(857, 'respuestas parte 1', '4', 'Nueva Respuesta', '2017-03-02', '02:16:41 pm', 1),
(858, 'respuestas parte 1', '5', 'Nueva Respuesta', '2017-03-02', '02:16:54 pm', 1),
(859, 'respuestas parte 1', '3', 'desactivar Respuesta', '2017-03-02', '02:17:07 pm', 1),
(860, 'respuestas parte 1', '3', 'activar Respuesta', '2017-03-02', '02:17:20 pm', 1),
(861, 'respuestas parte 1', '1', 'Nueva Respuesta', '2017-03-02', '02:32:47 pm', 1),
(862, 'respuestas parte 1', '2', 'Nueva Respuesta', '2017-03-02', '02:33:09 pm', 1),
(863, 'respuestas parte 1', '3', 'Nueva Respuesta', '2017-03-02', '02:33:22 pm', 1),
(864, 'respuestas parte 1', '4', 'Nueva Respuesta', '2017-03-02', '02:33:33 pm', 1),
(865, 'respuestas parte 1', '5', 'Nueva Respuesta', '2017-03-02', '02:33:42 pm', 1),
(866, 'respuestas parte 1', '5', 'Editar Cargo', '2017-03-02', '02:34:19 pm', 1),
(867, 'respuestas parte 1', '5', 'Editar Cargo', '2017-03-02', '02:34:27 pm', 1),
(868, 'respuestas parte 1', '5', 'desactivar Respuesta', '2017-03-02', '02:34:34 pm', 1),
(869, 'respuestas parte 1', '5', 'activar Respuesta', '2017-03-02', '02:34:46 pm', 1),
(870, '', '', 'Cerrada la Sesión', '2017-03-02', '03:22:18 pm', 1),
(871, '', '', 'Inicio de Sesion', '2017-03-02', '03:31:25 pm', 4),
(872, '', '', 'Inicio de Sesion', '2017-03-02', '03:32:06 pm', 4),
(873, '', '', 'Cerrada la Sesión', '2017-03-02', '03:50:33 pm', 4),
(874, '', '', 'Inicio de Sesion', '2017-03-02', '03:50:39 pm', 1),
(875, '', '', 'Cerrada la Sesión', '2017-03-02', '03:50:43 pm', 1),
(876, '', '', 'Inicio de Sesion', '2017-03-02', '03:50:49 pm', 4),
(877, '', '', 'Inicio de Sesion', '2017-03-02', '03:52:18 pm', 4),
(878, '', '', 'Inicio de Sesion', '2017-03-02', '03:54:10 pm', 4),
(879, '', '', 'Inicio de Sesion', '2017-03-02', '03:57:21 pm', 4),
(880, '', '', 'Cerrada la Sesión', '2017-03-02', '04:06:59 pm', 4),
(881, '', '', 'Inicio de Sesion', '2017-03-02', '04:07:06 pm', 4),
(882, '', '', 'Inicio de Sesion', '2017-03-02', '04:14:17 pm', 4),
(883, '', '', 'Cerrada la Sesión', '2017-03-02', '04:14:25 pm', 4),
(884, '', '', 'Inicio de Sesion', '2017-03-03', '09:40:59 am', 4),
(885, '', '', 'Cerrada la Sesión', '2017-03-03', '10:02:01 am', 4),
(886, '', '', 'Inicio de Sesion', '2017-03-03', '10:02:13 am', 4),
(887, '', '', 'Inicio de Sesion', '2017-03-03', '10:05:07 am', 4),
(888, '', '', 'Inicio de Sesion', '2017-03-03', '10:05:13 am', 4),
(889, '', '', 'Inicio de Sesion', '2017-03-03', '10:05:47 am', 4),
(890, '', '', 'Inicio de Sesion', '2017-03-03', '10:06:02 am', 4),
(891, '', '', 'Inicio de Sesion', '2017-03-03', '10:16:57 am', 4),
(892, '', '', 'Inicio de Sesion', '2017-03-03', '10:32:30 am', 4),
(893, '', '', 'Inicio de Sesion', '2017-03-03', '10:33:10 am', 4),
(894, '', '', 'Cerrada la Sesión', '2017-03-03', '10:33:33 am', 4),
(895, '', '', 'Cerrada la Sesión', '2017-03-03', '10:33:35 am', 4),
(896, '', '', 'Inicio de Sesion', '2017-03-03', '10:33:45 am', 4),
(897, 'cuestionario', '1', 'Editar Cuestionario', '2017-03-03', '01:04:19 pm', 4),
(898, '', '', 'Cerrada la Sesión', '2017-03-03', '01:27:53 pm', 4),
(899, '', '', 'Inicio de Sesion', '2017-03-03', '01:28:01 pm', 4),
(900, '', '', 'Cerrada la Sesión', '2017-03-03', '02:10:08 pm', 4),
(901, '', '', 'Inicio de Sesion', '2017-03-03', '02:10:13 pm', 4),
(902, '', '', 'Cerrada la Sesión', '2017-03-03', '02:23:21 pm', 4),
(903, '', '', 'Inicio de Sesion', '2017-03-03', '02:23:43 pm', 1),
(904, 'preguntas parte 1', '3', 'Nueva Pregunta', '2017-03-03', '02:24:42 pm', 1),
(905, 'preguntas parte 1', '4', 'Nueva Pregunta', '2017-03-03', '02:25:18 pm', 1),
(906, 'preguntas parte 1', '5', 'Nueva Pregunta', '2017-03-03', '02:25:52 pm', 1),
(907, 'preguntas parte 1', '6', 'Nueva Pregunta', '2017-03-03', '02:26:31 pm', 1),
(908, 'preguntas parte 1', '7', 'Nueva Pregunta', '2017-03-03', '02:27:16 pm', 1),
(909, 'preguntas parte 1', '8', 'Nueva Pregunta', '2017-03-03', '02:27:34 pm', 1),
(910, 'preguntas parte 1', '8', 'Editar Cargo', '2017-03-03', '02:28:05 pm', 1),
(911, 'preguntas parte 1', '9', 'Nueva Pregunta', '2017-03-03', '02:28:39 pm', 1),
(912, 'preguntas parte 1', '10', 'Nueva Pregunta', '2017-03-03', '02:29:03 pm', 1),
(913, 'preguntas parte 1', '11', 'Nueva Pregunta', '2017-03-03', '02:29:26 pm', 1),
(914, 'preguntas parte 1', '12', 'Nueva Pregunta', '2017-03-03', '02:29:49 pm', 1),
(915, 'preguntas parte 1', '13', 'Nueva Pregunta', '2017-03-03', '02:30:14 pm', 1),
(916, 'preguntas parte 1', '14', 'Nueva Pregunta', '2017-03-03', '02:30:40 pm', 1),
(917, 'preguntas parte 1', '15', 'Nueva Pregunta', '2017-03-03', '02:31:43 pm', 1),
(918, 'preguntas parte 1', '16', 'Nueva Pregunta', '2017-03-03', '02:32:15 pm', 1),
(919, 'preguntas parte 1', '17', 'Nueva Pregunta', '2017-03-03', '02:33:17 pm', 1),
(920, 'preguntas parte 1', '18', 'Nueva Pregunta', '2017-03-03', '02:33:41 pm', 1),
(921, 'preguntas parte 1', '19', 'Nueva Pregunta', '2017-03-03', '02:34:19 pm', 1),
(922, 'preguntas parte 1', '20', 'Nueva Pregunta', '2017-03-03', '02:34:55 pm', 1),
(923, 'preguntas parte 1', '21', 'Nueva Pregunta', '2017-03-03', '02:35:31 pm', 1),
(924, 'preguntas parte 1', '22', 'Nueva Pregunta', '2017-03-03', '02:36:11 pm', 1),
(925, 'preguntas parte 1', '23', 'Nueva Pregunta', '2017-03-03', '02:36:41 pm', 1),
(926, 'preguntas parte 1', '24', 'Nueva Pregunta', '2017-03-03', '02:39:00 pm', 1),
(927, 'preguntas parte 1', '25', 'Nueva Pregunta', '2017-03-03', '02:39:34 pm', 1),
(928, 'preguntas parte 1', '26', 'Nueva Pregunta', '2017-03-03', '02:40:12 pm', 1),
(929, 'preguntas parte 1', '27', 'Nueva Pregunta', '2017-03-03', '02:40:47 pm', 1),
(930, 'preguntas parte 1', '28', 'Nueva Pregunta', '2017-03-03', '02:41:30 pm', 1),
(931, 'preguntas parte 1', '29', 'Nueva Pregunta', '2017-03-03', '02:42:02 pm', 1),
(932, 'preguntas parte 1', '30', 'Nueva Pregunta', '2017-03-03', '02:42:31 pm', 1),
(933, 'preguntas parte 1', '31', 'Nueva Pregunta', '2017-03-03', '02:43:06 pm', 1),
(934, 'preguntas parte 2', '3', 'Nueva Pregunta', '2017-03-03', '02:44:46 pm', 1),
(935, 'preguntas parte 2', '4', 'Nueva Pregunta', '2017-03-03', '02:45:44 pm', 1),
(936, 'preguntas parte 2', '5', 'Nueva Pregunta', '2017-03-03', '02:46:25 pm', 1),
(937, 'preguntas parte 2', '6', 'Nueva Pregunta', '2017-03-03', '02:46:59 pm', 1),
(938, 'preguntas parte 2', '7', 'Nueva Pregunta', '2017-03-03', '02:47:24 pm', 1),
(939, 'preguntas parte 2', '8', 'Nueva Pregunta', '2017-03-03', '02:48:23 pm', 1),
(940, 'preguntas parte 2', '9', 'Nueva Pregunta', '2017-03-03', '02:49:22 pm', 1),
(941, 'preguntas parte 2', '10', 'Nueva Pregunta', '2017-03-03', '02:50:14 pm', 1),
(942, 'preguntas parte 2', '11', 'Nueva Pregunta', '2017-03-03', '02:50:47 pm', 1),
(943, 'preguntas parte 2', '12', 'Nueva Pregunta', '2017-03-03', '02:52:00 pm', 1),
(944, 'preguntas parte 2', '13', 'Nueva Pregunta', '2017-03-03', '02:52:44 pm', 1),
(945, 'preguntas parte 2', '13', 'Editar Cargo', '2017-03-03', '02:52:59 pm', 1),
(946, 'preguntas parte 2', '14', 'Nueva Pregunta', '2017-03-03', '02:53:40 pm', 1),
(947, 'preguntas parte 2', '15', 'Nueva Pregunta', '2017-03-03', '02:54:23 pm', 1),
(948, 'preguntas parte 2', '16', 'Nueva Pregunta', '2017-03-03', '02:55:24 pm', 1),
(949, 'preguntas parte 2', '17', 'Nueva Pregunta', '2017-03-03', '02:56:05 pm', 1),
(950, 'preguntas parte 2', '18', 'Nueva Pregunta', '2017-03-03', '02:57:17 pm', 1),
(951, 'preguntas parte 2', '18', 'Editar Cargo', '2017-03-03', '02:57:30 pm', 1),
(952, 'preguntas parte 2', '19', 'Nueva Pregunta', '2017-03-03', '02:58:26 pm', 1),
(953, 'preguntas parte 2', '20', 'Nueva Pregunta', '2017-03-03', '02:59:21 pm', 1),
(954, 'preguntas parte 2', '21', 'Nueva Pregunta', '2017-03-03', '03:00:06 pm', 1),
(955, 'preguntas parte 2', '22', 'Nueva Pregunta', '2017-03-03', '03:00:28 pm', 1),
(956, 'preguntas parte 2', '22', 'Editar Cargo', '2017-03-03', '03:00:53 pm', 1),
(957, 'preguntas parte 2', '23', 'Nueva Pregunta', '2017-03-03', '03:01:33 pm', 1),
(958, 'preguntas parte 2', '24', 'Nueva Pregunta', '2017-03-03', '03:02:12 pm', 1),
(959, 'preguntas parte 2', '25', 'Nueva Pregunta', '2017-03-03', '03:03:07 pm', 1),
(960, 'preguntas parte 2', '26', 'Nueva Pregunta', '2017-03-03', '03:03:53 pm', 1),
(961, 'preguntas parte 2', '27', 'Nueva Pregunta', '2017-03-03', '03:04:46 pm', 1),
(962, '', '', 'Cerrada la Sesión', '2017-03-03', '03:07:57 pm', 1),
(963, '', '', 'Inicio de Sesion', '2017-03-03', '03:08:04 pm', 4),
(964, 'encuesta_parte_1', '1', 'Editar Encuesta 1', '2017-03-03', '04:43:03 pm', 4),
(965, '', '', 'Cerrada la Sesión', '2017-03-03', '05:04:01 pm', 4),
(966, '', '', 'Inicio de Sesion', '2017-03-03', '05:04:07 pm', 4),
(967, '', '', 'Cerrada la Sesión', '2017-03-03', '05:05:18 pm', 4),
(968, '', '', 'Inicio de Sesion', '2017-03-03', '05:05:38 pm', 4),
(969, '', '', 'Cerrada la Sesión', '2017-03-03', '05:06:59 pm', 4),
(970, '', '', 'Inicio de Sesion', '2017-03-03', '05:07:08 pm', 4),
(971, 'encuesta_parte_1', '1', 'Editar Encuesta 1', '2017-03-03', '05:18:30 pm', 4),
(972, 'encuesta_parte_2', '1', 'Editar Encuesta 2', '2017-03-03', '05:21:49 pm', 4),
(973, '', '', 'Cerrada la Sesión', '2017-03-03', '05:27:08 pm', 4),
(974, '', '', 'Inicio de Sesion', '2017-03-03', '05:27:16 pm', 4),
(975, 'encuesta_parte_2', '1', 'Editar Encuesta 2', '2017-03-03', '05:28:43 pm', 4),
(976, '', '', 'Cerrada la Sesión', '2017-03-03', '05:36:25 pm', 4),
(977, '', '', 'Cerrada la Sesión', '2017-03-03', '05:36:43 pm', 4),
(978, '', '', 'Inicio de Sesion', '2017-03-03', '05:36:52 pm', 4),
(979, 'encuesta_parte_2', '1', 'Editar Encuesta 2', '2017-03-03', '05:38:23 pm', 4),
(980, '', '', 'Inicio de Sesion', '2017-03-04', '08:27:39 am', 4),
(981, '', '', 'Inicio de Sesion', '2017-03-04', '08:29:39 am', 4),
(982, '', '', 'Cerrada la Sesión', '2017-03-04', '08:31:24 am', 4),
(983, '', '', 'Inicio de Sesion', '2017-03-04', '08:31:30 am', 4),
(984, 'encuesta_parte_2', '1', 'Editar Encuesta 2', '2017-03-04', '08:34:51 am', 4),
(985, '', '', 'Cerrada la Sesión', '2017-03-04', '08:54:51 am', 4),
(986, '', '', 'Cerrada la Sesión', '2017-03-04', '08:56:25 am', 4),
(987, '', '', 'Inicio de Sesion', '2017-03-04', '08:56:40 am', 1),
(988, '', '', 'Cerrada la Sesión', '2017-03-04', '12:55:54 pm', 1),
(989, '', '', 'Inicio de Sesion', '2017-03-04', '12:59:16 pm', 4),
(990, '', '', 'Cerrada la Sesión', '2017-03-04', '12:59:20 pm', 4),
(991, '', '', 'Inicio de Sesion', '2017-03-04', '01:00:15 pm', 6),
(992, 'cuestionario', '2', 'Editar Cuestionario', '2017-03-04', '01:00:46 pm', 6),
(993, 'cuestionario', '2', 'Editar Cuestionario', '2017-03-04', '01:02:57 pm', 6),
(994, '', '', 'Cerrada la Sesión', '2017-03-04', '01:03:05 pm', 6),
(995, '', '', 'Inicio de Sesion', '2017-03-04', '01:03:20 pm', 5),
(996, 'cuestionario', '3', 'Editar Cuestionario', '2017-03-04', '01:04:05 pm', 5),
(997, 'encuesta_parte_1', '3', 'Editar Encuesta 1', '2017-03-04', '01:07:56 pm', 5),
(998, 'encuesta_parte_2', '2', 'Editar Encuesta 2', '2017-03-04', '01:08:51 pm', 5),
(999, '', '', 'Cerrada la Sesión', '2017-03-04', '01:09:06 pm', 5),
(1000, '', '', 'Inicio de Sesion', '2017-03-04', '01:09:15 pm', 6),
(1001, 'encuesta_parte_1', '2', 'Editar Encuesta 1', '2017-03-04', '01:10:27 pm', 6),
(1002, 'encuesta_parte_2', '3', 'Editar Encuesta 2', '2017-03-04', '01:11:36 pm', 6),
(1003, '', '', 'Cerrada la Sesión', '2017-03-04', '01:12:02 pm', 6),
(1004, '', '', 'Inicio de Sesion', '2017-03-04', '01:12:10 pm', 1),
(1005, '', '', 'Cerrada la Sesión', '2017-03-04', '01:19:55 pm', 1),
(1006, '', '', 'Inicio de Sesion', '2017-03-04', '01:20:03 pm', 1),
(1007, '', '', 'Cerrada la Sesión', '2017-03-04', '01:38:42 pm', 1),
(1008, '', '', 'Inicio de Sesion', '2017-03-04', '01:39:17 pm', 1),
(1009, '', '', 'Cerrada la Sesión', '2017-03-04', '05:15:47 pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bancos`
--

CREATE TABLE IF NOT EXISTS `bancos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_banco` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_cuenta_banco` (`cod_banco`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bancos`
--

INSERT INTO `bancos` (`id`, `cod_banco`, `banco`, `estatus`) VALUES
(1, 'BC00001', 'Banco de Venezuela', 1),
(2, 'BC00002', 'Banco Mercantil', 1),
(3, 'BC00003', 'Caja', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE IF NOT EXISTS `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cargo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_empleado_cargo` (`cod_cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `cod_cargo`, `cargo`, `estatus`) VALUES
(1, 'CG00001', 'Almacenista', 1),
(2, 'CG00002', 'Administrador', 1);

-- --------------------------------------------------------

--
-- Table structure for table `claves_sistema`
--

CREATE TABLE IF NOT EXISTS `claves_sistema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT NULL,
  `user_create` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `claves_sistema`
--

INSERT INTO `claves_sistema` (`id`, `clave`, `fecha`, `hora`, `user_create`) VALUES
(1, 'pbkdf2_sha256$12000$ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', '2016-06-24', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cirif` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tipocliente` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `parroquia` int(11) DEFAULT NULL,
  `direccion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tlf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tlf_movil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechacreacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `puntuacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_cliente` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_tipo_cliente_fkey` (`tipo_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id`, `codigo`, `cirif`, `tipocliente`, `nombre`, `estado`, `municipio`, `parroquia`, `direccion`, `tlf`, `tlf_movil`, `fax`, `email`, `fechacreacion`, `estatus`, `puntuacion`, `tipo_cliente`) VALUES
(1, 'C00001', '12345678', 'J', 'Importaciones C.A', 5, 50300, 50308, 'Barrio Río Blanco I', '04165454854', '04161023245', '04165454854', 'importaciones@gmail.com', '2016-06-16 03:31:00', 1, NULL, 'TC00002'),
(2, 'C00002', '584894887', 'J', 'Plasticos C.A', 5, 50300, 50308, 'Barrio Los Cocos', '04141564123', '04161025123', '04141564123', 'plasticos@gmail.com', '2016-06-03 20:20:57', 1, NULL, 'TC00001'),
(3, 'C00003', '14265656', 'V', 'FLOR DEL VALLE PEREZ CHACON', 5, 50300, 50305, 'Las Delicias', '04145635646', '04161025223', '04145635646', 'flor@gmail.com', '2016-08-12 11:16:09', 1, NULL, 'TC00002');

-- --------------------------------------------------------

--
-- Table structure for table `conceptos`
--

CREATE TABLE IF NOT EXISTS `conceptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concepto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `conceptos`
--

INSERT INTO `conceptos` (`id`, `codigo`, `concepto`, `tipo`, `monto`, `fecha_create`, `fecha_update`, `estatus`, `user_create_id`) VALUES
(1, 'CP00001', 'Salario mínimo', 1, 15000, '2016-06-03', '2016-06-03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cuentas`
--

CREATE TABLE IF NOT EXISTS `cuentas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_banco` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuenta` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `monto_inicial` double DEFAULT NULL,
  `monto_total` double DEFAULT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` int(11) DEFAULT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_banco_fkey` (`cod_banco`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cuentas`
--

INSERT INTO `cuentas` (`id`, `codigo`, `cod_banco`, `cuenta`, `tipo`, `monto_inicial`, `monto_total`, `fecha_create`, `fecha_update`, `estatus`, `user_create_id`) VALUES
(1, 'CT00001', 'BC00001', '12345678912345678912', 1, 50000, 716.54, '2016-06-03', '2016-06-03', 1, 1),
(2, 'CT00002', 'BC00002', '12345678912345678912', 1, 40000, 32672.46, '2016-06-03', '2016-06-03', 1, 1),
(3, 'CT00003', 'BC00003', '00000000000000000000', 4, 0, 188, '2016-06-05', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cuestionario`
--

CREATE TABLE IF NOT EXISTS `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `cedula` int(11) DEFAULT NULL,
  `nombres` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nivel_instruc` int(11) DEFAULT NULL,
  `hijos` int(11) DEFAULT NULL,
  `antiguedad` int(11) DEFAULT NULL,
  `sueldo` int(11) DEFAULT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cuestionario`
--

INSERT INTO `cuestionario` (`id`, `codigo`, `cedula`, `nombres`, `apellidos`, `sexo`, `estado_civil`, `edad`, `nivel_instruc`, `hijos`, `antiguedad`, `sueldo`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`) VALUES
(1, 1, NULL, NULL, NULL, 1, 1, 3, 5, 1, 2, 1, '2017-03-03', '2017-03-03', '11:09:23 am', '01:03:27 pm', 4),
(2, 2, NULL, NULL, NULL, 2, 1, 2, 5, 1, 2, 1, '2017-03-04', '2017-03-04', '01:00:16 pm', '01:02:35 pm', 6),
(3, 3, NULL, NULL, NULL, 1, 1, 2, 5, 1, 2, 1, '2017-03-04', '2017-03-04', '01:03:22 pm', '01:03:22 pm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cirif` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tipodoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `parroquia` int(11) DEFAULT NULL,
  `direccion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tlf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechacreacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `puntuacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salario` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `escala` double NOT NULL,
  `monto` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `empleados_cargo_fkey` (`cargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `empleados`
--

INSERT INTO `empleados` (`id`, `codigo`, `cirif`, `tipodoc`, `nombre`, `estado`, `municipio`, `parroquia`, `direccion`, `tlf`, `fax`, `email`, `fechacreacion`, `estatus`, `puntuacion`, `cargo`, `salario`, `escala`, `monto`) VALUES
(1, 'E00001', '12345646', 'V', 'Jose Luis Pérez González', 5, 50300, 50308, 'San Luis, Calle #2, Casa #30', '04166654594', NULL, 'jose@gmail.com', '2016-06-22 16:08:15', 1, NULL, 'CG00001', 'CP00001', 1.5, 22500),
(2, 'E00002', '18993867', 'V', 'José Solorzano', 5, 50300, 50308, 'Barrio Río Blanco I', '04161073358', NULL, 'jose@gmail.com', '2016-07-02 11:22:43', 1, NULL, 'CG00002', 'CP00001', 1.5, 22500),
(3, 'E00003', '19151341', 'V', 'Ana Solorzano', 5, 50300, 50308, 'Barrio Río Blanco I', '04144564545', NULL, 'ana@gmail.com', '2016-07-02 11:25:22', 1, NULL, 'CG00002', 'CP00001', 2, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `encuesta_parte_1`
--

CREATE TABLE IF NOT EXISTS `encuesta_parte_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `respuesta_1` int(11) NOT NULL,
  `respuesta_2` int(11) NOT NULL,
  `respuesta_3` int(11) NOT NULL,
  `respuesta_4` int(11) NOT NULL,
  `respuesta_5` int(11) NOT NULL,
  `respuesta_6` int(11) NOT NULL,
  `respuesta_7` int(11) NOT NULL,
  `respuesta_8` int(11) NOT NULL,
  `respuesta_9` int(11) NOT NULL,
  `respuesta_10` int(11) NOT NULL,
  `respuesta_11` int(11) NOT NULL,
  `respuesta_12` int(11) NOT NULL,
  `respuesta_13` int(11) NOT NULL,
  `respuesta_14` int(11) NOT NULL,
  `respuesta_15` int(11) NOT NULL,
  `respuesta_16` int(11) NOT NULL,
  `respuesta_17` int(11) NOT NULL,
  `respuesta_18` int(11) NOT NULL,
  `respuesta_19` int(11) NOT NULL,
  `respuesta_20` int(11) NOT NULL,
  `respuesta_21` int(11) NOT NULL,
  `respuesta_22` int(11) NOT NULL,
  `respuesta_23` int(11) NOT NULL,
  `respuesta_24` int(11) NOT NULL,
  `respuesta_25` int(11) NOT NULL,
  `respuesta_26` int(11) NOT NULL,
  `respuesta_27` int(11) NOT NULL,
  `respuesta_28` int(11) NOT NULL,
  `respuesta_29` int(11) NOT NULL,
  `respuesta_30` int(11) NOT NULL,
  `respuesta_31` int(11) NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `encuesta_parte_1`
--

INSERT INTO `encuesta_parte_1` (`id`, `codigo`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`, `respuesta_6`, `respuesta_7`, `respuesta_8`, `respuesta_9`, `respuesta_10`, `respuesta_11`, `respuesta_12`, `respuesta_13`, `respuesta_14`, `respuesta_15`, `respuesta_16`, `respuesta_17`, `respuesta_18`, `respuesta_19`, `respuesta_20`, `respuesta_21`, `respuesta_22`, `respuesta_23`, `respuesta_24`, `respuesta_25`, `respuesta_26`, `respuesta_27`, `respuesta_28`, `respuesta_29`, `respuesta_30`, `respuesta_31`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`) VALUES
(1, 1, 3, 3, 3, 3, 1, 2, 5, 5, 4, 3, 1, 2, 4, 3, 3, 3, 5, 3, 2, 5, 1, 5, 3, 1, 3, 4, 2, 2, 2, 2, 4, '2017-03-03', '2017-03-03', '02:10:13 pm', '05:17:23 pm', 4),
(2, 2, 1, 4, 2, 3, 5, 1, 3, 1, 4, 2, 3, 4, 2, 1, 4, 1, 3, 2, 1, 5, 4, 5, 2, 2, 3, 1, 5, 3, 3, 2, 1, '2017-03-04', '2017-03-04', '01:02:59 pm', '01:09:16 pm', 6),
(3, 3, 1, 3, 2, 4, 1, 4, 5, 5, 2, 1, 3, 3, 2, 1, 1, 2, 3, 2, 4, 4, 4, 2, 3, 3, 4, 1, 2, 2, 1, 5, 3, '2017-03-04', '2017-03-04', '01:04:07 pm', '01:04:07 pm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `encuesta_parte_2`
--

CREATE TABLE IF NOT EXISTS `encuesta_parte_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `respuesta_1` int(11) NOT NULL,
  `respuesta_2` int(11) NOT NULL,
  `respuesta_3` int(11) NOT NULL,
  `respuesta_4` int(11) NOT NULL,
  `respuesta_5` int(11) NOT NULL,
  `respuesta_6` int(11) NOT NULL,
  `respuesta_7` int(11) NOT NULL,
  `respuesta_8` int(11) NOT NULL,
  `respuesta_9` int(11) NOT NULL,
  `respuesta_10` int(11) NOT NULL,
  `respuesta_11` int(11) NOT NULL,
  `respuesta_12` int(11) NOT NULL,
  `respuesta_13` int(11) NOT NULL,
  `respuesta_14` int(11) NOT NULL,
  `respuesta_15` int(11) NOT NULL,
  `respuesta_16` int(11) NOT NULL,
  `respuesta_17` int(11) NOT NULL,
  `respuesta_18` int(11) NOT NULL,
  `respuesta_19` int(11) NOT NULL,
  `respuesta_20` int(11) NOT NULL,
  `respuesta_21` int(11) NOT NULL,
  `respuesta_22` int(11) NOT NULL,
  `respuesta_23` int(11) NOT NULL,
  `respuesta_24` int(11) NOT NULL,
  `respuesta_25` int(11) NOT NULL,
  `respuesta_26` int(11) NOT NULL,
  `respuesta_27` int(11) NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `encuesta_parte_2`
--

INSERT INTO `encuesta_parte_2` (`id`, `codigo`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`, `respuesta_6`, `respuesta_7`, `respuesta_8`, `respuesta_9`, `respuesta_10`, `respuesta_11`, `respuesta_12`, `respuesta_13`, `respuesta_14`, `respuesta_15`, `respuesta_16`, `respuesta_17`, `respuesta_18`, `respuesta_19`, `respuesta_20`, `respuesta_21`, `respuesta_22`, `respuesta_23`, `respuesta_24`, `respuesta_25`, `respuesta_26`, `respuesta_27`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`) VALUES
(1, 1, 2, 2, 4, 3, 5, 3, 3, 4, 2, 4, 4, 3, 3, 2, 4, 3, 2, 3, 3, 3, 3, 3, 2, 1, 5, 4, 3, '2017-03-03', '2017-03-04', '05:37:27 pm', '08:31:56 am', 4),
(2, 2, 3, 3, 2, 4, 1, 1, 4, 2, 2, 3, 1, 2, 1, 3, 3, 1, 2, 2, 5, 2, 3, 1, 1, 4, 4, 1, 1, '2017-03-04', '2017-03-04', '01:07:57 pm', '01:07:58 pm', 5),
(3, 3, 2, 3, 2, 3, 3, 4, 2, 4, 3, 4, 4, 3, 4, 2, 3, 3, 2, 3, 4, 2, 2, 5, 3, 2, 1, 2, 2, '2017-03-04', '2017-03-04', '01:10:28 pm', '01:10:28 pm', 6);

-- --------------------------------------------------------

--
-- Table structure for table `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_estado` int(11) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `estados_estado_key` (`estado`),
  UNIQUE KEY `estados_cod_estado_key` (`cod_estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `estados`
--

INSERT INTO `estados` (`id`, `cod_estado`, `estado`) VALUES
(1, 1, 'DISTRITO CAPITAL'),
(2, 2, 'AMAZONAS'),
(3, 3, 'ANZOATEGUI'),
(4, 4, 'APURE'),
(5, 5, 'ARAGUA'),
(6, 6, 'BARINAS'),
(7, 7, 'BOLIVAR'),
(8, 8, 'CARABOBO'),
(9, 9, 'COJEDES'),
(10, 10, 'DELTA AMACURO'),
(11, 11, 'FALCON'),
(12, 12, 'GUARICO'),
(13, 13, 'LARA'),
(14, 14, 'MERIDA'),
(15, 15, 'MIRANDA'),
(16, 16, 'MONAGAS'),
(17, 17, 'NUEVA ESPARTA'),
(18, 18, 'PORTUGUESA'),
(19, 19, 'SUCRE'),
(20, 20, 'TACHIRA'),
(21, 21, 'TRUJILLO'),
(22, 22, 'YARACUY'),
(23, 23, 'ZULIA'),
(24, 24, 'VARGAS'),
(25, 25, 'TERRITORIO INSULAR FRANCISCO DE MIRANDA'),
(26, 26, 'OTRAS DEPENDECIAS FEDERALES'),
(27, 27, 'REGISTRO DE NORMALIZACIÓN (ESTADO)');

-- --------------------------------------------------------

--
-- Table structure for table `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_cod_factura` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codfactura` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codcliente` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cliente` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `base_imponible` double DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `totalfactura` double DEFAULT NULL,
  `observaciones` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_emision` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_emision` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `monto_desc` double DEFAULT NULL,
  `condicion_pago` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto_exento` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `num_cheque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_recibo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_transf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_deposito` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto_cheque` double NOT NULL,
  `monto_recibo` double NOT NULL,
  `monto_efectivo` double NOT NULL,
  `monto_transf` double NOT NULL,
  `monto_deposito` double NOT NULL,
  `num_control` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firma_almacen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_entrega` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_entrega` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nota_credito` double DEFAULT NULL,
  `nota_debito` double DEFAULT NULL,
  `ajustes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facturas_codfactura_key` (`codfactura`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `facturas`
--

INSERT INTO `facturas` (`id`, `pre_cod_factura`, `codfactura`, `codcliente`, `cliente`, `base_imponible`, `iva`, `monto_iva`, `descuento`, `totalfactura`, `observaciones`, `motivo_anulacion`, `estado`, `fecha_emision`, `hora_emision`, `monto_desc`, `condicion_pago`, `monto_exento`, `subtotal`, `num_cheque`, `num_recibo`, `num_transf`, `num_deposito`, `monto_cheque`, `monto_recibo`, `monto_efectivo`, `monto_transf`, `monto_deposito`, `num_control`, `firma_almacen`, `fecha_entrega`, `hora_entrega`, `nota_credito`, `nota_debito`, `ajustes`) VALUES
(1, NULL, '00000001', 'C00001', 'Importaciones C.A', 1800, NULL, 216, 0, 2016, '', 'prueba de anulación', 4, '2016-06-04', '01:48:38 am', 0, '4', 0, 1800, '54854899', '', '', '', 0, 0, 0, 0, 0, '5272', 'JOSE ALFREDO SOLORZANO HERNANDEZ (almacen)', '2016-07-16', '02:45:34 pm', NULL, NULL, NULL),
(2, NULL, '00000002', 'C00001', 'Importaciones C.A', 2400, NULL, 288, 0, 2688, '', NULL, 4, '2016-06-04', '06:09:54 pm', 0, '2', 0, 2400, '', '11456485', '', '', 0, 0, 0, 0, 0, '258', 'Pedro Pérez', '2016-06-05', '05:18:31 am', NULL, NULL, NULL),
(3, NULL, '00000003', 'C00001', 'Importaciones C.A', 7200, NULL, 864, 0, 8064, 'observaciones de prueba', NULL, 4, '2016-06-04', '11:45:03 pm', 0, '5', 0, 7200, '', '', '', '34548548', 0, 0, 0, 0, 0, '23161', 'Pedro Pérez', '2016-06-19', '07:31:32 pm', NULL, NULL, NULL),
(4, NULL, '00000004', 'C00001', 'Importaciones C.A', 1200, NULL, 144, 0, 1344, 'Compra en efectivo', NULL, 4, '2016-06-05', '01:37:36 am', 0, '3', 0, 1200, '', '', '', '', 0, 0, 0, 0, 0, '30127', 'Pedro Pérez', '2016-06-19', '07:32:34 pm', NULL, NULL, NULL),
(5, NULL, '00000005', 'C00001', 'Importaciones C.A', 1200, NULL, 144, 0, 1344, '', NULL, 2, '2016-06-11', '12:03:35 am', 0, '3', 0, 1200, '', '', '', '', 0, 0, 0, 0, 0, '13774', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, '00000006', 'C00001', 'Importaciones C.A', 1800, NULL, 216, 0, 2016, '', 'Prueba de anulación', 3, '2016-06-11', '05:42:01 pm', 0, '3', 0, 1800, '', '', '', '', 0, 0, 0, 0, 0, '7727', NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '00000007', 'C00001', 'Importaciones C.A', 1200, NULL, 144, 0, 1344, '', NULL, 2, '2016-06-16', '05:25:09 am', 0, '2', 0, 1200, '', '18518448956', '', '', 0, 0, 0, 0, 0, '21839', NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '00000008', 'C00001', 'Importaciones C.A', 6000, NULL, 720, 0, 6720, 'Prueba de ajustes', NULL, 2, '2016-06-18', '06:45:10 am', 0, '1', 0, 6000, '17458676878686', '', '', '', 0, 0, 0, 0, 0, '25200', NULL, NULL, NULL, 0, 0, ''),
(9, NULL, '00000009', 'C00001', 'Importaciones C.A', 1200, NULL, 144, 0, 1344, 'Prueba de ajuste', NULL, 2, '2016-06-18', '07:27:15 am', 0, '1', 0, 1200, '7528657567567', '', '', '', 0, 0, 0, 0, 0, '8761', NULL, NULL, NULL, 560, 0, '00000001'),
(10, NULL, '00000010', 'C00001', 'Importaciones C.A', 1200, NULL, 144, 0, 1344, 'Registro de prueba', NULL, 2, '2016-08-02', '02:12:10 pm', 0, '1,3', 0, 1200, '', '', '', '', 1000, 0, 344, 0, 0, '1093554146', NULL, NULL, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `facturas_ps`
--

CREATE TABLE IF NOT EXISTS `facturas_ps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codfacturaps` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codfactura` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `cod_producto_servicio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `producto_servicio` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facturas_ps_codfacturaps_key` (`codfacturaps`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `facturas_ps`
--

INSERT INTO `facturas_ps` (`id`, `codfacturaps`, `codfactura`, `tipo`, `cod_producto_servicio`, `producto_servicio`, `precio`, `cantidad`, `importe`, `monto_iva`) VALUES
(5, '00000005', '00000005', 1, '00001', 'Cable UTP', 600, 2, 1200, 72),
(6, '00000006', '00000006', 1, '00001', 'Cable UTP', 600, 3, 1800, 72),
(7, '00000007', '00000007', 1, '00001', 'Cable UTP', 600, 2, 1200, 72),
(8, '00000008', '00000008', 1, '00001', 'Cable UTP', 600, 2, 1200, 72),
(9, '00000009', '00000008', 1, '00003', 'UPS', 2400, 2, 4800, 288),
(10, '00000010', '00000009', 1, '00001', 'Cable UTP', 600, 2, 1200, 72),
(11, '00000011', '00000010', 1, '00001', 'Cable UTP', 600, 2, 1200, 72);

-- --------------------------------------------------------

--
-- Table structure for table `ganancia`
--

CREATE TABLE IF NOT EXISTS `ganancia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ganancia`
--

INSERT INTO `ganancia` (`id`, `codigo`, `valor`, `fecha_create`, `fecha_update`, `user_create_id`) VALUES
(1, 'G00001', 30, '2016-06-03', '2016-06-03', 1),
(2, 'G00002', 20, '2016-06-03', '2016-06-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `impuesto`
--

CREATE TABLE IF NOT EXISTS `impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `impuesto`
--

INSERT INTO `impuesto` (`id`, `nombre`, `valor`, `fecha_create`, `fecha_update`, `user_create_id`, `codigo`) VALUES
(1, 'IVA', 12, '2016-06-03', '2016-06-03', 1, 'G00001'),
(2, 'IVA', 8, '2016-06-03', '2016-06-03', 1, 'G00002'),
(3, 'Exento', 0, '2016-06-03', '2016-06-03', 1, 'G00003');

-- --------------------------------------------------------

--
-- Table structure for table `movimientos`
--

CREATE TABLE IF NOT EXISTS `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banco` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cuenta` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double NOT NULL,
  `tipo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `concepto` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_create` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `movimientos`
--

INSERT INTO `movimientos` (`id`, `codigo`, `banco`, `cuenta`, `monto`, `tipo`, `concepto`, `fecha`, `hora`, `user_create`) VALUES
(1, '00000001', 'BC00003', 'CT00003', 1344, '1', 'Nuevo ingreso por factura 00000004', '2016-06-10', '11:44:18 pm', 1),
(2, '00000002', 'BC00003', 'CT00003', 1344, '1', 'Nuevo ingreso por factura 00000005', '2016-06-11', '01:43:12 am', 1),
(3, '00000003', 'BC00003', 'CT00003', 1000, '2', 'Nueva deducción por transferencia TR00003', '2016-06-12', '03:49:26 am', 1),
(4, '00000004', 'BC00001', 'CT00001', 1000, '1', 'Nuevo ingreso por transferencia TR00003', '2016-06-12', '03:49:26 am', 1),
(5, '00000005', 'BC00002', 'CT00002', 1344, '1', 'Nuevo ingreso por factura 00000007', '2016-06-16', '05:52:55 am', 1),
(6, '00000006', 'BC00002', 'CT00002', 6720, '1', 'Nuevo ingreso por factura 00000008', '2016-06-18', '07:21:16 am', 1),
(7, '00000007', 'BC00002', 'CT00002', 1344, '1', 'Nuevo ingreso por factura 00000009', '2016-06-18', '07:28:03 am', 1),
(8, '00000008', 'BC00002', 'CT00002', 1344, '1', 'Nuevo ingreso por factura 00000009', '2016-06-18', '08:43:16 am', 1),
(9, '00000009', 'BC00002', 'CT00002', 0, '1', 'Nuevo ingreso por factura 00000001', '2016-06-21', '08:21:44 am', 1),
(10, '00000010', 'BC00002', 'CT00002', 150, '2', 'Nueva deducción por pago 00000001', '2016-06-21', '08:34:59 am', 1),
(11, '00000011', 'BC00001', 'CT00001', 21801.92, '2', 'Nueva deducción por recibo 00000001', '2016-07-03', '11:56:16 pm', 1),
(12, '00000012', 'BC00002', 'CT00002', 23461.54, '2', 'Nueva deducción por recibo 00000002', '2016-07-04', '01:06:36 am', 1),
(13, '00000013', 'BC00001', 'CT00001', 38561.54, '2', 'Nueva deducción por recibo 00000003', '2016-07-16', '03:29:00 pm', 1),
(14, '00000014', 'BC00002', 'CT00002', 1344, '1', 'Nuevo ingreso por factura 00000010', '2016-08-18', '11:39:01 pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `municipios`
--

CREATE TABLE IF NOT EXISTS `municipios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_municipio` int(11) DEFAULT NULL,
  `municipio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `municipios_estado_id_1bb33a65_uniq` (`estado_id`,`cod_municipio`,`municipio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=341 ;

--
-- Dumping data for table `municipios`
--

INSERT INTO `municipios` (`id`, `cod_municipio`, `municipio`, `estado_id`) VALUES
(1, 10100, 'LIBERTADOR', 1),
(2, 20100, 'AUTÓNOMO ALTO ORINOCO', 2),
(3, 20200, 'AUTÓNOMO ATABAPO', 2),
(4, 20300, 'AUTÓNOMO ATURES', 2),
(5, 20400, 'AUTONOMO AUTANA', 2),
(6, 20500, 'AUTÓNOMO MAROA', 2),
(7, 20600, 'AUTÓNOMO MANAPIARE', 2),
(8, 20700, 'AUTÓNOMO RÍO NEGRO', 2),
(9, 30100, 'ANACO', 3),
(10, 30200, 'ARAGUA', 3),
(11, 30300, 'FERNANDO DE PEÑALVER', 3),
(12, 30400, 'FRANCISCO DEL CARMEN CARVAJAL', 3),
(13, 30500, 'FRANCISCO DE MIRANDA', 3),
(14, 30600, 'GUANTA', 3),
(15, 30700, 'INDEPENDENCIA', 3),
(16, 30800, 'JUAN ANTONIO SOTILLO', 3),
(17, 30900, 'JUAN MANUEL CAJIGAL', 3),
(18, 31000, 'JOSÉ GREGORIO MONAGAS', 3),
(19, 31100, 'LIBERTAD', 3),
(20, 31200, 'MANUEL EZEQUIEL BRUZUAL', 3),
(21, 31300, 'PEDRO MARÍA FREITES', 3),
(22, 31400, 'PÍRITU', 3),
(23, 31500, 'SAN JOSÉ DE GUANIPA', 3),
(24, 31600, 'SAN JUAN DE CAPISTRANO', 3),
(25, 31700, 'SANTA ANA', 3),
(26, 31800, 'SIMÓN BOLÍVAR', 3),
(27, 31900, 'SIMÓN RODRÍGUEZ', 3),
(28, 32000, 'SIR ARTHUR MC GREGOR', 3),
(29, 32100, 'TURÍSTICO DIEGO BAUTISTA URBANEJA', 3),
(30, 40100, 'ACHAGUAS', 4),
(31, 40200, 'BIRUACA', 4),
(32, 40300, 'MUÑOZ', 4),
(33, 40400, 'PÁEZ', 4),
(34, 40500, 'PEDRO CAMEJO', 4),
(35, 40600, 'RÓMULO GALLEGOS', 4),
(36, 40700, 'SAN FERNANDO', 4),
(37, 50100, 'BOLÍVAR', 5),
(38, 50200, 'CAMATAGUA', 5),
(39, 50300, 'GIRARDOT', 5),
(40, 50400, 'JOSÉ ÁNGEL LAMAS', 5),
(41, 50500, 'JOSÉ FÉLIX RIBAS', 5),
(42, 50600, 'JOSÉ RAFAEL REVENGA', 5),
(43, 50700, 'LIBERTADOR', 5),
(44, 50800, 'MARIO BRICEÑO IRAGORRY', 5),
(45, 50900, 'SAN CASIMIRO', 5),
(46, 51000, 'SAN SEBASTIÁN', 5),
(47, 51100, 'SANTIAGO MARIÑO', 5),
(48, 51200, 'SANTOS MICHELENA', 5),
(49, 51300, 'SUCRE', 5),
(50, 51400, 'TOVAR', 5),
(51, 51500, 'URDANETA', 5),
(52, 51600, 'ZAMORA', 5),
(53, 51700, 'FRANCISCO LINARES ALCANTARA', 5),
(54, 51800, 'OCUMARE DE LA COSTA DE ORO', 5),
(55, 60100, 'ALBERTO ARVELO TORREALBA', 6),
(56, 60200, 'ANTONIO JOSÉ DE SUCRE', 6),
(57, 60300, 'ARISMENDI', 6),
(58, 60400, 'BARINAS', 6),
(59, 60500, 'BOLÍVAR', 6),
(60, 60600, 'CRUZ PAREDES', 6),
(61, 60700, 'EZEQUIEL ZAMORA', 6),
(62, 60800, 'OBISPOS', 6),
(63, 60900, 'PEDRAZA', 6),
(64, 61000, 'ROJAS', 6),
(65, 61100, 'SOSA', 6),
(66, 61200, 'ANDRÉS ELOY BLANCO', 6),
(67, 70100, 'CARONÍ', 7),
(68, 70200, 'CEDEÑO', 7),
(69, 70300, 'EL CALLAO', 7),
(70, 70400, 'GRAN SABANA', 7),
(71, 70500, 'HERES', 7),
(72, 70600, 'PIAR', 7),
(73, 70700, 'RAÚL LEONI', 7),
(74, 70800, 'ROSCIO', 7),
(75, 70900, 'SIFONTES', 7),
(76, 71000, 'SUCRE', 7),
(77, 71100, 'PADRE PEDRO CHIEN', 7),
(78, 80100, 'BEJUMA', 8),
(79, 80200, 'CARLOS ARVELO', 8),
(80, 80300, 'DIEGO IBARRA', 8),
(81, 80400, 'GUACARA', 8),
(82, 80500, 'JUAN JOSÉ MORA', 8),
(83, 80600, 'LIBERTADOR', 8),
(84, 80700, 'LOS GUAYOS', 8),
(85, 80800, 'MIRANDA', 8),
(86, 80900, 'MONTALBÁN', 8),
(87, 81000, 'NAGUANAGUA', 8),
(88, 81100, 'PUERTO CABELLO', 8),
(89, 81200, 'SAN DIEGO', 8),
(90, 81300, 'SAN JOAQUÍN', 8),
(91, 81400, 'VALENCIA', 8),
(92, 90100, 'ANZOÁTEGUI', 9),
(93, 90200, 'FALCÓN', 9),
(94, 90300, 'GIRARDOT', 9),
(95, 90400, 'LIMA BLANCO', 9),
(96, 90500, 'PAO DE SAN JUAN BAUTISTA', 9),
(97, 90600, 'RICAURTE', 9),
(98, 90700, 'RÓMULO GALLEGOS', 9),
(99, 90800, 'SAN CARLOS', 9),
(100, 90900, 'TINACO', 9),
(101, 100100, 'ANTONIO DÍAZ', 10),
(102, 100200, 'CASACOIMA', 10),
(103, 100300, 'PEDERNALES', 10),
(104, 100400, 'TUCUPITA', 10),
(105, 110100, 'ACOSTA', 11),
(106, 110200, 'BOLÍVAR', 11),
(107, 110300, 'BUCHIVACOA', 11),
(108, 110400, 'CACIQUE MANAURE', 11),
(109, 110500, 'CARIRUBANA', 11),
(110, 110600, 'COLINA', 11),
(111, 110700, 'DABAJURO', 11),
(112, 110800, 'DEMOCRACIA', 11),
(113, 110900, 'FALCÓN', 11),
(114, 111000, 'FEDERACIÓN', 11),
(115, 111100, 'JACURA', 11),
(116, 111200, 'LOS TAQUES', 11),
(117, 111300, 'MAUROA', 11),
(118, 111400, 'MIRANDA', 11),
(119, 111500, 'MONSEÑOR ITURRIZA', 11),
(120, 111600, 'PALMASOLA', 11),
(121, 111700, 'PETIT', 11),
(122, 111800, 'PIRITU', 11),
(123, 111900, 'SAN FRANCISCO', 11),
(124, 112000, 'SILVA', 11),
(125, 112100, 'SUCRE', 11),
(126, 112200, 'TOCOPERO', 11),
(127, 112300, 'UNIÓN', 11),
(128, 112400, 'URUMACO', 11),
(129, 112500, 'ZAMORA', 11),
(130, 120100, 'CAMAGUAN', 12),
(131, 120200, 'CHAGUARAMAS', 12),
(132, 120300, 'EL SOCORRO', 12),
(133, 120400, 'SAN GERÓNIMO DE GUAYABAL', 12),
(134, 120500, 'LEONARDO INFANTE', 12),
(135, 120600, 'LAS MERCEDES', 12),
(136, 120700, 'JULIÁN MELLADO', 12),
(137, 120800, 'FRANCISCO DE MIRANDA', 12),
(138, 120900, 'JOSÉ TADEO MONAGAS', 12),
(139, 121000, 'ORTIZ', 12),
(140, 121100, 'JOSÉ FÉLIX RIBAS', 12),
(141, 121200, 'JUAN GERMAN ROSCIO', 12),
(142, 121300, 'SAN JOSÉ DE GUARIBE', 12),
(143, 121400, 'SANTA MARÍA DE IPIRE', 12),
(144, 121500, 'PEDRO ZARAZA', 12),
(145, 130100, 'ANDRÉS ELOY BLANCO', 13),
(146, 130200, 'CRESPO', 13),
(147, 130300, 'IRIBARREN', 13),
(148, 130400, 'JIMÉNEZ', 13),
(149, 130500, 'MORÓN', 13),
(150, 130600, 'PALAVECINO', 13),
(151, 130700, 'SIMÓN PLANAS', 13),
(152, 130800, 'TORRES', 13),
(153, 130900, 'URDANETA', 13),
(154, 140100, 'ALBERTO ADRIANI', 14),
(155, 140200, 'ANDRÉS BELLO', 14),
(156, 140300, 'ANTONIO PINTO SALINAS', 14),
(157, 140400, 'ARICAGUA', 14),
(158, 140500, 'ARZOBISPO CHACÓN', 14),
(159, 140600, 'CAMPO ELÍAS', 14),
(160, 140700, 'CARACCIOLO PARRA OLMEDO', 14),
(161, 140800, 'CARDENAL QUINTERO', 14),
(162, 140900, 'GUARAQUE', 14),
(163, 141000, 'JULIO CESAR SALAS', 14),
(164, 141100, 'JUSTO BRICEÑO', 14),
(165, 141200, 'LIBERTADOR', 14),
(166, 141300, 'MIRANDA', 14),
(167, 141400, 'OBISPO RAMOS DE LORA', 14),
(168, 141500, 'PADRE NOGUERA', 14),
(169, 141600, 'PUEBLO LLANO', 14),
(170, 141700, 'RANGEL', 14),
(171, 141800, 'RIVAS DÁVILA', 14),
(172, 141900, 'SANTOS MARQUINA', 14),
(173, 142000, 'SUCRE', 14),
(174, 142100, 'TOVAR', 14),
(175, 142200, 'TULIO FEBRES CORDERO', 14),
(176, 142300, 'ZEA', 14),
(177, 150100, 'ACEVEDO', 15),
(178, 150200, 'ANDRÉS BELLO', 15),
(179, 150300, 'BARUTA', 15),
(180, 150400, 'BRION', 15),
(181, 150500, 'BUROZ', 15),
(182, 150600, 'CARRIZAL', 15),
(183, 150700, 'CHACAO', 15),
(184, 150800, 'CRISTÓBAL ROJAS', 15),
(185, 150900, 'EL HATILLO', 15),
(186, 151000, 'GUAICAIPURO', 15),
(187, 151100, 'INDEPENDENCIA', 15),
(188, 151200, 'LANDER', 15),
(189, 151300, 'LOS SALÍAS', 15),
(190, 151400, 'PÁEZ', 15),
(191, 151500, 'PAZ CASTILLO', 15),
(192, 151600, 'PEDRO GUAL', 15),
(193, 151700, 'PLAZA', 15),
(194, 151800, 'SIMÓN BOLÍVAR', 15),
(195, 151900, 'SUCRE', 15),
(196, 152000, 'URDANETA', 15),
(197, 152100, 'ZAMORA', 15),
(198, 160100, 'ACOSTA', 16),
(199, 160200, 'AGUASAY', 16),
(200, 160300, 'BOLÍVAR', 16),
(201, 160400, 'CARIPE', 16),
(202, 160500, 'CEDEÑO', 16),
(203, 160600, 'EZEQUIEL ZAMORA', 16),
(204, 160700, 'LIBERTADOR', 16),
(205, 160800, 'MATURÍN', 16),
(206, 160900, 'PIAR', 16),
(207, 161000, 'PUNCERES', 16),
(208, 161100, 'SANTA BÁRBARA', 16),
(209, 161200, 'SOTILLO', 16),
(210, 161300, 'URACOA', 16),
(211, 170100, 'ANTOLON DEL CAMPO', 17),
(212, 170200, 'ARISMENDI', 17),
(213, 170300, 'DÍAZ', 17),
(214, 170400, 'GARCÍA', 17),
(215, 170500, 'GÓMEZ', 17),
(216, 170600, 'MANEIRO', 17),
(217, 170700, 'MARCANO', 17),
(218, 170800, 'MARIÑO', 17),
(219, 170900, 'PENÍNSULA DE MACANAO', 17),
(220, 171000, 'TUBORES', 17),
(221, 171100, 'VILLALBA', 17),
(222, 180100, 'AGUA BLANCA', 18),
(223, 180200, 'ARAURE', 18),
(224, 180300, 'ESTELLER', 18),
(225, 180400, 'GUANARE', 18),
(226, 180500, 'GUANARITO', 18),
(227, 180600, 'MONSEÑOR JOSÉ VICENTE DE UNDA', 18),
(228, 180700, 'OSPINO', 18),
(229, 180800, 'PÁEZ', 18),
(230, 180900, 'PAPELON', 18),
(231, 181000, 'SAN GENARO DE BOCONOITO', 18),
(232, 181100, 'SAN RAFAEL DE ONOTO', 18),
(233, 181200, 'SANTA ROSALÍA', 18),
(234, 181300, 'SUCRE', 18),
(235, 181400, 'TURÍN', 18),
(236, 190100, 'ANDRÉS ELOY BLANCO', 19),
(237, 190200, 'ANDRÉS MATA', 19),
(238, 190300, 'ARISMENDI', 19),
(239, 190400, 'BENÍTEZ', 19),
(240, 190500, 'BERMÚDEZ', 19),
(241, 190600, 'BOLÍVAR', 19),
(242, 190700, 'CAJIGAL', 19),
(243, 190800, 'CRUZ SALMERÓN ACOSTA', 19),
(244, 190900, 'LIBERTADOR', 19),
(245, 191000, 'MARIÑO', 19),
(246, 191100, 'MEJÍAS', 19),
(247, 191200, 'MONTES', 19),
(248, 191300, 'RIBERO', 19),
(249, 191400, 'SUCRE', 19),
(250, 191500, 'VALDEZ', 19),
(251, 200100, 'ANDRÉS BELLO', 20),
(252, 200200, 'ANTONIO RÓMULO COSTA', 20),
(253, 200300, 'AYACUCHO', 20),
(254, 200400, 'BOLÍVAR', 20),
(255, 200500, 'CÁRDENAS', 20),
(256, 200600, 'CÓRDOBA', 20),
(257, 200700, 'FERNÁNDEZ FEO', 20),
(258, 200800, 'FRANCISCO DE MIRANDA', 20),
(259, 200900, 'GARCÍA DE HEVIA', 20),
(260, 201000, 'GUASIMOS', 20),
(261, 201100, 'INDEPENDENCIA', 20),
(262, 201200, 'JÁUREGUI', 20),
(263, 201300, 'JOSÉ MARÍA VARGAS', 20),
(264, 201400, 'JUNÍN', 20),
(265, 201500, 'LIBERTAD', 20),
(266, 201600, 'LIBERTADOR', 20),
(267, 201700, 'LOBATERA', 20),
(268, 201800, 'MICHELENA', 20),
(269, 201900, 'PANAMERICANO', 20),
(270, 202000, 'PEDRO MARÍA UREÑA', 20),
(271, 202100, 'RAFAEL URDANETA', 20),
(272, 202200, 'SAMUEL DARÍO MALDONADO', 20),
(273, 202300, 'SAN CRISTÓBAL', 20),
(274, 202400, 'SEBORUCO', 20),
(275, 202500, 'SIMÓN RODRÍGUEZ', 20),
(276, 202600, 'SUCRE', 20),
(277, 202700, 'TORBES', 20),
(278, 202800, 'URIBANTE', 20),
(279, 202900, 'SAN JUDAS TADEO', 20),
(280, 210100, 'ANDRÉS BELLO', 21),
(281, 210200, 'BOCONO', 21),
(282, 210300, 'BOLÍVAR', 21),
(283, 210400, 'CANDELARIA', 21),
(284, 210500, 'CARACHE', 21),
(285, 210600, 'ESCUQUE', 21),
(286, 210700, 'JOSÉ FELIPE MÁRQUEZ CARRIZALES', 21),
(287, 210800, 'JUAN VICENTE CAMPO ELÍAS', 21),
(288, 210900, 'LA CEIBA', 21),
(289, 211000, 'MIRANDA', 21),
(290, 211100, 'MONTE CARMELO', 21),
(291, 211200, 'MOTATAN', 21),
(292, 211300, 'PAMPAN', 21),
(293, 211400, 'PAMPANITO', 21),
(294, 211500, 'RAFAEL RANGEL', 21),
(295, 211600, 'SAN RAFAEL DE CARVAJAL', 21),
(296, 211700, 'SUCRE', 21),
(297, 211800, 'TRUJILLO', 21),
(298, 211900, 'URDANETA', 21),
(299, 212000, 'VALERA', 21),
(300, 220100, 'ARÍSTIDES BASTIDAS', 22),
(301, 220200, 'BOLÍVAR', 22),
(302, 220300, 'BRUZUAL', 22),
(303, 220400, 'COCOROTE', 22),
(304, 220500, 'INDEPENDENCIA', 22),
(305, 220600, 'JOSÉ ANTONIO PÁEZ', 22),
(306, 220700, 'LA TRINIDAD', 22),
(307, 220800, 'MANUEL MONGE', 22),
(308, 220900, 'NIRGUA', 22),
(309, 221000, 'PEÑA', 22),
(310, 221100, 'SAN FELIPE', 22),
(311, 221200, 'SUCRE', 22),
(312, 221300, 'URACHICHE', 22),
(313, 221400, 'VEROES', 22),
(314, 230100, 'ALMIRANTE PADILLA', 23),
(315, 230200, 'BARALT', 23),
(316, 230300, 'CABIMAS', 23),
(317, 230400, 'CATATUMBO', 23),
(318, 230500, 'COLON', 23),
(319, 230600, 'FRANCISCO JAVIER PULGAR', 23),
(320, 230700, 'JESÚS ENRIQUE LOSSADA', 23),
(321, 230800, 'JESÚS MARÍA SEMPRON', 23),
(322, 230900, 'LA CAÑADA DE URDANETA', 23),
(323, 231000, 'LAGUNILLAS', 23),
(324, 231100, 'MACHIQUES DE PERIJÁ', 23),
(325, 231200, 'MARA', 23),
(326, 231300, 'MARACAIBO', 23),
(327, 231400, 'MIRANDA', 23),
(328, 231500, 'PÁEZ', 23),
(329, 231600, 'ROSARIO DE PERIJÁ', 23),
(330, 231700, 'SAN FRANCISCO', 23),
(331, 231800, 'SANTA RITA', 23),
(332, 231900, 'SIMÓN BOLÍVAR', 23),
(333, 232000, 'SUCRE', 23),
(334, 232100, 'VALMORE RODRÍGUEZ', 23),
(335, 240100, 'VARGAS', 24),
(336, 250100, 'ARCHIPIÉLAGO LOS ROQUES', 25),
(337, 250200, 'ARCHIPIÉLAGO LAS AVES', 25),
(338, 250300, 'ARCHIPIÉLAGO LA ORCHILA', 25),
(339, 260100, 'OTRAS DEPENDENCIAS FEDERALES (M)', 26),
(340, 270100, 'REGISTRO DE NORMALIZACIÓN (MUNICIPIO)', 27);

-- --------------------------------------------------------

--
-- Table structure for table `pago_proveedores`
--

CREATE TABLE IF NOT EXISTS `pago_proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codpago` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codproveedor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `proveedor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `cuenta_origen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num_factura` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_pago` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_pago` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `condicion_pago` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_cheque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_recibo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_transf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_deposito` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pago_proveedores_codpago_key` (`codpago`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pago_proveedores`
--

INSERT INTO `pago_proveedores` (`id`, `codpago`, `codproveedor`, `proveedor`, `observaciones`, `monto`, `cuenta_origen`, `num_factura`, `motivo_anulacion`, `estado`, `fecha_pago`, `hora_pago`, `condicion_pago`, `num_cheque`, `num_recibo`, `num_transf`, `num_deposito`) VALUES
(1, '00000001', 'P00001', 'Importadora C.A', 'Prueba de registro', 150, 'CT00002', '654378537', '', 2, '2016-06-21', '07:43:05 am', '1', '257687687878676', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `parroquias`
--

CREATE TABLE IF NOT EXISTS `parroquias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parroquia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cod_parroquia` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `parroquias_estado_id_10f95705_uniq` (`estado_id`,`municipio`,`parroquia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1131 ;

--
-- Dumping data for table `parroquias`
--

INSERT INTO `parroquias` (`id`, `parroquia`, `cod_parroquia`, `municipio`, `estado_id`) VALUES
(1, 'ALTAGRACIA', 10101, 10100, 1),
(2, 'ANTÍMANO', 10102, 10100, 1),
(3, 'CANDELARIA', 10103, 10100, 1),
(4, 'CARICUAO', 10104, 10100, 1),
(5, 'CATEDRAL', 10105, 10100, 1),
(6, 'COCHE', 10106, 10100, 1),
(7, 'EL JUNQUITO', 10107, 10100, 1),
(8, 'EL PARAÍSO', 10108, 10100, 1),
(9, 'EL RECREO', 10109, 10100, 1),
(10, 'EL VALLE', 10110, 10100, 1),
(11, 'LA PASTORA', 10111, 10100, 1),
(12, 'LA VEGA', 10112, 10100, 1),
(13, 'MACARAO', 10113, 10100, 1),
(14, 'SAN AGUSTÍN', 10114, 10100, 1),
(15, 'SAN BERNARDINO', 10115, 10100, 1),
(16, 'SAN JOSÉ', 10116, 10100, 1),
(17, 'SAN JUAN', 10117, 10100, 1),
(18, 'SAN PEDRO', 10118, 10100, 1),
(19, 'SANTA ROSALÍA', 10119, 10100, 1),
(20, 'SANTA TERESA', 10120, 10100, 1),
(21, 'SUCRE', 10121, 10100, 1),
(22, '23 DE ENERO', 10122, 10100, 1),
(23, 'HUACHAMACARE', 20101, 20100, 2),
(24, 'MARAWAKA', 20102, 20100, 2),
(25, 'MAVACA', 20103, 20100, 2),
(26, 'SIERRA PARIMA', 20104, 20100, 2),
(27, 'UCATA', 20201, 20200, 2),
(28, 'YAPACANA', 20202, 20200, 2),
(29, 'CANAME', 20203, 20200, 2),
(30, 'FERNANDO GIRÓN TOVAR', 20301, 20300, 2),
(31, 'LUIS ALBERTO GÓMEZ', 20302, 20300, 2),
(32, 'PARHUEÑA', 20303, 20300, 2),
(33, 'PLATANILLA', 20304, 20300, 2),
(34, 'SAMARIAPO', 20401, 20400, 2),
(35, 'SIPAPO', 20402, 20400, 2),
(36, 'MUNDUAPO', 20403, 20400, 2),
(37, 'GUAYAPO', 20404, 20400, 2),
(38, 'VICTORINO', 20501, 20500, 2),
(39, 'COMUNIDAD', 20502, 20500, 2),
(40, 'ALTO VENTUARI', 20601, 20600, 2),
(41, 'MEDIO VENTUARI', 20602, 20600, 2),
(42, 'BAJO VENTUARI', 20603, 20600, 2),
(43, 'SOLANO', 20701, 20700, 2),
(44, 'CASIQUIARE', 20702, 20700, 2),
(45, 'COCUY', 20703, 20700, 2),
(46, 'CAPITAL ANACO', 30101, 30100, 3),
(47, 'SAN JOAQUÍN', 30102, 30100, 3),
(48, 'CAPITAL ARAGUA', 30201, 30200, 3),
(49, 'CACHIPO', 30202, 30200, 3),
(50, 'CAPITAL FERNANDO DE PEÑALVER', 30301, 30300, 3),
(51, 'SAN MIGUEL', 30302, 30300, 3),
(52, 'SUCRE', 30303, 30300, 3),
(53, 'CAPITAL FRANCISCO DEL CARMEN CARVAJAL', 30401, 30400, 3),
(54, 'SANTA BÁRBARA', 30402, 30400, 3),
(55, 'CAPITAL FRANCISCO DE MIRANDA', 30501, 30500, 3),
(56, 'ATAPIRIRE', 30502, 30500, 3),
(57, 'BOCA DEL PAO', 30503, 30500, 3),
(58, 'EL PAO', 30504, 30500, 3),
(59, 'MÁCURA', 30505, 30500, 3),
(60, 'CAPITAL GUANTA', 30601, 30600, 3),
(61, 'CHORRERÓN', 30602, 30600, 3),
(62, 'CAPITAL INDEPENDENCIA', 30701, 30700, 3),
(63, 'MAMO', 30702, 30700, 3),
(64, 'CAPITAL PUERTO LA CRUZ', 30801, 30800, 3),
(65, 'POZUELOS', 30802, 30800, 3),
(66, 'CAPITAL JUAN MANUEL CAJIGAL', 30901, 30900, 3),
(67, 'SAN PABLO', 30902, 30900, 3),
(68, 'CAPITAL JOSÉ GREGORIO MONAGAS', 31001, 31000, 3),
(69, 'PIAR', 31002, 31000, 3),
(70, 'SAN DIEGO DE CABRUTICA', 31003, 31000, 3),
(71, 'SANTA CLARA', 31004, 31000, 3),
(72, 'UVERITO', 31005, 31000, 3),
(73, 'ZUATA', 31006, 31000, 3),
(74, 'CAPITAL LIBERTAD', 31101, 31100, 3),
(75, 'EL CARITO', 31102, 31100, 3),
(76, 'SANTA INÉS', 31103, 31100, 3),
(77, 'CAPITAL MANUEL EZEQUIEL BRUZUAL', 31201, 31200, 3),
(78, 'GUANAPE', 31202, 31200, 3),
(79, 'SABANA DE UCHIRE', 31203, 31200, 3),
(80, 'CAPITAL PEDRO MARÍA FREITES', 31301, 31300, 3),
(81, 'LIBERTADOR', 31302, 31300, 3),
(82, 'SANTA ROSA', 31303, 31300, 3),
(83, 'URICA', 31304, 31300, 3),
(84, 'CAPITAL PÍRITU', 31401, 31400, 3),
(85, 'SAN FRANCISCO', 31402, 31400, 3),
(86, 'CM SAN JOSÉ DE GUANIPA', 31501, 31500, 3),
(87, 'CAPITAL SAN JUAN DE CAPISTRANO', 31601, 31600, 3),
(88, 'BOCA DE CHÁVEZ', 31602, 31600, 3),
(89, 'CAPITAL SANTA ANA', 31701, 31700, 3),
(90, 'PUEBLO NUEVO', 31702, 31700, 3),
(91, 'EL CARMEN', 31801, 31800, 3),
(92, 'SAN CRISTÓBAL', 31802, 31800, 3),
(93, 'BERGANTÍN', 31803, 31800, 3),
(94, 'CAIGUA', 31804, 31800, 3),
(95, 'EL PILAR', 31805, 31800, 3),
(96, 'NARICUAL', 31806, 31800, 3),
(97, 'EDMUNDO BARRIOS', 31901, 31900, 3),
(98, 'MIGUEL OTERO SILVA', 31902, 31900, 3),
(99, 'CAPITAL SIR ARTHUR MC GREGOR', 32001, 32000, 3),
(100, 'TOMAS ALFARO CALATRAVA', 32002, 32000, 3),
(101, 'CAPITAL DIEGO BAUTISTA URBANEJA', 32101, 32100, 3),
(102, 'EL MORRO', 32102, 32100, 3),
(103, 'URBANA ACHAGUAS', 40101, 40100, 4),
(104, 'APURITO', 40102, 40100, 4),
(105, 'EL YAGUAL', 40103, 40100, 4),
(106, 'GUACHARA', 40104, 40100, 4),
(107, 'MUCURITAS', 40105, 40100, 4),
(108, 'QUESERAS DEL MEDIO', 40106, 40100, 4),
(109, 'URBANA BIRUACA', 40201, 40200, 4),
(110, 'URBANA BRUZUAL', 40301, 40300, 4),
(111, 'MANTECAL', 40302, 40300, 4),
(112, 'QUINTERO', 40303, 40300, 4),
(113, 'RINCÓN HONDO', 40304, 40300, 4),
(114, 'SAN VICENTE', 40305, 40300, 4),
(115, 'URBANA GUASDUALITO', 40401, 40400, 4),
(116, 'ARISMENDI', 40402, 40400, 4),
(117, 'EL AMPARO', 40403, 40400, 4),
(118, 'SAN CAMILO', 40404, 40400, 4),
(119, 'URDANETA', 40405, 40400, 4),
(120, 'URBANA SAN JUAN DE PAYARA', 40501, 40500, 4),
(121, 'CODAZZI', 40502, 40500, 4),
(122, 'CUNAVICHE', 40503, 40500, 4),
(123, 'URBANA ELORZA', 40601, 40600, 4),
(124, 'LA TRINIDAD', 40602, 40600, 4),
(125, 'URBANA SAN FERNANDO', 40701, 40700, 4),
(126, 'EL RECREO', 40702, 40700, 4),
(127, 'PEÑALVER', 40703, 40700, 4),
(128, 'SAN RAFAEL DE ATAMAICA', 40704, 40700, 4),
(129, 'CM SAN MATEO', 50101, 50100, 5),
(130, 'CAMATAGUA', 50201, 50200, 5),
(131, 'CARMEN DE CURA', 50202, 50200, 5),
(132, 'CHORONÍ', 50301, 50300, 5),
(133, 'ANDRÉS ELOY BLANCO', 50302, 50300, 5),
(134, 'JOAQUÍN CRESPO', 50303, 50300, 5),
(135, 'JOSÉ CASANOVA GODOY', 50304, 50300, 5),
(136, 'LAS DELICIAS', 50305, 50300, 5),
(137, 'LOS TACARIGUAS', 50306, 50300, 5),
(138, 'MADRE MARÍA DE SAN JOSÉ', 50307, 50300, 5),
(139, 'PEDRO JOSÉ OVALLES', 50308, 50300, 5),
(140, 'CM SANTA CRUZ', 50401, 50400, 5),
(141, 'CASTOR NIENES RÍOS', 50501, 50500, 5),
(142, 'LA GUACAMAYA', 50502, 50500, 5),
(143, 'PAO DE ZÁRATE', 50503, 50500, 5),
(144, 'URBANA ZUATA', 50504, 50500, 5),
(145, 'JUAN VICENTE BOLÍVAR', 50505, 50500, 5),
(146, 'CM EL CONSEJO', 50601, 50600, 5),
(147, 'LIBERTADOR', 50701, 50700, 5),
(148, 'SAN MARTÍN DE PORRAS', 50702, 50700, 5),
(149, 'CAÑA DE AZÚCAR', 50801, 50800, 5),
(150, 'MARIO BRICEÑO IRAGORRY', 50802, 50800, 5),
(151, 'GÜIRIPA', 50901, 50900, 5),
(152, 'OLLAS DE CARAMACATE', 50902, 50900, 5),
(153, 'VALLE MORÍN', 50903, 50900, 5),
(154, 'SAN CASIMIRO', 50904, 50900, 5),
(155, 'CM SAN SEBASTIÁN', 51101, 51000, 5),
(156, 'ALFREDO PACHECO MIRANDA', 51101, 51100, 5),
(157, 'ARÉVALO APONTE', 51102, 51100, 5),
(158, 'CHUAO', 51103, 51100, 5),
(159, 'SAMÁN DE GUERE', 51104, 51100, 5),
(160, 'SANTIGO MARIÑO', 51105, 51100, 5),
(161, 'TIARA', 51201, 51200, 5),
(162, 'SANTOS MICHELENA', 51202, 51200, 5),
(163, 'BELLA VISTA', 51301, 51300, 5),
(164, 'SUCRE', 51302, 51300, 5),
(165, 'LA COLONIA TOVAR', 51401, 51400, 5),
(166, 'LAS PEÑITAS', 51501, 51500, 5),
(167, 'SAN FRANCISCO DE CARA', 51502, 51500, 5),
(168, 'TAGUAY', 51503, 51500, 5),
(169, 'URDANETA', 51504, 51500, 5),
(170, 'AUGUSTO MIJARES', 51601, 51600, 5),
(171, 'SAN FRANCISCO DE ASÍS', 51602, 51600, 5),
(172, 'VALLES DE TUCUNEMO', 51603, 51600, 5),
(173, 'MAGDALENO', 51604, 51600, 5),
(174, 'ZAMORA', 51605, 51600, 5),
(175, 'MONSEÑOR FELICIANO GONZÁLEZ', 51701, 51700, 5),
(176, 'FRANCISCO LINARES ALCÁNTARA', 51702, 51700, 5),
(177, 'FRANCISCO DE MIRANDA', 51703, 51700, 5),
(178, 'OCUMARE DE LA COSTA', 51801, 51800, 5),
(179, 'SABANETA', 60101, 60100, 6),
(180, 'RODRÍGUEZ DOMÍNGUEZ', 60102, 60100, 6),
(181, 'TICOPORO', 60201, 60200, 6),
(182, 'ANDRÉS BELLO', 60202, 60200, 6),
(183, 'NICOLÁS PULIDO', 60203, 60200, 6),
(184, 'ARISMENDI', 60301, 60300, 6),
(185, 'GUADARRAMA', 60302, 60300, 6),
(186, 'LA UNIÓN', 60303, 60300, 6),
(187, 'SAN ANTONIO', 60304, 60300, 6),
(188, 'BARINAS', 60401, 60400, 6),
(189, 'ALFREDO ARVELO LARRIVA', 60402, 60400, 6),
(190, 'SAN SILVESTRE', 60403, 60400, 6),
(191, 'SANTA INÉS', 60404, 60400, 6),
(192, 'SANTA LUCÍA', 60405, 60400, 6),
(193, 'TORUNOS', 60406, 60400, 6),
(194, 'EL CARMEN', 60407, 60400, 6),
(195, 'RÓMULO BETANCOURT', 60408, 60400, 6),
(196, 'CORAZÓN DE JESÚS', 60409, 60400, 6),
(197, 'RAMÓN IGNACIO MÉNDEZ', 60410, 60400, 6),
(198, 'ALTO BARINAS', 60411, 60400, 6),
(199, 'MANUEL PALACIO FAJARDO', 60412, 60400, 6),
(200, 'JUAN ANTONIO RODRÍGUEZ DOMÍNGUEZ', 60413, 60400, 6),
(201, 'DOMINGA ORTIZ DE PÁEZ', 60414, 60400, 6),
(202, 'BARINITAS', 60501, 60500, 6),
(203, 'ALTAMIRA', 60502, 60500, 6),
(204, 'CALDERAS', 60503, 60500, 6),
(205, 'BARRANCAS', 60601, 60600, 6),
(206, 'EL SOCORRO', 60602, 60600, 6),
(207, 'MASPARRITO', 60603, 60600, 6),
(208, 'SANTA BÁRBARA', 60701, 60700, 6),
(209, 'JOSÉ IGNACIO DEL PUMAR', 60702, 60700, 6),
(210, 'PEDRO BRICEÑO MÉNDEZ', 60703, 60700, 6),
(211, 'RAMÓN IGNACIO MÉNDEZ', 60704, 60700, 6),
(212, 'OBISPOS', 60801, 60800, 6),
(213, 'EL REAL', 60802, 60800, 6),
(214, 'LA LUZ', 60803, 60800, 6),
(215, 'LOS GUASIMITOS', 60804, 60800, 6),
(216, 'CIUDAD BOLIVIA', 60901, 60900, 6),
(217, 'IGNACIO BRICEÑO', 60902, 60900, 6),
(218, 'JOSÉ FÉLIX RIBAS', 60903, 60900, 6),
(219, 'PÁEZ', 60904, 60900, 6),
(220, 'LIBERTAD', 61001, 61000, 6),
(221, 'DOLORES', 61002, 61000, 6),
(222, 'PALACIOS FAJARDO', 61003, 61000, 6),
(223, 'SANTA ROSA', 61004, 61000, 6),
(224, 'SIMÓN RODRÍGUEZ', 61005, 61000, 6),
(225, 'CIUDAD DE NUTRIAS', 61101, 61100, 6),
(226, 'EL REGALO', 61102, 61100, 6),
(227, 'PUERTO DE NUTRIAS', 61103, 61100, 6),
(228, 'SANTA CATALINA', 61104, 61100, 6),
(229, 'SIMÓN BOLÍVAR', 61105, 61100, 6),
(230, 'EL CANTÓN', 61201, 61200, 6),
(231, 'SANTA CRUZ DE GUACAS', 61202, 61200, 6),
(232, 'PUERTO VIVAS', 61203, 61200, 6),
(233, 'CACHAMAY', 70101, 70100, 7),
(234, 'CHIRICA', 70102, 70100, 7),
(235, 'DALLA COSTA', 70103, 70100, 7),
(236, 'ONCE DE ABRIL', 70104, 70100, 7),
(237, 'SIMÓN BOLÍVAR', 70105, 70100, 7),
(238, 'UNARE', 70106, 70100, 7),
(239, 'UNIVERSIDAD', 70107, 70100, 7),
(240, 'VISTA AL SOL', 70108, 70100, 7),
(241, 'POZO VERDE', 70109, 70100, 7),
(242, 'YOCOIMA', 70110, 70100, 7),
(243, 'SECCIÓN CAPITAL CEDEÑO', 70201, 70200, 7),
(244, 'ALTAGRACIA', 70202, 70200, 7),
(245, 'ASCENSIÓN FARRERAS', 70203, 70200, 7),
(246, 'GUANIAMO', 70204, 70200, 7),
(247, 'LA URBANA', 70205, 70200, 7),
(248, 'PIJIGUAOS', 70206, 70200, 7),
(249, 'SECCIÓN CAPITAL GRAN SABANA', 70401, 70400, 7),
(250, 'IKABARÚ', 70402, 70400, 7),
(251, 'AGUA SALADA', 70501, 70500, 7),
(252, 'CATEDRAL', 70502, 70500, 7),
(253, 'JOSÉ ANTONIO PÁEZ', 70503, 70500, 7),
(254, 'LA SABANITA', 70504, 70500, 7),
(255, 'MARHUANTA', 70505, 70500, 7),
(256, 'VISTA HERMOSA', 70506, 70500, 7),
(257, 'ORINOCO', 70507, 70500, 7),
(258, 'PANAPANA', 70508, 70500, 7),
(259, 'ZEA', 70509, 70500, 7),
(260, 'SECCIÓN CAPITAL PIAR', 70601, 70600, 7),
(261, 'ANDRÉS ELOY BLANCO', 70602, 70600, 7),
(262, 'PEDRO COVA', 70603, 70600, 7),
(263, 'SECCIÓN CAPITAL RAÚL LEONI', 70701, 70700, 7),
(264, 'BARCELONETA', 70702, 70700, 7),
(265, 'SAN FRANCISCO', 70703, 70700, 7),
(266, 'SANTA BÁRBARA', 70704, 70700, 7),
(267, 'SECCIÓN CAPITAL ROSCIO', 70801, 70800, 7),
(268, 'SALOM', 70802, 70800, 7),
(269, 'SECCIÓN CAPITAL SIFONTES', 70901, 70900, 7),
(270, 'DALLA COSTA', 70902, 70900, 7),
(271, 'SAN ISIDRO', 70903, 70900, 7),
(272, 'SECCIÓN CAPITAL SUCRE', 71001, 71000, 7),
(273, 'ARIPAO', 71002, 71000, 7),
(274, 'GUARATARO', 71003, 71000, 7),
(275, 'LAS MAJADAS', 71004, 71000, 7),
(276, 'MOITACO', 71005, 71000, 7),
(277, 'URBANA BEJUMA', 80101, 80100, 8),
(278, 'NO URBANA CANOABO', 80102, 80100, 8),
(279, 'NO URBANA SIMÓN BOLÍVAR', 80103, 80100, 8),
(280, 'URBANA GUIGUE', 80201, 80200, 8),
(281, 'NO URBANA BELÉN', 80202, 80200, 8),
(282, 'NO URBANA TACARIGUA', 80203, 80200, 8),
(283, 'URBANA AGUAS CALIENTES', 80301, 80300, 8),
(284, 'URBANA MARIARA', 80302, 80300, 8),
(285, 'URBANA CIUDAD ALIANZA', 80401, 80400, 8),
(286, 'URBANA GUACARA', 80402, 80400, 8),
(287, 'NO URBANA YAGUA', 80403, 80400, 8),
(288, 'URBANA MORÓN', 80501, 80500, 8),
(289, 'NO URBANA URAMA', 80502, 80500, 8),
(290, 'URBANA TOCUYITO', 80601, 80600, 8),
(291, 'URBANA INDEPENDENCIA', 80602, 80600, 8),
(292, 'URBANA LOS GUAYOS', 80701, 80700, 8),
(293, 'URBANA MIRANDA', 80801, 80800, 8),
(294, 'URBANA MONTALBÁN', 80901, 80900, 8),
(295, 'URBANA NAGUANAGUA', 81001, 81000, 8),
(296, 'URBANA BARTOLOMÉ SALOM', 81101, 81100, 8),
(297, 'URBANA DEMOCRACIA', 81102, 81100, 8),
(298, 'URBANA FRATERNIDAD', 81103, 81100, 8),
(299, 'URBANA GOAIGOAZA', 81104, 81100, 8),
(300, 'URBANA JUAN JOSÉ FLORES', 81105, 81100, 8),
(301, 'URBANA UNIÓN', 81106, 81100, 8),
(302, 'NO URBANA BORBURATA', 81107, 81100, 8),
(303, 'NO URBANA PATANEMO', 81108, 81100, 8),
(304, 'URBANA SAN DIEGO', 81201, 81200, 8),
(305, 'URBANA SAN JOAQUÍN', 81301, 81300, 8),
(306, 'URBANA CANDELARIA', 81401, 81400, 8),
(307, 'URBANA CATEDRAL', 81402, 81400, 8),
(308, 'URBANA EL SOCORRO', 81403, 81400, 8),
(309, 'URBANA MIGUEL PEÑA', 81404, 81400, 8),
(310, 'URBANA RAFAEL URDANETA', 81405, 81400, 8),
(311, 'URBANA SAN BLAS', 81406, 81400, 8),
(312, 'URBANA SAN JOSÉ', 81407, 81400, 8),
(313, 'URBANA SANTA ROSA', 81408, 81400, 8),
(314, 'NO URBANA NEGRO PRIMERO', 81409, 81400, 8),
(315, 'COJEDES', 90101, 90100, 9),
(316, 'JUAN DE MATA SUÁREZ', 90102, 90100, 9),
(317, 'TINAQUILLO', 90201, 90200, 9),
(318, 'EL BAÚL', 90301, 90300, 9),
(319, 'SUCRE', 90302, 90300, 9),
(320, 'MACAPO', 90401, 90400, 9),
(321, 'LA AGUADITA', 90402, 90400, 9),
(322, 'EL PAO', 90501, 90500, 9),
(323, 'LIBERTAD DE COJEDES', 90601, 90600, 9),
(324, 'EL AMPARO', 90602, 90600, 9),
(325, 'RÓMULO GALLEGOS', 90701, 90700, 9),
(326, 'SAN CARLOS DE AUSTRIA', 90801, 90800, 9),
(327, 'JUAN ÁNGEL BRAVO', 90802, 90800, 9),
(328, 'MANUEL MANRIQUE', 90803, 90800, 9),
(329, 'GENERAL EN JEFE JOSÉ LAURENCIO SILVA', 90901, 90900, 9),
(330, 'CURIAPO', 100101, 100100, 10),
(331, 'ALMIRANTE LUIS BRIÓN', 100102, 100100, 10),
(332, 'FRANCISCO ANICETO LUGO', 100103, 100100, 10),
(333, 'MANUEL RENAUD', 100104, 100100, 10),
(334, 'PADRE BARRAL', 100105, 100100, 10),
(335, 'SANTOS DE ABELGAS', 100106, 100100, 10),
(336, 'IMATACA', 100201, 100200, 10),
(337, 'CINCO DE JULIO', 100202, 100200, 10),
(338, 'JUAN BAUTISTA ARISMENDI', 100203, 100200, 10),
(339, 'MANUEL PIAR', 100204, 100200, 10),
(340, 'RÓMULO GALLEGOS', 100205, 100200, 10),
(341, 'PEDERNALES', 100301, 100300, 10),
(342, 'LUIS BELTRÁN PRIETO FIGUEROA', 100302, 100300, 10),
(343, 'SAN JOSÉ', 100401, 100400, 10),
(344, 'JOSÉ VIDAL MARCANO', 100402, 100400, 10),
(345, 'JUAN MILLÁN', 100403, 100400, 10),
(346, 'LEONARDO RUÍZ PINEDA', 100404, 100400, 10),
(347, 'MARISCAL ANTONIO JOSÉ DE SUCRE', 100405, 100400, 10),
(348, 'MONSEÑOR ARGIMIRO GARCÍA', 100406, 100400, 10),
(349, 'SAN RAFAEL', 100407, 100400, 10),
(350, 'VIRGEN DEL VALLE', 100408, 100400, 10),
(351, 'SAN JUAN DE LOS CAYOS', 110101, 110100, 11),
(352, 'CAPADARE', 110102, 110100, 11),
(353, 'LA PASTORA', 110103, 110100, 11),
(354, 'LIBERTADOR', 110104, 110100, 11),
(355, 'SAN LUIS', 110201, 110200, 11),
(356, 'ARACUA', 110202, 110200, 11),
(357, 'LA PEÑA', 110203, 110200, 11),
(358, 'CAPATÁRIDA', 110301, 110300, 11),
(359, 'BARIRO', 110302, 110300, 11),
(360, 'BOROJÓ', 110303, 110300, 11),
(361, 'GUAJIRO', 110304, 110300, 11),
(362, 'SEQUE', 110305, 110300, 11),
(363, 'ZAZÁRIDA', 110306, 110300, 11),
(364, 'CM YARACAL', 110401, 110400, 11),
(365, 'CARIRUBANA', 110501, 110500, 11),
(366, 'NORTE', 110502, 110500, 11),
(367, 'PUNTA CARDÓN', 110503, 110500, 11),
(368, 'SANTA ANA', 110504, 110500, 11),
(369, 'LA VELA DE CORO', 110601, 110600, 11),
(370, 'ACURIGUA', 110602, 110600, 11),
(371, 'GUAIBACOA', 110603, 110600, 11),
(372, 'LAS CALDERAS', 110604, 110600, 11),
(373, 'MACORUCA', 110605, 110600, 11),
(374, 'CM DABAJURO', 110701, 110700, 11),
(375, 'PEDREGAL', 110801, 110800, 11),
(376, 'AGUA CLARA', 110802, 110800, 11),
(377, 'AVARIA', 110803, 110800, 11),
(378, 'PIEDRA GRANDE', 110804, 110800, 11),
(379, 'PURURECHE', 110805, 110800, 11),
(380, 'PUEBLO NUEVO', 110901, 110900, 11),
(381, 'ADÍCORA', 110902, 110900, 11),
(382, 'BARAIVED', 110903, 110900, 11),
(383, 'BUENA VISTA', 110904, 110900, 11),
(384, 'JADACAQUIVA', 110905, 110900, 11),
(385, 'MORUY', 110906, 110900, 11),
(386, 'ADAURE', 110907, 110900, 11),
(387, 'EL HATO', 110908, 110900, 11),
(388, 'EL VÍNCULO', 110909, 110900, 11),
(389, 'CHURUGUARA', 111001, 111000, 11),
(390, 'AGUA LARGA', 111002, 111000, 11),
(391, 'EL PAUJÍ', 111003, 111000, 11),
(392, 'INDEPENDENCIA', 111004, 111000, 11),
(393, 'MAPARARÁ', 111005, 111000, 11),
(394, 'JACURA', 111101, 111000, 11),
(395, 'AGUA LINDA', 111102, 111000, 11),
(396, 'ARAURIMA', 111103, 111000, 11),
(397, 'AGUA LINDA', 111101, 111100, 11),
(398, 'ARAURIMA', 111102, 111100, 11),
(399, 'JACURA', 111103, 111100, 11),
(400, 'LOS TAQUES', 111201, 111200, 11),
(401, 'JUDIBANA', 111202, 111200, 11),
(402, 'MENE DE MAUROA', 111301, 111300, 11),
(403, 'CASIGUA', 111302, 111300, 11),
(404, 'SAN FÉLIX', 111303, 111300, 11),
(405, 'SAN ANTONIO', 111401, 111400, 11),
(406, 'SAN GABRIEL', 111402, 111400, 11),
(407, 'SANTA ANA', 111403, 111400, 11),
(408, 'GUZMÁN GUILLERMO', 111404, 111400, 11),
(409, 'MITARE', 111405, 111400, 11),
(410, 'RÍO SECO', 111406, 111400, 11),
(411, 'SABANETA', 111407, 111400, 11),
(412, 'CHICHIRIVICHE', 111501, 111500, 11),
(413, 'BOCA DE TOCUYO', 111502, 111500, 11),
(414, 'TOCUYO DE LA COSTA', 111503, 111500, 11),
(415, 'CABURÉ', 111701, 111700, 11),
(416, 'COLINA', 111702, 111700, 11),
(417, 'CURIMAGUA', 111703, 111700, 11),
(418, 'PÍRITU', 111801, 111800, 11),
(419, 'SAN JOSÉ DE LA COSTA', 111802, 111800, 11),
(420, 'TUCACAS', 112001, 112000, 11),
(421, 'BOCA DE AROA', 112002, 112000, 11),
(422, 'SUCRE', 112101, 112100, 11),
(423, 'PECAYA', 112102, 112100, 11),
(424, 'SANTA CRUZ DE BUCARAL', 112301, 112300, 11),
(425, 'EL CHARAL', 112302, 112300, 11),
(426, 'LAS VEGAS DEL TUY', 112303, 112300, 11),
(427, 'URUMACO', 112401, 112400, 11),
(428, 'BRUZUAL', 112402, 112400, 11),
(429, 'PUERTO CUMAREBO', 112501, 112500, 11),
(430, 'LA CIÁNAGA', 112502, 112500, 11),
(431, 'LA SOLEDAD', 112503, 112500, 11),
(432, 'PUEBLO CUMAREBO', 112504, 112500, 11),
(433, 'ZAZÁRIDA', 112505, 112500, 11),
(434, 'CAPITAL CAMAGUÁN', 120101, 120100, 12),
(435, 'PUERTO MIRANDA', 120102, 120100, 12),
(436, 'UVERITO', 120103, 120100, 12),
(437, 'CHAGUARAMAS', 120201, 120200, 12),
(438, 'EL SOCORRO', 120301, 120300, 12),
(439, 'CAPITAL SAN GERÓNIMO DE GUAYABAL', 120401, 120400, 12),
(440, 'CAZORLA', 120402, 120400, 12),
(441, 'CAPITAL VALLE DE LA PASCUA', 120501, 120500, 12),
(442, 'ESPINO', 120502, 120500, 12),
(443, 'CAPITAL LAS MERCEDES', 120601, 120600, 12),
(444, 'CABRUTA', 120602, 120600, 12),
(445, 'SANTA RITA DE MANAPIRE', 120603, 120600, 12),
(446, 'CAPITAL EL SOMBRERO', 120701, 120700, 12),
(447, 'SOSA', 120702, 120700, 12),
(448, 'CAPITAL CALABOZO', 120801, 120800, 12),
(449, 'EL CALVARIO', 120802, 120800, 12),
(450, 'EL RASTRO', 120803, 120800, 12),
(451, 'GUARDATINAJAS', 120804, 120800, 12),
(452, 'SAGRARIO', 141213, 141200, 12),
(453, 'CAPITAL ALTAGRACIA DE ORITUCO', 120901, 120900, 12),
(454, 'LEZAMA', 120902, 120900, 12),
(455, 'LIBERTAD DE ORITUCO', 120903, 120900, 12),
(456, 'PASO REAL DE MACAIRA', 120904, 120900, 12),
(457, 'SAN FRANCISCO DE MACAIRA', 120905, 120900, 12),
(458, 'SAN RAFAEL DE ORITUCO', 120906, 120900, 12),
(459, 'SOUBLETTE', 120907, 120900, 12),
(460, 'CAPITAL ORTIZ', 121001, 121000, 12),
(461, 'SAN FRANCISCO DE TIZNADO', 121002, 121000, 12),
(462, 'SAN JOSÉ DE TIZNADO', 121003, 121000, 12),
(463, 'SAN LORENZO DE TIZNADO', 121004, 121000, 12),
(464, 'CAPITAL TUCUPIDO', 121101, 121100, 12),
(465, 'SAN RAFAEL DE LAYA', 121102, 121100, 12),
(466, 'CAPITAL SAN JUAN DE LOS MORROS', 121201, 121200, 12),
(467, 'CANTAGALLO', 121202, 121200, 12),
(468, 'PARAPARA', 121203, 121200, 12),
(469, 'SAN JOSÉ DE GUARIBE', 121301, 121300, 12),
(470, 'CAPITAL SANTA MARÍA DE IPIRE', 121401, 121400, 12),
(471, 'ALTAMIRA', 121402, 121400, 12),
(472, 'CAPITAL ZARAZA', 121501, 121500, 12),
(473, 'SAN JOSÉ DE UNARE', 121502, 121500, 12),
(474, 'PAO TAMAYO', 130101, 130100, 13),
(475, 'QUEBRADA HONDA DE GUACHE', 130102, 130100, 13),
(476, 'YACAMBÚ', 130103, 130100, 13),
(477, 'FRÉITEZ', 130201, 130200, 13),
(478, 'JOSÉ MARÍA BLANCO', 130202, 130200, 13),
(479, 'CATEDRAL', 130301, 130300, 13),
(480, 'CONCEPCIÓN', 130302, 130300, 13),
(481, 'EL CUJÍ', 130303, 130300, 13),
(482, 'JUAN DE VILLEGAS', 130304, 130300, 13),
(483, 'SANTA ROSA', 130305, 130300, 13),
(484, 'TAMACA', 130306, 130300, 13),
(485, 'UNIÓN', 130307, 130300, 13),
(486, 'AGUEDO FELIPE ALVARADO', 130308, 130300, 13),
(487, 'BUENA VISTA', 130309, 130300, 13),
(488, 'JUÁREZ', 130310, 130300, 13),
(489, 'JUAN BAUTISTA RODRÍGUEZ', 130401, 130400, 13),
(490, 'CUARA', 130402, 130400, 13),
(491, 'DIEGO DE LOZADA', 130403, 130400, 13),
(492, 'PARAÍSO DE SAN JOSÉ', 130404, 130400, 13),
(493, 'SAN MIGUEL', 130405, 130400, 13),
(494, 'TINTORERO', 130406, 130400, 13),
(495, 'JOSÉ BERNARDO DORANTE', 130407, 130400, 13),
(496, 'CORONEL MARIANO PERAZA', 130408, 130400, 13),
(497, 'BOLÍVAR', 130501, 130500, 13),
(498, 'ANZOÁTEGUI', 130502, 130500, 13),
(499, 'GUÁRICO', 130503, 130500, 13),
(500, 'HILARIO LUNA Y LUNA', 130504, 130500, 13),
(501, 'HUMOCARO ALTO', 130505, 130500, 13),
(502, 'HUMOCARO BAJO', 130506, 130500, 13),
(503, 'LA CANDELARIA', 130507, 130500, 13),
(504, 'MORÁN', 130508, 130500, 13),
(505, 'CABUDARE', 130601, 130600, 13),
(506, 'JOSÉ GREGORIO BASTIDAS', 130602, 130600, 13),
(507, 'AGUA VIVA', 130603, 130600, 13),
(508, 'SARARE', 130701, 130700, 13),
(509, 'BURÍA', 130702, 130700, 13),
(510, 'GUSTAVO VEGAS LEÓN', 130703, 130700, 13),
(511, 'TRINIDAD SAMUEL', 130801, 130800, 13),
(512, 'ANTONIO DÍAZ', 130802, 130800, 13),
(513, 'CAMACARO', 130803, 130800, 13),
(514, 'CASTAÑEDA', 130804, 130800, 13),
(515, 'CECILIO ZUBILLAGA', 130805, 130800, 13),
(516, 'CHIQUINQUIRÁ', 130806, 130800, 13),
(517, 'EL BLANCO', 130807, 130800, 13),
(518, 'ESPINOZA DE LOS MONTEROS', 130808, 130800, 13),
(519, 'LARA', 130809, 130800, 13),
(520, 'LAS MERCEDES', 130810, 130800, 13),
(521, 'MANUEL MORILLO', 130811, 130800, 13),
(522, 'MONTAÑA VERDE', 130812, 130800, 13),
(523, 'MONTES DE OCA', 130813, 130800, 13),
(524, 'TORRES', 130814, 130800, 13),
(525, 'HERIBERTO ARROYO', 130815, 130800, 13),
(526, 'REYES VARGAS', 130816, 130800, 13),
(527, 'ALTAGRACIA', 130817, 130800, 13),
(528, 'SIQUISIQUE', 130901, 130900, 13),
(529, 'MOROTURO', 130902, 130900, 13),
(530, 'SAN MIGUEL', 130903, 130900, 13),
(531, 'XAGUAS', 130904, 130900, 13),
(532, 'PRESIDENTE BETANCOURT', 140101, 140100, 14),
(533, 'PRESIDENTE PÁEZ', 140102, 140100, 14),
(534, 'PRESIDENTE RÓMULO GALLEGOS', 140103, 140100, 14),
(535, 'GABRIEL PICÓN GONZÁLEZ', 140104, 140100, 14),
(536, 'HÉCTOR AMABLE MORA', 140105, 140100, 14),
(537, 'JOSÉ NUCETE SARDI', 140106, 140100, 14),
(538, 'PULIDO MÉNDEZ', 140107, 140100, 14),
(539, 'CAPITAL ANTONIO PINTO SALINAS', 140301, 140300, 14),
(540, 'MESA BOLÍVAR', 140302, 140300, 14),
(541, 'MESA DE LAS PALMAS', 140303, 140300, 14),
(542, 'CAPITAL ARICAGUA', 140401, 140400, 14),
(543, 'SAN ANTONIO', 140402, 140400, 14),
(544, 'CAPITAL ARZOBISPO CHACÓN', 140501, 140500, 14),
(545, 'CAPURÍ', 140502, 140500, 14),
(546, 'CHACANTÁ', 140503, 140500, 14),
(547, 'EL MOLINO', 140504, 140500, 14),
(548, 'GUAIMARAL', 140505, 140500, 14),
(549, 'MUCUTUY', 140506, 140500, 14),
(550, 'MUCUCHACHÍ', 140507, 140500, 14),
(551, 'FERNÁNDEZ PEÑA', 140601, 140600, 14),
(552, 'MATRIZ', 140602, 140600, 14),
(553, 'MONTALBÁN', 140603, 140600, 14),
(554, 'ACEQUIAS', 140604, 140600, 14),
(555, 'JAJÍ', 140605, 140600, 14),
(556, 'LA MESA', 140606, 140600, 14),
(557, 'SAN JOSÉ DEL SUR', 140607, 140600, 14),
(558, 'CAPITAL CARACCIOLO PARRA OLMEDO', 140701, 140700, 14),
(559, 'FLORENCIO RAMÍREZ', 140702, 140700, 14),
(560, 'CAPITAL CARDENAL QUINTERO', 140801, 140800, 14),
(561, 'LAS PIEDRAS', 140802, 140800, 14),
(562, 'CAPITAL GUARAQUE', 140901, 140900, 14),
(563, 'MESA DE QUINTERO', 140902, 140900, 14),
(564, 'RÍO NEGRO', 140903, 140900, 14),
(565, 'CAPITAL JULIO CÉSAR SALAS', 141001, 141000, 14),
(566, 'PALMIRA', 141002, 141000, 14),
(567, 'CAPITAL JUSTO BRICEÑO', 141101, 141000, 14),
(568, 'SAN CRISTÓBAL DE TORONDOY', 141102, 141000, 14),
(569, 'ANTONIO SPINETTI DINI', 141201, 141200, 14),
(570, 'ARIAS', 141202, 141200, 14),
(571, 'CARACCIOLO PARRA PÉREZ', 141203, 141200, 14),
(572, 'DOMINGO PEÑA', 141204, 141200, 14),
(573, 'EL LLANO', 141205, 141200, 14),
(574, 'GONZALO PICÓN FEBRES', 141206, 141200, 14),
(575, 'JACINTO PLAZA', 141207, 141200, 14),
(576, 'JUAN RODRÍGUEZ SUÁREZ', 141208, 141200, 14),
(577, 'LASSO DE LA VEGA', 141209, 141200, 14),
(578, 'MARIANO PICÓN SALAS', 141210, 141200, 14),
(579, 'MILLA', 141211, 141200, 14),
(580, 'OSUNA RODRÍGUEZ', 141212, 141200, 14),
(581, 'EL MORRO', 141214, 141200, 14),
(582, 'LOS NEVADOS', 141215, 141200, 14),
(583, 'CAPITAL MIRANDA', 141301, 141300, 14),
(584, 'ANDRÉS ELOY BLANCO', 141302, 141300, 14),
(585, 'LA VENTA', 141303, 141300, 14),
(586, 'PIÑANGO', 141304, 141300, 14),
(587, 'CAPITAL OBISPO RAMOS DE LORA', 141401, 141400, 14),
(588, 'ELOY PAREDES', 141402, 141400, 14),
(589, 'SAN RAFAEL DE ALCÁZAR', 141403, 141400, 14),
(590, 'CAPITAL RANGEL', 141701, 141700, 14),
(591, 'CACUTE', 141702, 141700, 14),
(592, 'LA TOMA', 141703, 141700, 14),
(593, 'MUCURUBÍ', 141704, 141700, 14),
(594, 'SAN RAFAEL', 141705, 141700, 14),
(595, 'CAPITAL RIVAS DÁVILA', 141801, 141800, 14),
(596, 'GERÓNIMO MALDONADO', 141802, 141800, 14),
(597, 'CAPITAL SUCRE', 142001, 142000, 14),
(598, 'CHIGUARÍ', 142002, 142000, 14),
(599, 'ESTÁNQUEZ', 142003, 142000, 14),
(600, 'LA TRAMPA', 142004, 142000, 14),
(601, 'PUEBLO NUEVO DEL SUR', 142005, 142000, 14),
(602, 'SAN JUAN', 142006, 142000, 14),
(603, 'EL AMPARO', 142101, 142100, 14),
(604, 'EL LLANO', 142102, 142100, 14),
(605, 'SAN FRANCISCO', 142103, 142100, 14),
(606, 'TOVAR', 142104, 142100, 14),
(607, 'CAPITAL TULIO FEBRES CORDERO', 142201, 142200, 14),
(608, 'INDEPENDENCIA', 142202, 142200, 14),
(609, 'MARÍA DE LA CONCEPCIÓN PALACIOS BLANCO', 142203, 142200, 14),
(610, 'SANTA APOLONIA', 142204, 142200, 14),
(611, 'CAPITAL ZEA', 142301, 142300, 14),
(612, 'CAÑO EL TIGRE', 142302, 142300, 14),
(613, 'CAUCAGUA', 150101, 150100, 15),
(614, 'ARAGUITA', 150102, 150100, 15),
(615, 'ARÉVALO GONZÁLEZ', 150103, 150100, 15),
(616, 'CAPAYA', 150104, 150100, 15),
(617, 'EL CAFÉ', 150105, 150100, 15),
(618, 'MARIZAPA', 150106, 150100, 15),
(619, 'PANAQUIRE', 150107, 150100, 15),
(620, 'RIBAS', 150108, 150100, 15),
(621, 'SAN JOSÉ DE BARLOVENTO', 150201, 150200, 15),
(622, 'CUMBO', 150202, 150200, 15),
(623, 'BARUTA', 150301, 150300, 15),
(624, 'EL CAFETAL', 150302, 150300, 15),
(625, 'LAS MINAS DE BARUTA', 150303, 150300, 15),
(626, 'HIGUEROTE', 150401, 150400, 15),
(627, 'CURIEPE', 150402, 150400, 15),
(628, 'TACARIGUA', 150403, 150400, 15),
(629, 'MAMPORAL', 150501, 150500, 15),
(630, 'CARRIZAL', 150601, 150500, 15),
(631, 'CHACAO', 150701, 150700, 15),
(632, 'CHARALLAVE', 150801, 150800, 15),
(633, 'LAS BRISAS', 150802, 150800, 15),
(634, 'EL HATILLO', 150901, 150900, 15),
(635, 'LOS TEQUES', 151001, 151000, 15),
(636, 'ALTAGRACIA DE LA MONTAÑA', 151002, 151000, 15),
(637, 'CECILIO ACOSTA', 151003, 151000, 15),
(638, 'EL JARILLO', 151004, 151000, 15),
(639, 'PARACOTOS', 151005, 151000, 15),
(640, 'SAN PEDRO', 151006, 151000, 15),
(641, 'TÁCATA', 151007, 151000, 15),
(642, 'SANTA TERESA DEL TUY', 151101, 151100, 15),
(643, 'EL CARTANAL', 151102, 151100, 15),
(644, 'OCUMARE DEL TUY', 151201, 151200, 15),
(645, 'LA DEMOCRACIA', 151202, 151200, 15),
(646, 'SANTA BÁRBARA', 151203, 151200, 15),
(647, 'SAN ANTONIO DE LOS ALTOS', 151301, 151300, 15),
(648, 'RÍO CHICO', 151401, 151400, 15),
(649, 'EL GUAPO', 151402, 151400, 15),
(650, 'TACARIGUA DE LA LAGUNA', 151403, 151400, 15),
(651, 'PÁPARO', 151404, 151400, 15),
(652, 'SAN FERNANDO DEL GUAPO', 151405, 151400, 15),
(653, 'SANTA LUCÍA', 151501, 151500, 15),
(654, 'CÚPIRA', 151601, 151600, 15),
(655, 'MACHURUCUTO', 151602, 151600, 15),
(656, 'GUARENAS', 151701, 151700, 15),
(657, 'SAN FRANCISCO DE YARE', 151801, 151800, 15),
(658, 'SAN ANTONIO DE YARE', 151802, 151800, 15),
(659, 'PETARE', 151901, 151900, 15),
(660, 'CAUCAGUITA', 151902, 151900, 15),
(661, 'FILA DE MARICHES', 151903, 151900, 15),
(662, 'LA DOLORITA', 151904, 151900, 15),
(663, 'LEONCIO MARTÍNEZ', 151905, 151900, 15),
(664, 'CÚA', 152001, 152000, 15),
(665, 'NUEVA CÚA', 152002, 152000, 15),
(666, 'GUATIRE', 152101, 152100, 15),
(667, 'BOLÍVAR', 152102, 152100, 15),
(668, 'CAPITAL ACOSTA', 160101, 160100, 16),
(669, 'SAN FRANCISCO', 160102, 160100, 16),
(670, 'CAPITAL CARIPE', 160401, 160400, 16),
(671, 'EL GUÁCHARO', 160402, 160400, 16),
(672, 'LA GUANOTA', 160403, 160400, 16),
(673, 'SABANA DE PIEDRA', 160404, 160400, 16),
(674, 'SAN AGUSTÍN', 160405, 160400, 16),
(675, 'TERESÓN', 160406, 160400, 16),
(676, 'CAPITAL CEDEÑO', 160501, 160500, 16),
(677, 'AREO', 160502, 160500, 16),
(678, 'SAN FÉLIX', 160503, 160500, 16),
(679, 'VIENTO FRESCO', 160504, 160500, 16),
(680, 'CAPITAL EZEQUIEL ZAMORA', 160601, 160600, 16),
(681, 'EL TEJERO', 160602, 160600, 16),
(682, 'CAPITAL LIBERTADOR', 160701, 160700, 16),
(683, 'CHAGUARAMAS', 160702, 160700, 16),
(684, 'LAS ALHUACAS', 160703, 160700, 16),
(685, 'TABASCA', 160704, 160700, 16),
(686, 'CAPITAL MATURÍN', 160801, 160800, 16),
(687, 'ALTO DE LOS GODOS', 160802, 160800, 16),
(688, 'BOQUERÓN', 160803, 160800, 16),
(689, 'LAS COCUIZAS', 160804, 160800, 16),
(690, 'SAN SIMÓN', 160805, 160800, 16),
(691, 'SANTA CRUZ', 160806, 160800, 16),
(692, 'EL COROZO', 160807, 160800, 16),
(693, 'EL FURRIAL', 160808, 160800, 16),
(694, 'JUSEPÍN', 160809, 160800, 16),
(695, 'LA PICA', 160810, 160800, 16),
(696, 'SAN VICENTE', 160811, 160800, 16),
(697, 'CAPITAL PIAR', 160901, 160900, 16),
(698, 'APARICIO', 160902, 160900, 16),
(699, 'CHAGUARAMAL', 160903, 160900, 16),
(700, 'EL PINTO', 160904, 160900, 16),
(701, 'GUANAGUANA', 160905, 160900, 16),
(702, 'LA TOSCANA', 160906, 160900, 16),
(703, 'TAGUAYA', 160907, 160900, 16),
(704, 'CAPITAL PUNCERES', 161001, 161000, 16),
(705, 'CACHIPO', 161002, 161000, 16),
(706, 'CM SANTA BÁRBARA', 161101, 161100, 16),
(707, 'CAPITAL SOTILLO', 161201, 161200, 16),
(708, 'LOS BARRANCOS DE FAJARDO', 161202, 161200, 16),
(709, 'CM URACOA', 161301, 161300, 16),
(710, 'CM LA PLAZA DE PARAGUACHI', 170101, 170100, 17),
(711, 'CM LA ASUNCIÓN', 170201, 170200, 17),
(712, 'CAPITAL DÍAZ', 170301, 170300, 17),
(713, 'ZABALA', 170302, 170300, 17),
(714, 'CAPITAL GARCÍA', 170401, 170400, 17),
(715, 'FRANCISCO FAJARDO', 170402, 170400, 17),
(716, 'CAPITAL GÓMEZ', 170501, 170500, 17),
(717, 'BOLÍVAR', 170502, 170500, 17),
(718, 'GUEVARA', 170503, 170500, 17),
(719, 'MATASIETE', 170504, 170500, 17),
(720, 'SUCRE', 170505, 170500, 17),
(721, 'CAPITAL MANEIRO', 170601, 170600, 17),
(722, 'AGUIRRE', 170602, 170600, 17),
(723, 'CAPITAL MARCANO', 170701, 170700, 17),
(724, 'ADRIÁN', 170702, 170700, 17),
(725, 'CM PORLAMAR', 170801, 170800, 17),
(726, 'CAPITAL PENÍNSULA DE MACANAO', 170901, 170900, 17),
(727, 'SAN FRANCISCO', 170902, 170900, 17),
(728, 'CAPITAL TUBORES', 171001, 171000, 17),
(729, 'LOS BARALES', 171002, 171000, 17),
(730, 'CAPITAL VILLALBA', 171101, 171100, 17),
(731, 'VICENTE FUENTES', 171102, 171100, 17),
(732, 'CM AGUA BLANCA', 180101, 180100, 18),
(733, 'CAPITAL ARAURE', 180201, 180200, 18),
(734, 'RÍO ACARIGUA', 180202, 180200, 18),
(735, 'CAPITAL ESTELLER', 180301, 180300, 18),
(736, 'UVERAL', 180302, 180300, 18),
(737, 'CAPITAL GUANARE', 180401, 180400, 18),
(738, 'CÓRDOBA', 180402, 180400, 18),
(739, 'SAN JOSÉ DE LA MONTAÑA', 180403, 180400, 18),
(740, 'SAN JUAN DE GUANAGUANARE', 180404, 180400, 18),
(741, 'VIRGEN DE LA COROMOTO', 180405, 180400, 18),
(742, 'CAPITAL GUANARITO', 180501, 180500, 18),
(743, 'TRINIDAD DE LA CAPILLA', 180502, 180500, 18),
(744, 'DIVINA PASTORA', 180503, 180500, 18),
(745, 'CAPITAL MONS. JOSÉ VICENTE DE UNDA', 180601, 180600, 18),
(746, 'PEÑA BLANCA', 180602, 180600, 18),
(747, 'CAPITAL OSPINO', 180701, 180700, 18),
(748, 'APARICIÓN', 180702, 180700, 18),
(749, 'LA ESTACIÓN', 180703, 180700, 18),
(750, 'CAPITAL PÁEZ', 180801, 180800, 18),
(751, 'PAYARA', 180802, 180800, 18),
(752, 'PIMPINELA', 180803, 180800, 18),
(753, 'RAMÓN PERAZA', 180804, 180800, 18),
(754, 'CAPITAL PAPELÓN', 180901, 180900, 18),
(755, 'CAÑO DELGADITO', 180902, 180900, 18),
(756, 'CAPITAL SAN GENARO DE BOCONOITO', 181001, 181000, 18),
(757, 'ANTOLÍN TOVAR', 181002, 181000, 18),
(758, 'CAPITAL SAN RAFAEL DE ONOTO', 181101, 181100, 18),
(759, 'SANTA FE', 181102, 181100, 18),
(760, 'THERMO MORLÉS', 181103, 181100, 18),
(761, 'CAPITAL SANTA ROSALÍA', 181201, 181200, 18),
(762, 'FLORIDA', 181202, 181200, 18),
(763, 'CAPITAL SUCRE', 181301, 181300, 18),
(764, 'CONCEPCIÓN', 181302, 181300, 18),
(765, 'SAN RAFAEL DE PALO ALZADO', 181303, 181300, 18),
(766, 'UVENCIO ANTONIO VELÁSQUEZ', 181304, 181300, 18),
(767, 'SAN JOSÉ DE SAGUAZ', 181305, 181300, 18),
(768, 'VILLA ROSA', 181306, 181300, 18),
(769, 'CAPITAL TURÍN', 181401, 181400, 18),
(770, 'CANELONES', 181402, 181400, 18),
(771, 'SANTA CRUZ', 181403, 181400, 18),
(772, 'SAN ISIDRO LABRADOR', 181404, 181400, 18),
(773, 'MARIÑO', 190101, 190100, 19),
(774, 'RÓMULO GALLEGOS', 190102, 190100, 19),
(775, 'SAN JOSÉ DE AEROCUAR', 190201, 190200, 19),
(776, 'TAVERA ACOSTA', 190202, 190200, 19),
(777, 'RÍO CARIBE', 190301, 190300, 19),
(778, 'ANTONIO JOSÉ DE SUCRE', 190302, 190300, 19),
(779, 'EL MORRO DE PUERTO SANTO', 190303, 190300, 19),
(780, 'PUERTO SANTO', 190304, 190300, 19),
(781, 'SAN JUAN DE LAS GALDONAS', 190305, 190300, 19),
(782, 'EL PILAR', 190401, 190400, 19),
(783, 'EL RINCÓN', 190402, 190400, 19),
(784, 'GENERAL FRANCISCO ANTONIO VÁSQUEZ', 190403, 190400, 19),
(785, 'GUARAINOS', 190404, 190400, 19),
(786, 'TUNAPUICITO', 190405, 190400, 19),
(787, 'UNIÓN', 190406, 190400, 19),
(788, 'BOLÍVAR', 190501, 190500, 19),
(789, 'MACARAPANA', 190502, 190500, 19),
(790, 'SANTA CATALINA', 190503, 190500, 19),
(791, 'SANTA ROSA', 190504, 190500, 19),
(792, 'SANTA TERESA', 190505, 190500, 19),
(793, 'CM MARIGUITAR', 190601, 190600, 19),
(794, 'YAGUARAPARO', 190701, 190700, 19),
(795, 'EL PAUJIL', 190702, 190700, 19),
(796, 'LIBERTAD', 190703, 190700, 19),
(797, 'ARAYA', 190801, 190800, 19),
(798, 'CHACOPATA', 190802, 190800, 19),
(799, 'MANICUARE', 190803, 190800, 19),
(800, 'TUNAPUY', 190901, 190900, 19),
(801, 'CAMPO ELÍAS', 190902, 190900, 19),
(802, 'IRAPA', 191001, 191000, 19),
(803, 'CAMPO CLARO', 191002, 191000, 19),
(804, 'MARABAL', 191003, 191000, 19),
(805, 'SAN ANTONIO DE IRAPA', 191004, 191000, 19),
(806, 'SORO', 191005, 191000, 19),
(807, 'CM SAN ANTONIO DEL GOLFO', 191101, 191100, 19),
(808, 'CUMANACOA', 191201, 191200, 19),
(809, 'ARENAS', 191202, 191200, 19),
(810, 'ARICAGUA', 191203, 191200, 19),
(811, 'COCOLLAR', 191204, 191200, 19),
(812, 'SAN FERNANDO', 191205, 191200, 19),
(813, 'SAN LORENZO', 191206, 191200, 19),
(814, 'VILLA FRONTADO (MUELLE DE CARIACO)', 191301, 191300, 19),
(815, 'CATUARO', 191302, 191300, 19),
(816, 'RENDÓN', 191303, 191300, 19),
(817, 'SANTA CRUZ', 191304, 191300, 19),
(818, 'SANTA MARÍA', 191305, 191300, 19),
(819, 'ALTAGRACIA', 191401, 191400, 19),
(820, 'AYACUCHO', 191402, 191400, 19),
(821, 'SANTA INÉS', 191403, 191400, 19),
(822, 'VALENTÍN VALIENTE', 191404, 191400, 19),
(823, 'SAN JUAN', 191405, 191400, 19),
(824, 'RAÚL LEONI', 191406, 191400, 19),
(825, 'GRAN MARISCAL', 191407, 191400, 19),
(826, 'GUIRIA', 191501, 191500, 19),
(827, 'BIDEAU', 191502, 191500, 19),
(828, 'CRISTÓBAL COLÓN', 191503, 191500, 19),
(829, 'PUNTA DE PIEDRAS', 191504, 191500, 19),
(830, 'CM CORDERO', 200101, 200100, 20),
(831, ' CM LAS MESAS', 200201, 200200, 20),
(832, 'AYACUCHO', 200301, 200300, 20),
(833, 'RIVAS BERTI', 200302, 200300, 20),
(834, 'SAN PEDRO DEL RÍO', 200303, 200300, 20),
(835, 'BOLÍVAR', 200401, 200400, 20),
(836, 'PALOTAL', 200402, 200400, 20),
(837, 'JUAN VICENTE GÓMEZ', 200403, 200400, 20),
(838, 'ISAÍAS MEDINA ANGARITA', 200404, 200400, 20),
(839, 'CÁRDENAS', 200501, 200500, 20),
(840, 'AMENODORO RANGEL LAMÚS', 200502, 200500, 20),
(841, 'LA FLORIDA', 200503, 200500, 20),
(842, 'CM SANTA ANA DEL TÁCHIRA', 200601, 200600, 20),
(843, 'FERNÁNDEZ FEO', 200701, 200700, 20),
(844, 'ALBERTO ADRIANI', 200702, 200700, 20),
(845, 'SANTO DOMINGO', 200703, 200700, 20),
(846, 'CM SAN JOSÉ DE BOLÍVAR', 200801, 200800, 20),
(847, 'GARCÍA DE HEVIA', 200901, 200900, 20),
(848, 'BOCA DE GRITA', 200902, 200900, 20),
(849, 'JOSÉ ANTONIO PÁEZ', 200903, 200900, 20),
(850, 'CM PALMIRA', 201001, 201000, 20),
(851, 'INDEPENDENCIA', 201101, 201100, 20),
(852, 'JUAN GERMÁN ROSCIO', 201102, 201100, 20),
(853, 'ROMÁN CÁRDENAS', 201103, 201100, 20),
(854, 'JÁUREGUI', 201201, 201200, 20),
(855, 'EMILIO CONSTANTINO GUERRERO', 201202, 201200, 20),
(856, 'MONSEÑOR MIGUEL ANTONIO SALAS', 201203, 201200, 20),
(857, 'CM EL COBRE', 201301, 201300, 20),
(858, 'JUNÍN', 201401, 201400, 20),
(859, 'LA PETRÓLEA', 201402, 201400, 20),
(860, 'QUINIMARÍ', 201403, 201400, 20),
(861, 'BRAMÓN', 201404, 201400, 20),
(862, 'LIBERTAD', 201501, 201500, 20),
(863, 'CIPRIANO CASTRO', 201502, 201500, 20),
(864, 'MANUEL FELIPE RUGELES', 201503, 201500, 20),
(865, 'LIBERTADOR', 201601, 201600, 20),
(866, 'DON EMETERIO OCHOA', 201602, 201600, 20),
(867, 'DORADAS', 201603, 201600, 20),
(868, 'SAN JOAQUÍN DE NAVAY', 201604, 201600, 20),
(869, 'LOBATERA', 201701, 201700, 20),
(870, 'CONSTITUCIÓN', 201702, 201700, 20),
(871, ' CM MICHELENA', 201801, 201800, 20),
(872, 'PANAMERICANO', 201901, 201900, 20),
(873, 'LA PALMITA', 201902, 201900, 20),
(874, 'PEDRO MARÍA UREÑA', 202001, 202000, 20),
(875, 'NUEVA ARCADIA', 202002, 202000, 20),
(876, 'SAMUEL DARÍO MALDONADO', 202201, 202000, 20),
(877, 'BOCONÓ', 202202, 202000, 20),
(878, 'HERNÁNDEZ', 202203, 202000, 20),
(879, 'CM DELICIAS', 202101, 202100, 20),
(880, 'CM LA TENDIDA', 202201, 202200, 20),
(881, 'BOCONÓ', 202202, 202200, 20),
(882, 'HERNÁNDEZ', 202203, 202200, 20),
(883, 'LA CONCORDIA', 202301, 202300, 20),
(884, 'PEDRO MARÍA MORANTES', 202302, 202300, 20),
(885, 'SAN JUAN BAUTISTA', 202303, 202300, 20),
(886, 'SAN SEBASTIÁN', 202304, 202300, 20),
(887, 'CM SEBORUCO', 202401, 202400, 20),
(888, 'DR. FRANCISCO ROMERO LOBO', 202305, 202500, 20),
(889, 'SUCRE', 202601, 202600, 20),
(890, 'ELEAZAR LÓPEZ CONTRERAS', 202602, 202600, 20),
(891, 'SAN PABLO', 202603, 202600, 20),
(892, 'CM SAN JOSECITO', 202701, 202700, 20),
(893, ' URIBANTE', 202801, 202800, 20),
(894, 'CÁRDENAS', 202802, 202800, 20),
(895, 'JUAN PABLO PEÑALOZA', 202803, 202800, 20),
(896, 'POTOSÍ', 202804, 202800, 20),
(897, 'CM UMUQUENA', 202901, 202900, 20),
(898, 'SANTA ISABEL', 210101, 210100, 21),
(899, 'ARAGUANEY', 210102, 210100, 21),
(900, 'EL JAGUITO', 210103, 210100, 21),
(901, 'LA ESPERANZA', 210104, 210100, 21),
(902, 'BOCONÓ', 210201, 210200, 21),
(903, 'EL CARMEN', 210202, 210200, 21),
(904, 'MOSQUEY', 210203, 210200, 21),
(905, 'AYACUCHO', 210204, 210200, 21),
(906, 'BURBUSAY', 210205, 210200, 21),
(907, 'GENERAL RIVAS', 210206, 210200, 21),
(908, 'GUARAMACAL', 210207, 210200, 21),
(909, 'VEGA DE GUARAMACAL', 210208, 210200, 21),
(910, 'MONSEÑOR JÁUREGUI', 210209, 210200, 21),
(911, 'RAFAEL RANGEL', 210210, 210200, 21),
(912, 'SAN MIGUEL', 210211, 210200, 21),
(913, 'SAN JOSÉ', 210212, 210200, 21),
(914, 'SABANA GRANDE', 210301, 210300, 21),
(915, 'CHEREGUE', 210302, 210300, 21),
(916, 'GRANADOS', 210303, 210300, 21),
(917, 'CHEJENDÉ', 210401, 210400, 21),
(918, 'ARNOLDO GABALDÓN', 210402, 210400, 21),
(919, 'BOLIVIA', 210403, 210400, 21),
(920, 'CARRILLO', 210404, 210400, 21),
(921, 'CEGARRA', 210405, 210400, 21),
(922, 'MANUEL SALVADOR ULLOA', 210406, 210400, 21),
(923, 'SAN JOSÉ', 210407, 210400, 21),
(924, 'CARACHE', 210501, 210500, 21),
(925, 'CUICAS', 210502, 210500, 21),
(926, 'LA CONCEPCIÓN', 210503, 210500, 21),
(927, 'PANAMERICANA', 210504, 210500, 21),
(928, 'SANTA CRUZ', 210505, 210500, 21),
(929, 'ESCUQUE', 210601, 210600, 21),
(930, 'LA UNIÓN', 210602, 210600, 21),
(931, 'SABANA LIBRE', 210603, 210600, 21),
(932, 'SANTA RITA', 210604, 210600, 21),
(933, 'EL SOCORRO', 210701, 210700, 21),
(934, 'ANTONIO JOSÉ DE SUCRE', 210702, 210700, 21),
(935, 'LOS CAPRICHOS', 210703, 210700, 21),
(936, 'CAMPO ELÍAS', 210801, 210800, 21),
(937, 'ARNOLDO GABALDÓN', 210802, 210800, 21),
(938, 'SANTA APOLONIA', 210901, 210900, 21),
(939, 'EL PROGRESO', 210902, 210900, 21),
(940, 'LA CEIBA', 210903, 210900, 21),
(941, 'TRES DE FEBRERO', 210904, 210900, 21),
(942, 'EL DIVIDIVE', 211001, 211000, 21),
(943, 'AGUA SANTA', 211002, 211000, 21),
(944, 'AGUA CALIENTE', 211003, 211000, 21),
(945, 'EL CENIZO', 211004, 211000, 21),
(946, 'VALERITA', 211005, 211000, 21),
(947, 'MONTE CARMELO', 211101, 211100, 21),
(948, 'BUENA VISTA', 211102, 211100, 21),
(949, 'SANTA MARÍA DEL HORCÓN', 211103, 211100, 21),
(950, 'MOTATÁN', 211201, 211200, 21),
(951, 'EL BAÑO', 211202, 211200, 21),
(952, 'JALISCO', 211203, 211200, 21),
(953, 'PAMPÁN', 211301, 211300, 21),
(954, 'FLOR DE PATRIA', 211302, 211300, 21),
(955, 'LA PAZ', 211303, 211300, 21),
(956, 'SANTA ANA', 211304, 211300, 21),
(957, 'PAMPANITO', 211401, 211400, 21),
(958, 'LA CONCEPCIÓN', 211402, 211400, 21),
(959, 'PAMPANITO II', 211403, 211400, 21),
(960, 'BETIJOQUE', 211501, 211500, 21),
(961, 'LA PUEBLITA', 211502, 211500, 21),
(962, 'LOS CEDROS', 211503, 211500, 21),
(963, 'JOSÉ GREGORIO HERNÁNDEZ', 211504, 211500, 21),
(964, 'CARVAJAL', 211601, 211600, 21),
(965, 'ANTONIO NICOLÁS BRICEÑO', 211602, 211600, 21),
(966, 'CAMPO ALEGRE', 211603, 211600, 21),
(967, 'JOSÉ LEONARDO SUÁREZ', 211604, 211600, 21),
(968, 'SABANA DE MENDOZA', 211701, 211700, 21),
(969, 'EL PARAÍ-SO', 211702, 211700, 21),
(970, 'JUNÍN', 211703, 211700, 21),
(971, 'VALMORE RODRÍGUEZ', 211704, 211700, 21),
(972, 'ANDRÉS LINARES', 211801, 211800, 21),
(973, 'CHIQUINQUIRÁ', 211802, 211800, 21),
(974, 'CRISTÓBAL MENDOZA', 211803, 211800, 21),
(975, 'CRUZ CARRILLO', 211804, 211800, 21),
(976, 'MATRIZ', 211805, 211800, 21),
(977, 'MONSEÑOR CARRILLO', 211806, 211800, 21),
(978, 'TRES ESQUINAS', 211807, 211800, 21),
(979, 'LA QUEBRADA', 211901, 211900, 21),
(980, 'CABIMBÚ', 211902, 211900, 21),
(981, 'JAJÍ', 211903, 211900, 21),
(982, 'LA MESA', 211904, 211900, 21),
(983, 'SANTIAGO', 211905, 211900, 21),
(984, 'TUÑAME', 211906, 211900, 21),
(985, 'JUAN IGNACIO MONTILLA', 212001, 212000, 21),
(986, 'LA BEATRIZ', 212002, 212000, 21),
(987, 'MERCEDES DÍAZ', 212003, 212000, 21),
(988, 'SAN LUIS', 212004, 212000, 21),
(989, 'LA PUERTA', 212005, 212000, 21),
(990, 'MENDOZA', 212006, 212000, 21),
(991, 'CM SAN PABLO', 220101, 220100, 22),
(992, 'CM AROA', 220201, 220200, 22),
(993, 'CAPITAL BRUZUAL', 220301, 220300, 22),
(994, 'CAMPO ELÍAS', 220302, 220300, 22),
(995, 'CM COCOROTE', 220401, 220400, 22),
(996, 'CM INDEPENDENCIA', 220501, 220500, 22),
(997, 'CM SABANA DE PARRA', 220601, 220600, 22),
(998, 'CM BORAURE', 220701, 220700, 22),
(999, 'CM YUMARE', 220801, 220800, 22),
(1000, 'CAPITAL NIRGUA', 220901, 220900, 22),
(1001, 'SALOM', 220902, 220900, 22),
(1002, 'TEMERLA', 220903, 220900, 22),
(1003, 'CAPITAL PEÑA', 221001, 221000, 22),
(1004, 'SAN ANDRÉS', 221002, 221000, 22),
(1005, 'CAPITAL SAN FELIPE', 221101, 221100, 22),
(1006, 'ALBARICO', 221102, 221100, 22),
(1007, 'SAN JAVIER', 221103, 221100, 22),
(1008, 'CM GUAMA', 221201, 221200, 22),
(1009, 'CM URACHICHE', 221301, 221300, 22),
(1010, 'CAPITAL VEROES', 221401, 221400, 22),
(1011, 'EL GUAYABO', 221402, 221400, 22),
(1012, 'ISLA DE TOAS', 230101, 230100, 23),
(1013, 'MONAGAS', 230102, 230100, 23),
(1014, 'GENERAL URDANETA', 230201, 230200, 23),
(1015, 'LIBERTADOR', 230202, 230200, 23),
(1016, 'MANUEL GUANIPA MATOS', 230203, 230200, 23),
(1017, 'MARCELINO BRICEÑO', 230204, 230200, 23),
(1018, 'PUEBLO NUEVO', 230205, 230200, 23),
(1019, 'SAN TIMOTEO', 230206, 230200, 23),
(1020, 'AMBROSIO', 230301, 230300, 23),
(1021, 'ARÍSTIDES CALVANI', 230302, 230300, 23),
(1022, 'CARMEN HERRERA', 230303, 230300, 23),
(1023, 'GERMAN RÍOS LINARES', 230304, 230300, 23),
(1024, 'JORGE HERNÁNDEZ', 230305, 230300, 23),
(1025, 'LA ROSA', 230306, 230300, 23),
(1026, 'PUNTA GORDA', 230307, 230300, 23),
(1027, 'RÓMULO BETANCOURT', 230308, 230300, 23),
(1028, 'SAN BENITO', 230309, 230300, 23),
(1029, 'ENCONTRADOS', 230401, 230400, 23),
(1030, 'UDON PÉREZ', 230402, 230400, 23),
(1031, 'MORALITO', 230501, 230500, 23),
(1032, 'SAN CARLOS DE ZULIA', 230502, 230500, 23),
(1033, 'SANTA BÁRBARA', 230503, 230500, 23),
(1034, 'SANTA CRUZ DEL ZULIA', 230504, 230500, 23),
(1035, 'URIBARRI', 230505, 230500, 23),
(1036, 'CARLOS QUEVEDO', 230601, 230600, 23),
(1037, 'FRANCISCO JAVIER PULGAR', 230602, 230600, 23),
(1038, 'SIMÓN RODRÍGUEZ', 230603, 230600, 23),
(1039, 'JOSÉ RAMÓN YÉPEZ', 230701, 230700, 23),
(1040, 'LA CONCEPCIÓN', 230702, 230700, 23),
(1041, 'MARIANO PARRA LEÓN', 230703, 230700, 23),
(1042, 'SAN JOSÉ', 230704, 230700, 23),
(1043, 'BARI', 230801, 230800, 23),
(1044, 'JESÚS MARÍA SEMPRÚN', 230802, 230800, 23),
(1045, 'ANDRÉS BELLO', 230901, 230900, 23),
(1046, 'CHIQUINQUIRÁ', 230902, 230900, 23),
(1047, 'CONCEPCIÓN', 230903, 230900, 23),
(1048, 'EL CARMELO', 230904, 230900, 23),
(1049, 'POTRERITOS', 230905, 230900, 23),
(1050, 'ALONSO DE OJEDA', 231001, 231000, 23),
(1051, 'CAMPO LARA', 231002, 231000, 23),
(1052, 'ELEAZAR LÓPEZ CONTRERAS', 231003, 231000, 23),
(1053, 'LIBERTAD', 231004, 231000, 23),
(1054, 'VENEZUELA', 231005, 231000, 23),
(1055, 'LIBERTAD', 231101, 231100, 23),
(1056, 'RÍO NEGRO', 231102, 231100, 23),
(1057, 'SAN JOSÉ DE PERIJÁ', 231103, 231100, 23),
(1058, 'BARTOLOMÉ DE LAS CASAS', 231104, 231100, 23),
(1059, 'LA SIERRITA', 231201, 231200, 23),
(1060, 'LAS PARCELAS', 231202, 231200, 23),
(1061, 'LUIS DE VICENTE', 231203, 231200, 23),
(1062, 'MONSEÑOR MARCOS SERGIO G', 231204, 231200, 23),
(1063, 'RICAURTE', 231205, 231200, 23),
(1064, 'SAN RAFAEL', 231206, 231200, 23),
(1065, 'TAMARE', 231207, 231200, 23),
(1066, 'ANTONIO BORJAS ROMERO', 231301, 231300, 23),
(1067, 'BOLÍVAR', 231302, 231300, 23),
(1068, 'CACIQUE MARA', 231303, 231300, 23),
(1069, 'CECILIO ACOSTA', 231304, 231300, 23),
(1070, 'CHIQUINQUIRÁ', 231305, 231300, 23),
(1071, 'COQUIVACOA', 231306, 231300, 23),
(1072, 'CRISTO DE ARANZA', 231307, 231300, 23),
(1073, 'FRANCISCO EUGENIO B', 231308, 231300, 23),
(1074, 'IDELFONZO VÁSQUEZ', 231309, 231300, 23),
(1075, 'JUANA DE ÁVILA', 231310, 231300, 23),
(1076, 'LUIS HURTADO HIGUERA', 231311, 231300, 23),
(1077, 'MANUEL DANIGNO', 231312, 231300, 23),
(1078, 'OLEGARIO VILLALOBOS', 231313, 231300, 23),
(1079, 'RAÚL LEONI', 231314, 231300, 23),
(1080, 'SAN ISIDRO', 231315, 231300, 23),
(1081, 'SANTA LUCÍA', 231316, 231300, 23),
(1082, 'VENANCIO PULGAR', 231317, 231300, 23),
(1083, 'CARACCIOLO PARRA PÉREZ', 231318, 231300, 23),
(1084, 'SAN JOSÉ', 231405, 231400, 23),
(1085, 'SINAMAICA', 231501, 231500, 23),
(1086, 'ALTA GUAJIRA', 231502, 231500, 23),
(1087, 'ELÍAS SÁNCHEZ RUBIO', 231503, 231500, 23),
(1088, 'GUAJIRA', 231504, 231500, 23),
(1089, 'EL ROSARIO', 231601, 231600, 23),
(1090, 'DONALDO GARCÍA', 231602, 231600, 23),
(1091, 'SIXTO ZAMBRANO', 231603, 231600, 23),
(1092, 'SAN FRANCISCO', 231701, 231700, 23),
(1093, 'EL BAJO', 231702, 231700, 23),
(1094, 'DOMITILA FLORES', 231703, 231700, 23),
(1095, 'FRANCISCO OCHOA', 231704, 231700, 23),
(1096, 'LOS CORTIJOS', 231705, 231700, 23),
(1097, 'MARCIAL HERNÁNDEZ', 231706, 231700, 23),
(1098, 'JOSÉ DOMINGO RUS', 231707, 231700, 23),
(1099, 'SANTA RITA', 231801, 231800, 23),
(1100, 'EL MENE', 231802, 231800, 23),
(1101, 'JOSÉ CENOVIO URRIBARRI', 231803, 231800, 23),
(1102, 'PEDRO LUCAS URRIBARRI', 231804, 231800, 23),
(1103, 'MANUEL MANRIQUE', 231901, 231900, 23),
(1104, 'RAFAEL MARÍA BARALT', 231902, 231900, 23),
(1105, 'RAFAEL URDANETA', 231903, 231900, 23),
(1106, 'BOBURES', 232001, 232000, 23),
(1107, 'EL BATEY', 232002, 232000, 23),
(1108, 'GIBRALTAR', 232003, 232000, 23),
(1109, 'HERAS', 232004, 232000, 23),
(1110, 'MONSEÑOR ARTURO CELESTINO ÁLVAREZ', 232005, 232000, 23),
(1111, 'RÓMULO GALLEGOS', 232006, 232000, 23),
(1112, 'LA VICTORIA', 232101, 232100, 23),
(1113, 'RAFAEL URDANETA', 232102, 232100, 23),
(1114, 'RAÚL CUENCA', 232103, 232100, 23),
(1115, 'CARABALLEDA', 240101, 240100, 24),
(1116, 'CARAYACA', 240102, 240100, 24),
(1117, 'CARUAO', 240103, 240100, 24),
(1118, 'CATIA LA MAR', 240104, 240100, 24),
(1119, 'EL JUNKO', 240105, 240100, 24),
(1120, 'LA GUAIRA', 240106, 240100, 24),
(1121, 'MACUTO', 240107, 240100, 24),
(1122, 'MAIQUETÍA', 240108, 240100, 24),
(1123, 'NAIGUATÁ', 240109, 240100, 24),
(1124, 'URIMARE', 240110, 240100, 24),
(1125, 'CARLOS SOUBLETTE', 240111, 240100, 24),
(1126, 'LOS ROQUES', 250101, 250100, 25),
(1127, 'LAS AVES', 250201, 250200, 25),
(1128, 'LA ORCHILA', 250301, 250300, 25),
(1129, 'OTRAS DEPENDENCIAS FEDERALES (P)', 260101, 260100, 26),
(1130, 'REGISTRO DE NORMALIZACIÓN (PARROQUIA)', 270101, 270100, 27);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_cod_pedido` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codpedido` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codproveedor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `proveedor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_emision` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_emision` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `num_control` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firma_almacen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_ingreso` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_ingreso` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pedidos_codpedido_key` (`codpedido`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`id`, `pre_cod_pedido`, `codpedido`, `codproveedor`, `proveedor`, `observaciones`, `motivo_anulacion`, `estado`, `fecha_emision`, `hora_emision`, `num_control`, `firma_almacen`, `fecha_ingreso`, `hora_ingreso`) VALUES
(1, NULL, '00000001', 'P00001', 'Importadora C.A', 'Prueba de registro', NULL, 4, '2016-06-19', '11:55:23 pm', '13920', 'Pedro Pérez', '2016-06-24', '10:30:25 pm'),
(2, NULL, '00000002', 'P00001', 'Importadora C.A', 'Prueba de registro', 'Exceso de existencia', 3, '2016-06-19', '11:56:50 pm', '11703', NULL, NULL, NULL),
(3, NULL, '00000003', 'P00001', 'Importadora C.A', 'Prueba de pedido', NULL, 4, '2016-06-25', '12:09:22 am', '28982', 'Pedro Pérez', '2016-06-25', '12:11:39 am'),
(4, NULL, '00000004', 'P00001', 'Importadora C.A', 'Prueba de pedido', NULL, 4, '2016-06-25', '12:15:27 am', '28723', 'Pedro Pérez', '2016-06-25', '12:20:08 am'),
(5, NULL, '00000005', 'P00002', 'Distribuidora C.A', 'Prueba de registro', NULL, 4, '2016-07-16', '02:48:04 pm', '1155519544', 'JOSE ALFREDO SOLORZANO HERNANDEZ (almacen)', '2016-07-16', '02:50:34 pm'),
(6, NULL, '00000006', 'P00001', 'Importadora C.A', '', NULL, 1, '2016-08-03', '02:05:19 pm', '1936119824', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos_ps`
--

CREATE TABLE IF NOT EXISTS `pedidos_ps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codpedidops` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codpedido` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `cod_producto_servicio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `producto_servicio` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pedidos_ps_codpedidops_key` (`codpedidops`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pedidos_ps`
--

INSERT INTO `pedidos_ps` (`id`, `codpedidops`, `codpedido`, `tipo`, `cod_producto_servicio`, `producto_servicio`, `cantidad`) VALUES
(1, '00000001', '00000001', 1, '00003', 'UPS', 3),
(2, '00000002', '00000001', 1, '00002', 'Fuente de Poder', 2),
(3, '00000003', '00000002', 1, '00001', 'Cable UTP', 2),
(4, '00000004', '00000003', 1, '00002', 'Fuente de Poder', 3),
(5, '00000005', '00000003', 1, '00003', 'UPS', 3),
(6, '00000006', '00000004', 1, '00002', 'Fuente de Poder', 3),
(7, '00000007', '00000004', 1, '00003', 'UPS', 3),
(8, '00000008', '00000004', 1, '00001', 'Cable UTP', 3),
(9, '00000009', '00000005', 1, '00001', 'Cable UTP', 5),
(10, '00000010', '00000006', 1, '00002', 'Fuente de Poder', 10);

-- --------------------------------------------------------

--
-- Table structure for table `preguntas_parte_1`
--

CREATE TABLE IF NOT EXISTS `preguntas_parte_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `pregunta` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `preguntas_parte_1`
--

INSERT INTO `preguntas_parte_1` (`id`, `codigo`, `pregunta`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`, `estatus`) VALUES
(1, 1, 'Critican su vida privada', '2017-03-02', '', '01:09:05 pm', '', 1, 1),
(2, 2, 'Le asignan tareas muy difíciles o muy por encima de su preparación, en las que es muy probable que fracase', '2017-03-02', '2017-03-02', '01:11:43 pm', '01:51:37 pm', 1, 1),
(3, 3, 'Le asignan tareas muy por debajo de su competencia', '2017-03-03', '', '02:24:11 pm', '', 1, 1),
(4, 4, 'Hacen circular rumores falsos sobre usted', '2017-03-03', '', '02:24:46 pm', '', 1, 1),
(5, 5, 'Ignoran su presencia, no responden a sus preguntas', '2017-03-03', '', '02:25:28 pm', '', 1, 1),
(6, 6, 'Atacan o se burlan de sus convicciones políticas o sus creencias religiosas', '2017-03-03', '', '02:25:59 pm', '', 1, 1),
(7, 7, 'Sus deciiones son cuestionadas u obstaculizadas', '2017-03-03', '', '02:26:35 pm', '', 1, 1),
(8, 8, 'Le cortan sus iniciativas, no le permiten desarrollar sus ideas', '2017-03-03', '2017-03-03', '02:27:24 pm', '02:27:44 pm', 1, 1),
(9, 9, 'Le obligan a hacer tareas absurdas o inútiles', '2017-03-03', '', '02:28:10 pm', '', 1, 1),
(10, 10, 'Recibe escritos o notas amenazadoras', '2017-03-03', '', '02:28:43 pm', '', 1, 1),
(11, 11, 'No consigue hablar con nadie', '2017-03-03', '', '02:29:11 pm', '', 1, 1),
(12, 12, 'Se le asigna un trabajo humillante', '2017-03-03', '', '02:29:34 pm', '', 1, 1),
(13, 13, 'Siente ustede que su trabajo es valorado', '2017-03-03', '', '02:29:53 pm', '', 1, 1),
(14, 14, 'Le gritan o regañan en voz alta', '2017-03-03', '', '02:30:18 pm', '', 1, 1),
(15, 15, 'Sus compañeros le ponen obstáculos para expresarse o no le dejan hablar', '2017-03-03', '', '02:30:44 pm', '', 1, 1),
(16, 16, 'Se le asignan insuficientes tareas, no tiene nada que hacer', '2017-03-03', '', '02:31:51 pm', '', 1, 1),
(17, 17, 'Se siente usted apreciado por sus compañeros de trabajo', '2017-03-03', '', '02:32:21 pm', '', 1, 1),
(18, 18, 'Le obligan a realizar tareas humillantes', '2017-03-03', '', '02:33:24 pm', '', 1, 1),
(19, 19, 'La gente ha dejado o está dejando de hablar con usted', '2017-03-03', '', '02:33:55 pm', '', 1, 1),
(20, 20, 'Sus superiores no le dejan expresarse o decir lo que tiene que decir', '2017-03-03', '', '02:34:27 pm', '', 1, 1),
(21, 21, 'Es víctima de amenazas verbales', '2017-03-03', '', '02:35:03 pm', '', 1, 1),
(22, 22, 'Imitan su forma de andar, su voz o sus gestos para ponerle en ridículo', '2017-03-03', '', '02:35:38 pm', '', 1, 1),
(23, 23, 'Le miran con agrado y resaltan sus cualidades', '2017-03-03', '', '02:36:15 pm', '', 1, 1),
(24, 24, 'Le interrumpen cuando habla', '2017-03-03', '', '02:37:27 pm', '', 1, 1),
(25, 25, 'Callan o minimizan sus esfuerzos, logros o aciertos', '2017-03-03', '', '02:39:04 pm', '', 1, 1),
(26, 26, 'Recibe llamadas telefónicas amenazantes, insultantes o acusadoras', '2017-03-03', '', '02:39:40 pm', '', 1, 1),
(27, 27, 'Recibe agresiones sexuales físicas directas', '2017-03-03', '', '02:40:16 pm', '', 1, 1),
(28, 28, 'Se siente desautorizado(a) en sus funciones por otro compañero', '2017-03-03', '', '02:40:54 pm', '', 1, 1),
(29, 29, 'Exageran sus fallos y errores', '2017-03-03', '', '02:41:42 pm', '', 1, 1),
(30, 30, 'Aceptan sus nacionalidad, procedencia o lugar de origen', '2017-03-03', '', '02:42:09 pm', '', 1, 1),
(31, 31, 'La carga de trabajo es de acuerdo a su perfil profesional', '2017-03-03', '', '02:42:35 pm', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `preguntas_parte_2`
--

CREATE TABLE IF NOT EXISTS `preguntas_parte_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `pregunta` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `preguntas_parte_2`
--

INSERT INTO `preguntas_parte_2` (`id`, `codigo`, `pregunta`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`, `estatus`) VALUES
(1, 1, 'Sus objetivos de trabajo son retadores', '2017-03-02', '', '01:41:45 pm', '', 1, 1),
(2, 2, 'En la empresa se valora los altos niveles de desempeño', '2017-03-02', '2017-03-02', '01:42:36 pm', '01:52:02 pm', 1, 1),
(3, 3, 'En la empresa las personas afrontan y superan los obstáculos', '2017-03-03', '', '02:43:35 pm', '', 1, 1),
(4, 4, 'En la institución se valora la iniciativa para alcanzar los objetivos planteados en su proceso de trabajo', '2017-03-03', '', '02:44:50 pm', '', 1, 1),
(5, 5, 'Tiene la oportunidad de realizar lo que mejor sabe en su puesto de trabajo', '2017-03-03', '', '02:45:52 pm', '', 1, 1),
(6, 6, 'Ustede tiene acceso a la información que necesita para hacer su trabajo', '2017-03-03', '', '02:46:34 pm', '', 1, 1),
(7, 7, 'En la empresa existen canales de comunicación', '2017-03-03', '', '02:47:05 pm', '', 1, 1),
(8, 8, 'En la institución se fomenta una comunicación abierta entre todos los niveles de la empresa', '2017-03-03', '', '02:47:37 pm', '', 1, 1),
(9, 9, 'En la institución se fomenta y rpomueve una comunicación abierta', '2017-03-03', '', '02:48:27 pm', '', 1, 1),
(10, 10, 'En su institución se mejora continuamente los procedimientos de trabajo', '2017-03-03', '', '02:49:31 pm', '', 1, 1),
(11, 11, 'Dispone usted de los recursos necesarios para realizar su trabajo', '2017-03-03', '', '02:50:21 pm', '', 1, 1),
(12, 12, 'Usted cuenta con un mecanismo para el seguimiento y control de actividades', '2017-03-03', '', '02:50:51 pm', '', 1, 1),
(13, 13, 'Existen normas y procedimientos que sirven de guía en su trabajo', '2017-03-03', '2017-03-03', '02:52:04 pm', '02:52:53 pm', 1, 1),
(14, 14, 'Existen oportunidades de desarrollo en la empresa', '2017-03-03', '', '02:53:03 pm', '', 1, 1),
(15, 15, 'Sus actividades laborales le permiten aprender y desarrollarse progresivamente', '2017-03-03', '', '02:53:44 pm', '', 1, 1),
(16, 16, 'Usted recibe entrenamiento por lo menos dos veces al año en su área de trabajo', '2017-03-03', '', '02:54:47 pm', '', 1, 1),
(17, 17, 'Usted considera que realizando su trabajo está desarrollando su potencial', '2017-03-03', '', '02:55:32 pm', '', 1, 1),
(18, 18, 'Usted tiene autoridad en la toma de decisiones de las cuales es responsable en su puesto de trabajo', '2017-03-03', '2017-03-03', '02:56:17 pm', '02:57:22 pm', 1, 1),
(19, 19, 'Ustede se considera un factor clave para el éxito de la empresa', '2017-03-03', '', '02:57:37 pm', '', 1, 1),
(20, 20, 'Usted participa en el establecimiento de sus objetivos de trabajo', '2017-03-03', '', '02:58:35 pm', '', 1, 1),
(21, 21, 'Usted define las acciones para el logro de sus objetivos de trabajo', '2017-03-03', '', '02:59:25 pm', '', 1, 1),
(22, 22, 'Los miembros de su departamento o gerencia cooperan entre sí', '2017-03-03', '2017-03-03', '03:00:09 pm', '03:00:32 pm', 1, 1),
(23, 23, 'Su grupo de trabajo funciona como un equipo bien integrado', '2017-03-03', '', '03:00:57 pm', '', 1, 1),
(24, 24, 'En su departamento o gerencia existe una relación de trabajo armoniosa', '2017-03-03', '', '03:01:39 pm', '', 1, 1),
(25, 25, 'Es posible interactuar con personas de todo nivel jerárquico dentro de la empresa', '2017-03-03', '', '03:02:16 pm', '', 1, 1),
(26, 26, 'Su jefe maneja eficientemente la resistencia al cambio cuando se presenta en su equipo de trabajo', '2017-03-03', '', '03:03:10 pm', '', 1, 1),
(27, 27, 'Recientemente ha recibido información sobre los cambios que han ocurrido en la empresa', '2017-03-03', '', '03:03:59 pm', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `presupuesto`
--

CREATE TABLE IF NOT EXISTS `presupuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_cod_presupuesto` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codpresupuesto` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codcliente` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cliente` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `base_imponible` double DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `totalpresupuesto` double DEFAULT NULL,
  `observaciones` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_emision` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_emision` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_vencimiento` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_vencimiento` int(12) NOT NULL,
  `monto_desc` double DEFAULT NULL,
  `condicion_pago` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto_exento` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `presupuesto_codpresupuesto_key` (`codpresupuesto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `presupuesto`
--

INSERT INTO `presupuesto` (`id`, `pre_cod_presupuesto`, `codpresupuesto`, `codcliente`, `cliente`, `base_imponible`, `iva`, `monto_iva`, `descuento`, `totalpresupuesto`, `observaciones`, `motivo_anulacion`, `estado`, `fecha_emision`, `hora_emision`, `fecha_vencimiento`, `hora_vencimiento`, `monto_desc`, `condicion_pago`, `monto_exento`, `subtotal`) VALUES
(1, NULL, '00000001', 'C00002', 'Plasticos C.A', 1800, NULL, 216, 0, 2016, '', NULL, 1, '11-06-2016', '04:28:55 pm', '', 0, 0, NULL, 0, 1800),
(2, NULL, '00000002', 'C00001', 'Importaciones C.A', 8400, NULL, 1008, 0, 9408, '', NULL, 1, '14-06-2016', '06:21:10 am', '', 0, 0, NULL, 0, 8400);

-- --------------------------------------------------------

--
-- Table structure for table `presupuesto_ps`
--

CREATE TABLE IF NOT EXISTS `presupuesto_ps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codpresupuestops` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codpresupuesto` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `cod_producto_servicio` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `producto_servicio` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `presupuesto_ps_codpresupuestops_key` (`codpresupuestops`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `presupuesto_ps`
--

INSERT INTO `presupuesto_ps` (`id`, `codpresupuestops`, `codpresupuesto`, `tipo`, `cod_producto_servicio`, `producto_servicio`, `precio`, `cantidad`, `importe`, `monto_iva`) VALUES
(1, '00000001', '00000001', 1, '00001', 'Cable UTP', 600, 3, 1800, 72),
(2, '00000002', '00000002', 1, '00001', 'Cable UTP', 600, 2, 1200, 72),
(3, '00000003', '00000002', 1, '00002', 'Fuente de Poder', 1200, 2, 2400, 144),
(4, '00000004', '00000002', 1, '00003', 'UPS', 2400, 2, 4800, 288);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipoproducto` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_max` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_min` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stock_req` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ganancia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio_unitario` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `unidad_medida` int(11) DEFAULT NULL,
  `tiempo_utilidad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proveedor` int(11) DEFAULT NULL,
  `monto_iva` double DEFAULT NULL,
  `precio_total` double DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`id`, `codigo`, `tipoproducto`, `nombre`, `descripcion`, `cantidad`, `stock_max`, `stock_min`, `stock_req`, `ganancia`, `precio_unitario`, `iva`, `unidad_medida`, `tiempo_utilidad`, `proveedor`, `monto_iva`, `precio_total`, `existencia`) VALUES
(1, '00001', 2, 'Cable UTP', 'Cable UTP', '500', '1000', '100', '447', '2', '500', 1, 1, '01/2016', 1, 72, 600, 553),
(2, '00002', 3, 'Fuente de Poder', 'Fuente de Poder', '500', '1000', '100', '494', '2', '1000', 1, 3, '08/2017', 1, 144, 1200, 506),
(3, '00003', 3, 'UPS', 'Suplidor de Energía', '500', '1000', '100', '194', '2', '2000', 1, 3, '11/2017', 1, 288, 2400, 806),
(4, '00004', 2, 'conectores rj-45', 'conectores rj-45 ', '500', '5000', '100', '4500', '2', '100', 1, 3, NULL, 2, 14.4, 120, 500);

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipoproveedor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cirif` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `rif` tinyint(1) DEFAULT NULL,
  `venc_cirif` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `municipio` int(11) DEFAULT NULL,
  `parroquia` int(11) DEFAULT NULL,
  `direccion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tlf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tlf_movil` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechacreacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `puntuacion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acta_constitutiva` tinyint(1) DEFAULT NULL,
  `cedula_represen` tinyint(1) DEFAULT NULL,
  `autorizacion_represen` tinyint(1) DEFAULT NULL,
  `solvencia_laboral` tinyint(1) DEFAULT NULL,
  `venc_solvencia_laboral` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snc` tinyint(1) DEFAULT NULL,
  `rcn` tinyint(1) DEFAULT NULL,
  `venc_rcn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_proveedor` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `solvencia_ince` tinyint(1) DEFAULT NULL,
  `venc_solvencia_ince` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `solvencia_sso` tinyint(1) DEFAULT NULL,
  `venc_solvencia_sso` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `codigo`, `tipoproveedor`, `cirif`, `rif`, `venc_cirif`, `nombre`, `estado`, `municipio`, `parroquia`, `direccion`, `tlf`, `tlf_movil`, `fax`, `email`, `fechacreacion`, `estatus`, `puntuacion`, `acta_constitutiva`, `cedula_represen`, `autorizacion_represen`, `solvencia_laboral`, `venc_solvencia_laboral`, `snc`, `rcn`, `venc_rcn`, `tipo_proveedor`, `solvencia_ince`, `venc_solvencia_ince`, `solvencia_sso`, `venc_solvencia_sso`) VALUES
(1, 'P00001', 'J', '454548787', NULL, NULL, 'Importadora C.A', 4, 40700, 40701, 'San Fernando, Edo. Apure', '04141564321', '04161023245', 'importadoras@gmail.c', 'importadoras@gmail.com', '2016-08-12 13:20:01', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TP00001', NULL, NULL, NULL, NULL),
(2, 'P00002', 'J', '656456456', NULL, NULL, 'Distribuidora C.A', 4, 40700, 40701, 'San Fernando, Edo. Apure', '04141561234', '04161025223', 'distribuidora@gmail.', 'distribuidora@gmail.com', '2016-08-12 13:19:21', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TP00002', NULL, NULL, NULL, NULL),
(3, 'P00003', 'P', '34221425', NULL, NULL, 'Trainca', 5, 50300, 50308, 'San Carlos', '04142661465', '04161023245', '', 'trar@gmail.com', '2016-08-12 11:45:37', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TP00003', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recibos`
--

CREATE TABLE IF NOT EXISTS `recibos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codrecibo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codempleado` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `empleado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `monto_salario` double DEFAULT NULL,
  `ret_faov` double DEFAULT NULL,
  `ret_sso` double DEFAULT NULL,
  `faov_patrono` double DEFAULT NULL,
  `sso_patrono` double DEFAULT NULL,
  `abonos` double DEFAULT NULL,
  `descuento` double DEFAULT NULL,
  `totalrecibo` double DEFAULT NULL,
  `observaciones` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_emision` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_emision` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `condicion_pago` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `num_cheque` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_recibo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_transf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_deposito` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num_control` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firma_rrhh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_entrega` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_entrega` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recibos_codrecibo_key` (`codrecibo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `recibos`
--

INSERT INTO `recibos` (`id`, `codrecibo`, `codempleado`, `empleado`, `salario`, `monto_salario`, `ret_faov`, `ret_sso`, `faov_patrono`, `sso_patrono`, `abonos`, `descuento`, `totalrecibo`, `observaciones`, `motivo_anulacion`, `estado`, `fecha_emision`, `hora_emision`, `condicion_pago`, `subtotal`, `num_cheque`, `num_recibo`, `num_transf`, `num_deposito`, `num_control`, `firma_rrhh`, `fecha_entrega`, `hora_entrega`) VALUES
(1, '00000001', 'E00001', 'Jose Luis Pérez González', 'Salario mínimo', 22500, 259.62, 1038.46, 519.23, 2855.77, 1500, 900, 21801.92, 'Prueba de generación de cálculos y registro', 'Prueba de anulación', 2, '2016-07-03', '10:46:03 pm', '1', 22500, '245485489', '', '', '', '3774', NULL, NULL, NULL),
(2, '00000002', 'E00002', 'José Solorzano', 'Salario mínimo', 22500, 207.69, 830.77, 415.38, 2284.62, 2500, 500, 23461.54, 'Nueba prueba', NULL, 2, '2016-07-04', '01:00:53 am', '1', 22500, '', '', '', '', '12642', 'Pedro Pérez', '04-07-2016', '01:06:36 am'),
(3, '00000003', 'E00001', 'Jose Luis Pérez González', 'Salario mínimo', 22500, 207.69, 830.77, 415.38, 2284.62, 18000, 900, 38561.54, 'Prueba de funcionamiento', NULL, 2, '2016-07-16', '03:21:03 pm', '1', 22500, '1727676122', '', '', '', '1727676122', 'FRANCIS KATERINNE MEDINA GONZALEZ (admin)', '16-07-2016', '03:29:00 pm'),
(4, '00000004', 'E00002', 'José Solorzano', 'Salario mínimo', 22500, 207.69, 830.77, 415.38, 2284.62, 18500, 0, 39961.54, 'Nuevo recibo de pago', NULL, 1, '2016-08-03', '09:43:43 am', '1', 22500, NULL, NULL, NULL, NULL, '1766028852', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recibos_ps`
--

CREATE TABLE IF NOT EXISTS `recibos_ps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codrecibops` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `codrecibo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `abono_descuento` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recibos_ps_codrecibops_key` (`codrecibops`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `recibos_ps`
--

INSERT INTO `recibos_ps` (`id`, `codrecibops`, `codrecibo`, `tipo`, `abono_descuento`, `monto`, `cantidad`, `importe`) VALUES
(1, '00000001', '00000001', 1, 'Bono de Transporte', 500, 1, 500),
(2, '00000002', '00000001', 1, 'Bono de familia', 500, 2, 1000),
(4, '00000004', '00000001', 2, 'Faltas al trabajo', 300, 3, 900),
(5, '00000005', '00000002', 1, 'Bono de Trnaporte', 500, 1, 500),
(6, '00000006', '00000002', 1, 'Bono de familia', 1000, 1, 1000),
(7, '00000007', '00000002', 1, 'Bono de responsabilidad', 1000, 1, 1000),
(8, '00000008', '00000002', 2, 'prestamos', 500, 1, 500),
(9, '00000009', '00000003', 1, 'Bono de alimentación', 18000, 1, 18000),
(10, '00000010', '00000003', 2, 'Faltas al trabajo', 300, 3, 900),
(11, '00000011', '00000004', 1, 'Bono de Alimentación', 18500, 1, 18500);

-- --------------------------------------------------------

--
-- Table structure for table `respaldos`
--

CREATE TABLE IF NOT EXISTS `respaldos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL,
  `archivo` varchar(50) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `hora` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `respaldos`
--

INSERT INTO `respaldos` (`id`, `codigo`, `usuario`, `cedula`, `nombre`, `tipo_usuario`, `archivo`, `fecha`, `hora`) VALUES
(1, '00000001', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-093420.zip', '2016-08-02', '09:34:20'),
(2, '00000002', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-094422.zip', '2016-08-02', '09:44:22'),
(3, '00000003', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-094500.zip', '2016-08-02', '09:45:00'),
(4, '00000004', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-094523.zip', '2016-08-02', '09:45:23'),
(5, '00000005', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-094622.zip', '2016-08-02', '09:46:23'),
(6, '00000006', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-104406.zip', '2016-08-02', '10:44:06'),
(7, '00000007', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-105222.zip', '2016-08-02', '10:52:22'),
(8, '00000008', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160802-105245.zip', '2016-08-02', '10:52:45'),
(9, '00000009', 'admin', '19653462', 'FRANCIS KATERINNE MEDINA GONZALEZ', 'Administrador', 'EncuestaLaboralC-20160803-150027.zip', '2016-08-03', '15:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `respuestas_parte_1`
--

CREATE TABLE IF NOT EXISTS `respuestas_parte_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `respuesta` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `respuestas_parte_1`
--

INSERT INTO `respuestas_parte_1` (`id`, `codigo`, `respuesta`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`, `estatus`) VALUES
(1, 1, 'No, en lo absoluto', '2017-03-02', '2017-03-02', '02:12:06 pm', '02:15:16 pm', 1, 1),
(2, 2, 'Un poco', '2017-03-02', '', '02:16:08 pm', '', 1, 1),
(3, 3, 'Moderadamente', '2017-03-02', '', '02:16:20 pm', '', 1, 1),
(4, 4, 'Mucho', '2017-03-02', '', '02:16:33 pm', '', 1, 1),
(5, 5, 'Extremadamente', '2017-03-02', '', '02:16:46 pm', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `respuestas_parte_2`
--

CREATE TABLE IF NOT EXISTS `respuestas_parte_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `respuesta` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora_create` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hora_update` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `respuestas_parte_2`
--

INSERT INTO `respuestas_parte_2` (`id`, `codigo`, `respuesta`, `fecha_create`, `fecha_update`, `hora_create`, `hora_update`, `usuario_id`, `estatus`) VALUES
(1, 1, 'SIEMPRE', '2017-03-02', '', '02:32:31 pm', '', 1, 1),
(2, 2, 'CASI SIEMPRE', '2017-03-02', '', '02:32:59 pm', '', 1, 1),
(3, 3, 'ALGUNAS VECES', '2017-03-02', '', '02:33:13 pm', '', 1, 1),
(4, 4, 'CASI NUNCA', '2017-03-02', '', '02:33:26 pm', '', 1, 1),
(5, 5, 'NUNCA', '2017-03-02', '2017-03-02', '02:33:37 pm', '02:34:23 pm', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_cliente`
--

CREATE TABLE IF NOT EXISTS `tipo_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_cliente` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_servicio_tipo_servicio` (`cod_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id`, `cod_tipo`, `tipo_cliente`) VALUES
(1, 'TC00001', 'Empresa pública'),
(2, 'TC00002', 'Empresa privada'),
(3, 'TC00003', 'Persona natural');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_producto`
--

CREATE TABLE IF NOT EXISTS `tipo_producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_producto` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_producto_tipo_producto` (`cod_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tipo_producto`
--

INSERT INTO `tipo_producto` (`id`, `cod_tipo`, `tipo_producto`) VALUES
(1, 'TP00001', 'Software'),
(2, 'TP00002', 'Redes'),
(3, 'TP00003', 'Consumibles');

-- --------------------------------------------------------

--
-- Table structure for table `tipo_proveedor`
--

CREATE TABLE IF NOT EXISTS `tipo_proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_proveedor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_proveedor_tipo_proveedor` (`cod_tipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tipo_proveedor`
--

INSERT INTO `tipo_proveedor` (`id`, `cod_tipo`, `tipo_proveedor`) VALUES
(1, 'TP00001', 'Tipo proveedor1'),
(2, 'TP00002', 'Tipo proveedor2'),
(3, 'TP00003', 'Tipo proveedor3');

-- --------------------------------------------------------

--
-- Table structure for table `transferencias`
--

CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `origen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `destino` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `monto` double NOT NULL,
  `num_referencia` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motivo_anulacion` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` int(11) NOT NULL,
  `fecha` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hora` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `user_create` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `transferencias`
--

INSERT INTO `transferencias` (`id`, `codigo`, `origen`, `destino`, `monto`, `num_referencia`, `motivo_anulacion`, `estatus`, `fecha`, `hora`, `user_create`) VALUES
(1, 'TR00001', 'CT00003', 'CT00001', 1500, '', 'transferencia de prueba', 3, '2016-06-11', '09:46:17 pm', 1),
(2, 'TR00002', 'CT00003', 'CT00002', 1500, '785768787587', NULL, 2, '2016-06-11', '11:16:11 pm', 1),
(3, 'TR00003', 'CT00003', 'CT00001', 1000, '5565564858', NULL, 2, '2016-06-12', '03:48:42 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unidad_medida`
--

CREATE TABLE IF NOT EXISTS `unidad_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_unidad` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unidades` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simbolo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `unidad_medida`
--

INSERT INTO `unidad_medida` (`id`, `cod_unidad`, `unidades`, `simbolo`, `tipo`) VALUES
(1, 'G00001', 'Metro', 'm', 'Longitud'),
(2, 'G00002', 'Litro', 'l', 'Capacidad'),
(3, 'G00003', 'Gramo', 'g', 'Masa');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `first_name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_usuario` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cargo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `estatus_encuesta` int(11) DEFAULT NULL,
  `change_id` tinyint(1) NOT NULL,
  `fecha_create` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_update` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_create_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `cedula`, `first_name`, `last_name`, `email`, `tipo_usuario`, `cargo`, `telefono`, `estatus`, `estatus_encuesta`, `change_id`, `fecha_create`, `fecha_update`, `user_create_id`) VALUES
(1, 'admin', 'pbkdf2_sha256$12000$a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 19653462, 'FRANCIS KATERINNE', 'MEDINA GONZALEZ', 'kati0490@hotmail.com', 'Administrador', 'Administrador', '19', 1, 0, 1, '2016-06-02', '2016-06-03', 1),
(2, 'almacen', 'pbkdf2_sha256$12000$a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 18993867, 'JOSE ALFREDO', 'SOLORZANO HERNANDEZ', 'jose@gmail.com', 'Almacen', 'Almacenista', '04160142536', 1, 0, 1, '2016-06-03', '2016-06-04', 1),
(3, 'jlaya', 'pbkdf2_sha256$12000$a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 19112593, 'JESUS GERARDO', 'LAYA RODRIGUEZ', 'jlaya@gmail.com', 'Almacen', 'Analista I', '04143464646', 1, 0, 1, '2016-08-18', '2016-08-18', 1),
(4, 'jsolorzano', 'pbkdf2_sha256$12000$8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 'Encuestado', NULL, NULL, 1, 4, 1, '2017-03-02', NULL, NULL),
(5, 'marcuri', 'pbkdf2_sha256$12000$8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 'Encuestado', NULL, NULL, 1, 4, 1, '2017-03-04', NULL, NULL),
(6, 'fmedina', 'pbkdf2_sha256$12000$8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', NULL, NULL, NULL, NULL, 'Encuestado', NULL, NULL, 1, 4, 1, '2017-03-04', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_tipo_cliente_fkey` FOREIGN KEY (`tipo_cliente`) REFERENCES `tipo_cliente` (`cod_tipo`);

--
-- Constraints for table `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `cuenta_banco_fkey` FOREIGN KEY (`cod_banco`) REFERENCES `bancos` (`cod_banco`);

--
-- Constraints for table `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_muni_estado_id_77ac1852_fk_estados_cod_estado` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`cod_estado`);

--
-- Constraints for table `parroquias`
--
ALTER TABLE `parroquias`
  ADD CONSTRAINT `parroquias_parr_estado_id_306d809c_fk_estados_cod_estado` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`cod_estado`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
