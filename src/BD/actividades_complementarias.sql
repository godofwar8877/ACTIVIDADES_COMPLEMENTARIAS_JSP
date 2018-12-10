-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2018 a las 22:43:29
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades complementarias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `idactividad` smallint(6) NOT NULL,
  `nombe` varchar(45) DEFAULT NULL,
  `objetivo_general` mediumtext,
  `competencia` text,
  `temario` text,
  `autorizada` char(1) DEFAULT NULL,
  `no_creditos` int(11) DEFAULT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL,
  `organigrama_idorganigrama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `numero_control` bigint(20) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidop` varchar(30) DEFAULT NULL,
  `apellidom` varchar(30) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `numero_ext` varchar(10) DEFAULT NULL,
  `numero_int` varchar(10) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `estatus` char(1) DEFAULT NULL,
  `semestre` int(11) NOT NULL,
  `localidades_idlocalidades` int(11) NOT NULL,
  `rol_idrol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`numero_control`, `nombre`, `apellidop`, `apellidom`, `email`, `telefono`, `fecha_nacimiento`, `sexo`, `calle`, `numero_ext`, `numero_int`, `colonia`, `password`, `estatus`, `semestre`, `localidades_idlocalidades`, `rol_idrol`) VALUES
(15930121, 'Jen', 'Tan', 'Tama', 'brobro77@hotmail.com', 7321183235, '1998-04-23', 'M', 'River', '23134ee', '1232ee', 'Valley', 'trtrtrtrt', 'U', 7, 1, 2),
(15930123, 'Juanar', 'Sepa', 'Ñerga', 'hththth@gmail.com', 732118323, '1997-03-23', 'H', 'Loma', '123rrr', '12ffff', 'Camuco', 'aguilas', 'A', 6, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `idarea` int(11) NOT NULL,
  `nombre_area` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idarea`, `nombre_area`) VALUES
(1, 'Musica'),
(2, 'Artes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `idcarrera` int(11) NOT NULL,
  `carrera` varchar(70) DEFAULT NULL,
  `reticula` char(2) DEFAULT NULL,
  `nivel_escolar` varchar(45) DEFAULT NULL,
  `clave_oficial` varchar(15) DEFAULT NULL,
  `nombre_carrera` varchar(45) DEFAULT NULL,
  `nombre_reducido` varchar(45) DEFAULT NULL,
  `carga_maxima` smallint(6) DEFAULT NULL,
  `creditos_totales` smallint(6) DEFAULT NULL,
  `nivel` varchar(25) DEFAULT NULL,
  `modalidad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`idcarrera`, `carrera`, `reticula`, `nivel_escolar`, `clave_oficial`, `nombre_carrera`, `nombre_reducido`, `carga_maxima`, `creditos_totales`, `nivel`, `modalidad`) VALUES
(1, 'Ingeniería en Informática', 'sl', 'Superior', '1245hhu27', 'Ingenieria Informatica', 'ing.informatica', 21, 5, 'alto', 'formacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cordinador`
--

CREATE TABLE `cordinador` (
  `rol_idrol` int(11) NOT NULL,
  `carrera_idcarrera` int(11) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idestado` int(11) NOT NULL,
  `nombre_estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idestado`, `nombre_estado`) VALUES
(1, 'Guerrero'),
(2, 'Morelia'),
(3, 'Chihuaha'),
(4, 'Monterrey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `nombre_grupo` varchar(45) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `hora_inicial` time(4) NOT NULL,
  `hora_final` time(4) NOT NULL,
  `instructor_idinstructor` smallint(6) NOT NULL,
  `area_idarea` int(11) NOT NULL,
  `actividad_idactividad` smallint(6) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `calificacion` bigint(4) NOT NULL,
  `carrera_idcarrera` int(11) NOT NULL,
  `instructor_idinstructor` smallint(6) NOT NULL,
  `alumos_numero_control` bigint(20) NOT NULL,
  `grupo_idgrupo` int(11) NOT NULL,
  `actividad_idactividad` smallint(6) NOT NULL,
  `area_idarea` int(11) NOT NULL,
  `periodo_idperiodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `idinstructor` smallint(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidop` varchar(30) DEFAULT NULL,
  `apellidom` varchar(30) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `rfc` varchar(12) NOT NULL,
  `formacion` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`idinstructor`, `nombre`, `apellidop`, `apellidom`, `sexo`, `rfc`, `formacion`) VALUES
(1, 'Sare', 'Jen', 'Stac', 'M', 'SQS120395QZ4', 'Colegio'),
(2, 'Zeus', 'Crete', 'Lightning', 'M', '123456tuhgu1', 'dios del cielo'),
(3, 'Poseidon', 'Cretes', 'Ocean', 'M', '125409nhjn34', 'dios del oceano'),
(4, 'Hades', 'Cratos', 'Underworld', 'M', '562319hnjh12', 'dios del inframundo'),
(5, 'Champa', 'Sama', 'Tama', 'M', 'SQS120395UZ7', 'Dios'),
(6, 'Champas', 'Samas', 'Tamas', 'S', 'SQS120395UZ8', 'Diosa'),
(7, 'Cha', 'Sama', 'Tama', 'D', 'SQS120395234', 'Secundaria'),
(8, 'Jenmt', 'Tana', 'Tamar', 'M', 'SQS120395UZr', 'Postgrado'),
(9, 'Jenor', 'Tans', 'Tamat', 'H', 'SQS120395236', 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidades` int(11) NOT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `municipio_idmunicipio` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidades`, `localidad`, `municipio_idmunicipio`) VALUES
(1, 'San Jose', 1),
(2, 'El Salitre', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `idmunicipio` smallint(6) NOT NULL,
  `nombre_municipio` varchar(45) NOT NULL,
  `estado_idestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idmunicipio`, `nombre_municipio`, `estado_idestado`) VALUES
(1, 'Coyuca de Catalan', 1),
(2, 'Pungarabato', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organigrama`
--

CREATE TABLE `organigrama` (
  `idorganigrama` int(11) NOT NULL,
  `area` text NOT NULL,
  `descripcion` int(11) NOT NULL,
  `area_depende` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `tipo_area` int(11) NOT NULL,
  `titular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL,
  `nombre_corto` varchar(15) NOT NULL,
  `nombre_largo` varchar(45) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estatus` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `idpuesto` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `nivel` int(11) NOT NULL,
  `tipo` char(1) NOT NULL,
  `funciones` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombre_rol`, `descripcion`) VALUES
(1, 'Limpiador', 'Tiene que limpiar todo'),
(2, 'atencion', 'presta diversos servicios de atencion'),
(3, 'Seguridad', 'Asegura la seguridad de todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidop` varchar(30) NOT NULL,
  `apellidom` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  `rol_idrol` int(11) NOT NULL,
  `organigrama_idorganigrama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`idactividad`),
  ADD KEY `fk_actividad_usuario1_idx` (`usuario_idusuario`),
  ADD KEY `fk_actividad_periodo1_idx` (`periodo_idperiodo`),
  ADD KEY `fk_actividad_organigrama1_idx` (`organigrama_idorganigrama`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`numero_control`),
  ADD KEY `fk_alumos_localidades1_idx` (`localidades_idlocalidades`),
  ADD KEY `fk_alumnos_rol1_idx` (`rol_idrol`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idarea`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indices de la tabla `cordinador`
--
ALTER TABLE `cordinador`
  ADD KEY `fk_cordinador_rol1_idx` (`rol_idrol`),
  ADD KEY `fk_cordinador_carrera1_idx` (`carrera_idcarrera`),
  ADD KEY `fk_cordinador_usuario1_idx` (`usuario_idusuario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`),
  ADD KEY `fk_grupo_instructor1_idx` (`instructor_idinstructor`),
  ADD KEY `fk_grupo_area1_idx` (`area_idarea`),
  ADD KEY `fk_grupo_actividad1_idx` (`actividad_idactividad`),
  ADD KEY `fk_grupo_periodo1_idx` (`periodo_idperiodo`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD KEY `fk_inscripcion_carrera1_idx` (`carrera_idcarrera`),
  ADD KEY `fk_inscripcion_instructor1_idx` (`instructor_idinstructor`),
  ADD KEY `fk_inscripcion_alumos1_idx` (`alumos_numero_control`),
  ADD KEY `fk_inscripcion_grupo1_idx` (`grupo_idgrupo`),
  ADD KEY `fk_inscripcion_actividad1_idx` (`actividad_idactividad`),
  ADD KEY `fk_inscripcion_area1_idx` (`area_idarea`),
  ADD KEY `fk_inscripcion_periodo1_idx` (`periodo_idperiodo`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`idinstructor`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidades`),
  ADD KEY `fk_localidades_municipio1_idx` (`municipio_idmunicipio`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idmunicipio`),
  ADD KEY `fk_municipio_estado1_idx` (`estado_idestado`);

--
-- Indices de la tabla `organigrama`
--
ALTER TABLE `organigrama`
  ADD PRIMARY KEY (`idorganigrama`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idperiodo`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`idpuesto`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `fk_usuario_rol_idx` (`rol_idrol`),
  ADD KEY `fk_usuario_organigrama1_idx` (`organigrama_idorganigrama`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD CONSTRAINT `fk_actividad_organigrama1` FOREIGN KEY (`organigrama_idorganigrama`) REFERENCES `organigrama` (`idorganigrama`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_actividad_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_actividad_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `fk_alumnos_rol1` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alumos_localidades1` FOREIGN KEY (`localidades_idlocalidades`) REFERENCES `localidades` (`idlocalidades`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cordinador`
--
ALTER TABLE `cordinador`
  ADD CONSTRAINT `fk_cordinador_carrera1` FOREIGN KEY (`carrera_idcarrera`) REFERENCES `carrera` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cordinador_rol1` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cordinador_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `fk_grupo_actividad1` FOREIGN KEY (`actividad_idactividad`) REFERENCES `actividad` (`idactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_area1` FOREIGN KEY (`area_idarea`) REFERENCES `area` (`idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_instructor1` FOREIGN KEY (`instructor_idinstructor`) REFERENCES `instructor` (`idinstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupo_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `fk_inscripcion_actividad1` FOREIGN KEY (`actividad_idactividad`) REFERENCES `actividad` (`idactividad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_alumos1` FOREIGN KEY (`alumos_numero_control`) REFERENCES `alumnos` (`numero_control`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_area1` FOREIGN KEY (`area_idarea`) REFERENCES `area` (`idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_carrera1` FOREIGN KEY (`carrera_idcarrera`) REFERENCES `carrera` (`idcarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_grupo1` FOREIGN KEY (`grupo_idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_instructor1` FOREIGN KEY (`instructor_idinstructor`) REFERENCES `instructor` (`idinstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_periodo1` FOREIGN KEY (`periodo_idperiodo`) REFERENCES `periodo` (`idperiodo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `fk_localidades_municipio1` FOREIGN KEY (`municipio_idmunicipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_estado1` FOREIGN KEY (`estado_idestado`) REFERENCES `estado` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_organigrama1` FOREIGN KEY (`organigrama_idorganigrama`) REFERENCES `organigrama` (`idorganigrama`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
