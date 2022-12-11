-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 12-05-2022 a las 06:37:20
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(222) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(17, 'KAYAK  ', 'DISTINTOS TIPOS DE AVENTURAS  ', 'Kayaking Bay Of Islands and Northland’s outer coast. A true Bay Of Islands adventure activity!\r\n\r\nKayaking, Camping, Snorkeling, Hiking, Sunbathing, Amazing scenery, Beautiful beaches, unique NZ Flora and Fauna all combined to make our tours some of the most unique in the Bay Of Islands.\r\n\r\nInstruction at both novice and advanced levels, is included and we take pride in making our trips possible to people with all levels of ability\r\n\r\nA wide range of trip durations from day tours to multi-day tours of up to 10 days expeditions.', 'svovesgpk7cds9wd2vjk'),
(29, 'Skydiving  ', ' SKYDIVING IS THE ULTIMATE ADVENTURE ACTIVITY ', 'Your Queenstown skydiving experience starts at our meeting point located right in the heart of Queenstown at the NZONE Skydive Centre, 35 Shotover Street. This is your check-in point for the best skydive in Queenstown, following registration and a video briefing in our innovative cinema room, you can select your photo and video options. You will be transported to our drop zone just 20 minutes away on a private airstrip set amid a rural farmland background. \r\n\r\nDROP ZONE\r\nAt our world-leading drop zone, you can see behind-the-scenes action taking place, learn the history of skydiving in New Zealand and beyond as well as meeting our excellent crew who get to experience the best place to skydive each and every day. \r\n\r\nIn the viewing area, you will be able to see other skydivers both in the sky and coming in to land. There are drinks and snacks available, toilets and a souvenir clothing and gifts store. We also have lockers to store your valuables while your off enjoying the best skydive in Queenstown. Once you have landed, you will be able to view your skydive experience online using the free wi-fi available to you or from the on-site Internet Kiosks.', 'zcpncu8pjnspzkyjtykb'),
(31, 'notivi', 'hola soy un subtitulo', 'Hola soy el texto', 'xviydieoytetzppknycd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Juan', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'pedro', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'flor', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'Guille', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
