-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2017 at 05:24 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1018 ;

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
(1009, '', '', 'Cerrada la Sesión', '2017-03-04', '05:15:47 pm', 1),
(1010, '', '', 'Cerrada la Sesión', '2017-03-04', '05:23:17 pm', 1),
(1011, '', '', 'Inicio de Sesion', '2017-03-04', '05:23:27 pm', 4),
(1012, '', '', 'Cerrada la Sesión', '2017-03-04', '05:23:31 pm', 4),
(1013, '', '', 'Inicio de Sesion', '2017-03-04', '05:23:37 pm', 6),
(1014, '', '', 'Cerrada la Sesión', '2017-03-04', '05:23:42 pm', 6),
(1015, '', '', 'Inicio de Sesion', '2017-03-04', '05:23:48 pm', 5),
(1016, '', '', 'Cerrada la Sesión', '2017-03-04', '05:23:53 pm', 5),
(1017, '', '', 'Inicio de Sesion', '2017-03-04', '05:23:59 pm', 1);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
