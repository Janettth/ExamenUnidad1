-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2025 a las 05:52:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_editorial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE `accesos` (
  `id` int(11) NOT NULL,
  `tipo` enum('empleado','visitante') NOT NULL,
  `numero_empleado` varchar(30) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `piso` varchar(50) DEFAULT NULL,
  `oficina` varchar(50) DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora_entrada` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id`, `tipo`, `numero_empleado`, `nombre`, `motivo`, `piso`, `oficina`, `fecha`, `hora_entrada`, `hora_salida`) VALUES
(4, 'empleado', '0', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '13:26:34', NULL),
(5, 'empleado', '0', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '13:27:53', NULL),
(6, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '13:31:50', NULL),
(7, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '13:36:30', NULL),
(8, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '13:40:07', NULL),
(9, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '14:56:12', NULL),
(10, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '18:56:00', NULL),
(11, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '18:56:38', NULL),
(12, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '18:57:39', NULL),
(13, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '18:58:45', NULL),
(14, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '18:59:40', NULL),
(15, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '19:01:07', NULL),
(16, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '19:01:26', NULL),
(17, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '19:03:03', NULL),
(18, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '19:04:59', NULL),
(19, 'visitante', NULL, 'Alicia', 'Junta', '1', '', '2025-09-07', '19:05:16', NULL),
(20, 'visitante', NULL, 'Alicia', 'Junta', '1', '101', '2025-09-07', '19:07:57', NULL),
(21, 'visitante', NULL, 'Alicia', 'Junta', '1', '101', '2025-09-07', '19:09:36', NULL),
(22, 'visitante', NULL, 'Alicia', 'Junta', '1', '101', '2025-09-07', '19:10:20', '19:10:43'),
(23, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:33:47', '19:33:58'),
(24, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:34:31', '19:34:40'),
(25, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:35:28', '19:35:30'),
(26, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:36:01', '19:36:03'),
(27, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:36:11', '19:36:13'),
(28, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:36:23', NULL),
(29, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:37:31', NULL),
(30, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:38:53', '19:38:57'),
(31, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:39:19', '19:39:22'),
(32, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:39:26', '19:39:30'),
(33, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:42:04', NULL),
(34, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:45:51', NULL),
(35, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:46:51', NULL),
(36, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:47:40', NULL),
(37, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:49:46', NULL),
(38, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:50:14', '19:50:23'),
(39, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:50:26', NULL),
(40, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:50:30', NULL),
(41, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:50:44', NULL),
(42, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:51:39', NULL),
(43, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:51:46', NULL),
(44, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:51:55', NULL),
(45, 'empleado', '0000', 'Juan', 'Gerente', NULL, NULL, '2025-09-07', '19:52:03', '19:52:06'),
(46, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:52:09', NULL),
(47, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:52:35', '19:52:43'),
(48, 'visitante', NULL, 'Flor', 'Reunión', '2', '202', '2025-09-07', '19:53:19', NULL),
(49, 'empleado', '0004', 'Emanuel Gómez', 'Redactor', NULL, NULL, '2025-09-07', '19:59:00', '19:59:06'),
(50, 'empleado', '0002', 'Gerardo Quintana', 'Secretaria', NULL, NULL, '2025-09-07', '20:03:20', '20:03:25'),
(51, 'visitante', NULL, 'Armando Días', 'Revisión de manuscrito', '3', '308', '2025-09-07', '20:04:07', '20:04:18'),
(52, 'empleado', '0003', 'Enrique García', 'Director de ventas', NULL, NULL, '2025-09-07', '20:08:23', '20:08:48'),
(53, 'empleado', '0002', 'Gerardo Quintana', 'Secretaria', NULL, NULL, '2025-09-07', '20:09:21', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `numero_empleado` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `numero_empleado`, `nombre`, `puesto`) VALUES
(1, '0000', 'Juan López', 'Gerente'),
(2, '0001', 'Florencia Mata', 'Secretaria'),
(3, '0002', 'Gerardo Quintana', 'Secretaria'),
(4, '0003', 'Enrique García', 'Director de ventas'),
(5, '0004', 'Emanuel Gómez', 'Redactor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_empleado` (`numero_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos`
--
ALTER TABLE `accesos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
