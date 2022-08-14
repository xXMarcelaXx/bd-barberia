-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2022 a las 01:06:53
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `barberia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_productos`
--

CREATE TABLE `cat_productos` (
  `id_catproducto` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_productos`
--

INSERT INTO `cat_productos` (`id_catproducto`, `categoria`) VALUES
(1, 'Espumas'),
(2, 'Geles'),
(3, 'Mascarillas'),
(4, 'Peines'),
(5, 'Ceras'),
(6, 'popo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_citas` int(11) NOT NULL,
  `Usuario_C` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_cita` int(11) DEFAULT NULL,
  `Status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_citas`, `Usuario_C`, `fecha`, `hora_cita`, `Status`) VALUES
(1, 'Hira', '2022-10-11', 1, 'Pendiente'),
(2, 'XxAbelardoxX', '2022-10-11', 2, 'Cancelada'),
(3, 'XxCarlosxX', '2022-10-12', 3, 'FInalizada'),
(4, 'XxCristianxX', '2022-10-12', 4, 'Finalizada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `nombre_usuario` varchar(40) NOT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `correo` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `imagen_cuenta` varchar(500) DEFAULT NULL,
  `tipo_cuenta` char(20) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`nombre_usuario`, `contraseña`, `nombre`, `ap_paterno`, `ap_materno`, `direccion`, `telefono`, `correo`, `imagen_cuenta`, `tipo_cuenta`, `fecha_creacion`) VALUES
('Hira', '1234', 'Pedro', 'Vazques', 'Garcia', 'Calle Lerdo #1089', '8765219800', 'Hira@gmail.com', NULL, 'Usuario', '2022-10-12'),
('Invitado', '1234', 'Invitado', 'Invitado', 'Invitado', '', '8711003401', 'Invitado@gmail.com', NULL, 'Usuario', '2022-10-12'),
('Juan387l', '12345', 'Juan Manuel', 'Juarez', 'Lopez', 'Calle Congre', '8714739810', 'Manuel@gmail.com', NULL, 'Usuario', '2022-11-12'),
('SarahiVaz', 'sarahi557', 'Sarahi', 'Vazques', 'Viezca', 'Villa Colonos', '8711003892', 'sarahi@gmail.com', NULL, 'Usuario', '2022-09-12'),
('XxAbelardoxX', '1234', 'Abelardo', 'Garcia', 'Reyes', 'Lerdo #45', '8714364526', 'garciam@gmail.com', NULL, 'Administrador', '2022-09-12'),
('XxCarlosxX', '1234', 'Carlos', 'Duron', 'Rodriguez', 'Nuez de castilla #254', '8714364524', 'duronm@gmail.com', NULL, 'Usuario', '2022-08-12'),
('XxCristianxX', '1234', 'Cristian', 'Avitia', 'Maturino', 'Circuito valle suda #', '8714364522', 'avitiam@gmail.com', NULL, 'Usuario', '2022-10-12'),
('XxMarcelaxX', '1234', 'Marcela', 'Castorena', 'Escandon', 'Raul lopez sanchez #89', '8714364518', 'castorenam@gmail.com', NULL, 'Usuario', '2022-12-12'),
('XxNadiaxX', '1234', 'Nadia', 'Salazar', 'Rodriguez', 'Av Juarez #7000', '8714364520', 'salazarm@gmail.com', NULL, 'Usuario', '2022-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ovproductos`
--

CREATE TABLE `detalle_ovproductos` (
  `id_DetalleProductos` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `ov_productos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_ovproductos`
--

INSERT INTO `detalle_ovproductos` (`id_DetalleProductos`, `producto`, `cantidad`, `ov_productos`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1),
(3, 3, 3, 2),
(4, 4, 2, 3),
(5, 3, 1, 4),
(6, 1, 4, 5),
(7, 5, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL,
  `horarios` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id_horario`, `horarios`) VALUES
(1, '12:00:00'),
(2, '13:00:00'),
(3, '14:00:00'),
(4, '15:00:00'),
(5, '16:00:00'),
(6, '17:00:00'),
(7, '18:00:00'),
(8, '19:00:00'),
(9, '20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_ventas_producto`
--

CREATE TABLE `orden_ventas_producto` (
  `id_ovproducto` int(11) NOT NULL,
  `Usuario_ovp` varchar(40) DEFAULT NULL,
  `ovp_fecha` date DEFAULT NULL,
  `Status` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orden_ventas_producto`
--

INSERT INTO `orden_ventas_producto` (`id_ovproducto`, `Usuario_ovp`, `ovp_fecha`, `Status`) VALUES
(1, 'Hira', '2022-10-12', 'Finalizada'),
(2, 'Hira', '2022-08-12', 'Finalizada'),
(3, 'XxCarlosxX', '2022-08-13', 'Pendiente'),
(4, 'XxCristianxX', '2022-08-11', 'Cancelada'),
(5, 'XxCarlosxX', '2022-08-12', 'Cancelada'),
(6, 'XxCristianxX', '2022-08-13', 'Pendiente'),
(7, 'SarahiVaz', '2022-10-16', 'Finalizada'),
(9, 'SarahiVaz', '2022-08-13', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `cat_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `precio_compra` decimal(10,0) DEFAULT NULL,
  `img_producto` varchar(500) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `cat_producto`, `descripcion`, `costo`, `precio_compra`, `img_producto`, `existencia`) VALUES
(1, 'gel imperial', 2, 'gel marca imperial', '480', '350', '', 50),
(2, 'peine ecowood', 4, 'peine marca ecowood', '220', '150', '', 10),
(3, 'cera melbros', 5, 'cera marca melbros', '285', '180', '', 20),
(4, 'mascarilla', 3, 'mascarilla para la cara', '90', '50', '', 25),
(5, 'espumaa nivea', 1, 'espuma marca nivea', '80', '40', '', 23),
(6, 'espuma ', 1, 'espuma fuder', '12', '12', '', 20),
(7, 'papel baño', 1, 'papel para tu yoyis', '10', '5', '', 5),
(8, 'papel 2', 1, 'vfdss', '122', '12', '', 122),
(9, 'Papel v9', 1, 'gfdsa', '1212', '12', 'Imagpro/papel.jpg', 12),
(10, 'papds', 1, 'HGFDSA', '12', '12', 'Imagpro/papel.jpg', 122);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

CREATE TABLE `quejas` (
  `id_quejas` int(11) NOT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `fk_usuario` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre_servicio` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `descripcion`, `costo`) VALUES
(1, 'corte escolar', 'El corte escolar es un corte de cabello cool y fino que es perfecto para cabello corto. Lo usa todo ', '90'),
(2, 'desvanecido', 'Se trata de un tipo de corte de pelo degradado, generalmente masculino, donde el cabello está muy re', '100'),
(3, 'desvanecido con diseños', 'se trata de el corte de pelo dredadado con el  diseños que pida el cliente pueden ser desde figuras,', '120'),
(4, 'corte con tijera', 'Sin duda la manera más artesana y sana de cortarse el pelo pues se hace a peine y tijera lo cual log', '80'),
(5, 'ceja', 'se trata de una mejor difinicion de ceja al igual que darle una mejor forma y contorno, tambien se p', '20'),
(6, 'corte militar', 'Corte con la maquina #1', '70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_cita`
--

CREATE TABLE `servicio_cita` (
  `id_ovcita` int(11) NOT NULL,
  `dt_cita` int(11) DEFAULT NULL,
  `servicio_sc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicio_cita`
--

INSERT INTO `servicio_cita` (`id_ovcita`, `dt_cita`, `servicio_sc`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 4, 4),
(4, 2, 4),
(5, 3, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_productos`
--
ALTER TABLE `cat_productos`
  ADD PRIMARY KEY (`id_catproducto`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_citas`),
  ADD KEY `fk_usuarioC` (`Usuario_C`),
  ADD KEY `fk_horarios` (`hora_cita`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`nombre_usuario`),
  ADD UNIQUE KEY `UQ_correo` (`correo`);

--
-- Indices de la tabla `detalle_ovproductos`
--
ALTER TABLE `detalle_ovproductos`
  ADD PRIMARY KEY (`id_DetalleProductos`),
  ADD KEY `fk_orproducto` (`producto`),
  ADD KEY `fk_ovproducto` (`ov_productos`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `orden_ventas_producto`
--
ALTER TABLE `orden_ventas_producto`
  ADD PRIMARY KEY (`id_ovproducto`),
  ADD KEY `fk_usuario_ovp` (`Usuario_ovp`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_cproductos` (`cat_producto`);

--
-- Indices de la tabla `quejas`
--
ALTER TABLE `quejas`
  ADD PRIMARY KEY (`id_quejas`),
  ADD KEY `fk_quejas` (`fk_usuario`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `servicio_cita`
--
ALTER TABLE `servicio_cita`
  ADD PRIMARY KEY (`id_ovcita`),
  ADD KEY `fk_dtcita` (`dt_cita`),
  ADD KEY `fk_servicio_sv` (`servicio_sc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_productos`
--
ALTER TABLE `cat_productos`
  MODIFY `id_catproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_citas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_ovproductos`
--
ALTER TABLE `detalle_ovproductos`
  MODIFY `id_DetalleProductos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `orden_ventas_producto`
--
ALTER TABLE `orden_ventas_producto`
  MODIFY `id_ovproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `quejas`
--
ALTER TABLE `quejas`
  MODIFY `id_quejas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `servicio_cita`
--
ALTER TABLE `servicio_cita`
  MODIFY `id_ovcita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `fk_horarios` FOREIGN KEY (`hora_cita`) REFERENCES `horarios` (`id_horario`),
  ADD CONSTRAINT `fk_usuarioC` FOREIGN KEY (`Usuario_C`) REFERENCES `cuenta` (`nombre_usuario`);

--
-- Filtros para la tabla `detalle_ovproductos`
--
ALTER TABLE `detalle_ovproductos`
  ADD CONSTRAINT `fk_orproducto` FOREIGN KEY (`producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_ovproducto` FOREIGN KEY (`ov_productos`) REFERENCES `orden_ventas_producto` (`id_ovproducto`);

--
-- Filtros para la tabla `orden_ventas_producto`
--
ALTER TABLE `orden_ventas_producto`
  ADD CONSTRAINT `fk_usuario_ovp` FOREIGN KEY (`Usuario_ovp`) REFERENCES `cuenta` (`nombre_usuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_cproductos` FOREIGN KEY (`cat_producto`) REFERENCES `cat_productos` (`id_catproducto`);

--
-- Filtros para la tabla `quejas`
--
ALTER TABLE `quejas`
  ADD CONSTRAINT `fk_quejas` FOREIGN KEY (`fk_usuario`) REFERENCES `cuenta` (`nombre_usuario`);

--
-- Filtros para la tabla `servicio_cita`
--
ALTER TABLE `servicio_cita`
  ADD CONSTRAINT `fk_dtcita` FOREIGN KEY (`dt_cita`) REFERENCES `citas` (`id_citas`),
  ADD CONSTRAINT `fk_servicio_sv` FOREIGN KEY (`servicio_sc`) REFERENCES `servicios` (`id_servicio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
