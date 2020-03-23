-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-12-2018 a las 06:37:26
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cimi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computador`
--

CREATE TABLE `computador` (
  `id` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `dpto` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `micro` varchar(20) NOT NULL,
  `hd` int(11) NOT NULL,
  `ram` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `computador`
--

INSERT INTO `computador` (`id`, `marca`, `dpto`, `estado`, `tipo`, `micro`, `hd`, `ram`) VALUES
('1', 'Lenovoo', 'Departamento # 3', 'Bom', 'Mesa', 'Core I3', 1000, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dpto`
--

CREATE TABLE `dpto` (
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dpto`
--

INSERT INTO `dpto` (`nome`) VALUES
('Departamento # 3'),
('Departamento # 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hd`
--

CREATE TABLE `hd` (
  `marca` varchar(50) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hd`
--

INSERT INTO `hd` (`marca`, `capacidade`) VALUES
('Toshiba', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impressora`
--

CREATE TABLE `impressora` (
  `id` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `dpto` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `impressora`
--

INSERT INTO `impressora` (`id`, `marca`, `dpto`, `estado`) VALUES
('1', 'Android', 'Departamento # 3', 'Bom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`nome`) VALUES
('Android'),
('Edel'),
('Lenovoo'),
('Masterdigital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `micro`
--

CREATE TABLE `micro` (
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `micro`
--

INSERT INTO `micro` (`tipo`) VALUES
('Core I3'),
('Core I7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `id` int(11) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `estado` varchar(10) NOT NULL DEFAULT '1',
  `dpto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`id`, `marca`, `estado`, `dpto`) VALUES
(1, 'HP', 'Bom', 'Departamento # 3'),
(2, 'HP', 'Bom', 'Departamento # 4'),
(3, 'Samsung', 'Bom', 'Departamento # 3'),
(36, 'Lenovoo', 'Bom', 'Departamento # 4'),
(67, 'Lenovoo', 'Bom', 'Departamento # 4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projector`
--

CREATE TABLE `projector` (
  `id` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `dpto` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `projector`
--

INSERT INTO `projector` (`id`, `marca`, `dpto`, `estado`) VALUES
('1', 'Android', 'Departamento # 3', 'Bom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ram`
--

CREATE TABLE `ram` (
  `tipo` varchar(10) NOT NULL,
  `capacidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ram`
--

INSERT INTO `ram` (`tipo`, `capacidade`) VALUES
('DDR2', 4),
('DDR3', 1),
('DDR4', 2),
('DRR2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rato`
--

CREATE TABLE `rato` (
  `id` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `dpto` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rato`
--

INSERT INTO `rato` (`id`, `marca`, `dpto`, `estado`) VALUES
('1', 'Android', 'Departamento # 3', 'Bom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teclado`
--

CREATE TABLE `teclado` (
  `id` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `dpto` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `teclado`
--

INSERT INTO `teclado` (`id`, `marca`, `dpto`, `estado`) VALUES
('1', 'Android', 'Departamento # 3', 'Bom'),
('1', 'Android', 'Departamento # 3', 'Bom');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `nome` varchar(50) NOT NULL,
  `senha` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`nome`, `senha`) VALUES
('admin', 123456);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dpto`
--
ALTER TABLE `dpto`
  ADD PRIMARY KEY (`nome`);

--
-- Indices de la tabla `hd`
--
ALTER TABLE `hd`
  ADD PRIMARY KEY (`marca`,`capacidade`);

--
-- Indices de la tabla `impressora`
--
ALTER TABLE `impressora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`nome`);

--
-- Indices de la tabla `micro`
--
ALTER TABLE `micro`
  ADD PRIMARY KEY (`tipo`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projector`
--
ALTER TABLE `projector`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`tipo`,`capacidade`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nome`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `monitor`
--
ALTER TABLE `monitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
