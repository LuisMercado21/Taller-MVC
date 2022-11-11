-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2022 a las 00:57:56
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla1`
--

CREATE TABLE `tabla1` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla1`
--

INSERT INTO `tabla1` (`id`, `descripcion`, `nombres`, `apellidos`) VALUES
(1, 'Logradoudsksdkjff', 'uff', 'Mercado'),
(2, 'sskdjsdk', 'Luis', 'Mercado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla2`
--

CREATE TABLE `tabla2` (
  `id` int(11) NOT NULL,
  `tabla1_id` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `horario` datetime NOT NULL,
  `fecha` date NOT NULL,
  `unidades` int(100) NOT NULL,
  `precio` float NOT NULL,
  `email` varchar(1000) NOT NULL,
  `fecha_ini` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tabla2`
--

INSERT INTO `tabla2` (`id`, `tabla1_id`, `descripcion`, `titulo`, `horario`, `fecha`, `unidades`, `precio`, `email`, `fecha_ini`, `fecha_fin`) VALUES
(10, 2, 'Esto es una actualización jaja', 'al fin ', '2001-01-01 14:55:00', '2001-01-01', 3, 23000.3, 'tester@tester.com', NULL, NULL),
(11, 1, 'Estsaggsdo es una prueba', 'La prodssdgramacsdsión', '2001-01-01 14:55:00', '2001-01-01', 3, 23000, 'tester@tester.com', NULL, NULL),
(12, 1, 'Estsaggsdsds una prueba', 'La prodssdgramacsdsión', '2001-01-01 14:55:00', '2001-01-01', 3, 23000, 'tester@tester.com', NULL, NULL),
(13, 1, 'Estsaggsdsds una prueba', 'La prodssdgramacsdsión', '2022-01-01 14:55:00', '2001-01-01', 3, 23000, 'tester@tester.com', NULL, NULL),
(14, 2, 'Esto es una actualización jaja', 'al fin ', '2001-01-01 14:55:00', '2001-01-01', 3, 23000.3, 'tester@tester.com', NULL, NULL),
(15, 2, 'Esto es una actualización jaja', 'al fin ', '2001-01-01 14:55:00', '2001-01-01', 3, 23000.3, 'tester@tester.com', '2002-04-04', '2002-05-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabla1_id` (`tabla1_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla2`
--
ALTER TABLE `tabla2`
  ADD CONSTRAINT `tabla2_ibfk_1` FOREIGN KEY (`tabla1_id`) REFERENCES `tabla1` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
