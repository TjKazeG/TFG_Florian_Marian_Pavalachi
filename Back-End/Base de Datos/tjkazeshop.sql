-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2023 a las 13:08:48
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tjkazeshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio`
--

CREATE TABLE `accesorio` (
  `id` bigint(20) NOT NULL,
  `descripción` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorio`
--

INSERT INTO `accesorio` (`id`, `descripción`, `nombre`, `precio`, `stock`) VALUES
(1, 'Gafas para aparentar', 'Gafas de Pasta', 5.95, 100),
(2, 'Son gafas de sol no sé', 'Gafas de Sol', 39.95, 45),
(3, 'Gafas de estilo Aviador, mucho estilo y tal', 'Gafas estilo Aviador', 49.95, 20),
(4, 'Gorra Blanca NY', 'Gorra NY', 25.95, 50),
(5, 'Gorra Negra LA', 'Gorra LA', 29.95, 50),
(6, 'Pulsera Punk de fibra textil', 'Pulsera Punk', 9.95, 40),
(7, 'Reloj de Aguja Rolex', 'Reloj Rolex', 199.95, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorio_seq`
--

CREATE TABLE `accesorio_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorio_seq`
--

INSERT INTO `accesorio_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiseta`
--

CREATE TABLE `camiseta` (
  `color` varchar(255) DEFAULT NULL,
  `talla` varchar(255) DEFAULT NULL,
  `tipo_manga` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `camiseta`
--

INSERT INTO `camiseta` (`color`, `talla`, `tipo_manga`, `id`) VALUES
('Azul', 'L', 'Corta', 1),
('Negro', 'XL', 'Corta', 2),
('Blanco', 'M', 'Larga', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gafas`
--

CREATE TABLE `gafas` (
  `forma` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gafas`
--

INSERT INTO `gafas` (`forma`, `material`, `id`) VALUES
('Pasta', 'Plastico', 1),
('De Sol', 'Plastico', 2),
('Aviador', 'Plastico', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gorra`
--

CREATE TABLE `gorra` (
  `color` varchar(255) DEFAULT NULL,
  `talla` float DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gorra`
--

INSERT INTO `gorra` (`color`, `talla`, `id`) VALUES
('Blanco', 18.5, 4),
('Negro', 21.5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantalones`
--

CREATE TABLE `pantalones` (
  `talla` varchar(255) DEFAULT NULL,
  `tipo_tela` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pantalones`
--

INSERT INTO `pantalones` (`talla`, `tipo_tela`, `id`) VALUES
('L', 'Vaqueros', 4),
('XL', 'Vaqueros', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prenda`
--

CREATE TABLE `prenda` (
  `id` bigint(20) NOT NULL,
  `descripción` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prenda`
--

INSERT INTO `prenda` (`id`, `descripción`, `nombre`, `precio`, `stock`) VALUES
(1, 'Camiseta Azul, talla L, manga corta', 'Camiseta Azul', 25.95, 9),
(2, 'Camiseta Negra, talla XL, manga corta', 'Camiseta Negra', 19.95, 19),
(3, 'Camiseta Blanca, talla M, manga larga', 'Camiseta Blanca', 29.95, 27),
(4, 'Pantalones Vaqueros talla L', 'Vaqueros L', 49.95, 25),
(5, 'Pantalones Vaqueros talla XL', 'Vaqueros XL', 45.95, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prenda_seq`
--

CREATE TABLE `prenda_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prenda_seq`
--

INSERT INTO `prenda_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pulsera`
--

CREATE TABLE `pulsera` (
  `disenho` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pulsera`
--

INSERT INTO `pulsera` (`disenho`, `material`, `id`) VALUES
('Punk', 'Fibra Textil', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reloj`
--

CREATE TABLE `reloj` (
  `marca` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reloj`
--

INSERT INTO `reloj` (`marca`, `tipo`, `id`) VALUES
('Rolex', 'Aguja', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `contrasenha` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `contrasenha`, `email`, `nombre_usuario`) VALUES
(1, 'admin', 'admin@tjkazeshop.es', 'admin'),
(2, '-1422235966', 'emailadmin1@admin.com', 'Admin1'),
(3, '-1422235965', 'admin2@admin.es', 'Admin2'),
(4, '-132844754', 'usuario03@gmail.com', 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorio`
--
ALTER TABLE `accesorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `camiseta`
--
ALTER TABLE `camiseta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gafas`
--
ALTER TABLE `gafas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gorra`
--
ALTER TABLE `gorra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pantalones`
--
ALTER TABLE `pantalones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prenda`
--
ALTER TABLE `prenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pulsera`
--
ALTER TABLE `pulsera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reloj`
--
ALTER TABLE `reloj`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camiseta`
--
ALTER TABLE `camiseta`
  ADD CONSTRAINT `FKi8xadf3sjso5phls6m9kxv1xs` FOREIGN KEY (`id`) REFERENCES `prenda` (`id`);

--
-- Filtros para la tabla `gafas`
--
ALTER TABLE `gafas`
  ADD CONSTRAINT `FKdxrx7qnw7a9c4n1bbuox9dfq3` FOREIGN KEY (`id`) REFERENCES `accesorio` (`id`);

--
-- Filtros para la tabla `gorra`
--
ALTER TABLE `gorra`
  ADD CONSTRAINT `FK3m6uy04ba4gxxmulx4g1epr6b` FOREIGN KEY (`id`) REFERENCES `accesorio` (`id`);

--
-- Filtros para la tabla `pantalones`
--
ALTER TABLE `pantalones`
  ADD CONSTRAINT `FK4j9o28s4witb2luj4ofxvg2hm` FOREIGN KEY (`id`) REFERENCES `prenda` (`id`);

--
-- Filtros para la tabla `pulsera`
--
ALTER TABLE `pulsera`
  ADD CONSTRAINT `FK36x94iyc6uac8xyneinnblntn` FOREIGN KEY (`id`) REFERENCES `accesorio` (`id`);

--
-- Filtros para la tabla `reloj`
--
ALTER TABLE `reloj`
  ADD CONSTRAINT `FKkof26igeg71t55hry1hohnctu` FOREIGN KEY (`id`) REFERENCES `accesorio` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
