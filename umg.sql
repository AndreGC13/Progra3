-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-02-2025 a las 22:56:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `umg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `CARNET_ALUMNO` varchar(5) NOT NULL,
  `NOMBRE_ALUMNO` varchar(45) DEFAULT NULL,
  `DIRECCION_ALUMNOS` varchar(45) DEFAULT NULL,
  `TELEFONO_ALUMNOS` varchar(45) DEFAULT NULL,
  `EMAIL_ALUMNO` varchar(20) DEFAULT NULL,
  `ESTATUS_ALUMNO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`CARNET_ALUMNO`, `NOMBRE_ALUMNO`, `DIRECCION_ALUMNOS`, `TELEFONO_ALUMNOS`, `EMAIL_ALUMNO`, `ESTATUS_ALUMNO`) VALUES
('A1122', 'Luis García', 'Calle 202, Ciudad', '7777-6666', 'luis.garcia@gmail.co', '1'),
('A1234', 'Juan Pérez', 'Calle 123, Ciudad', '1234-5678', 'juan.perez@gmail.com', '1'),
('A5432', 'Carlos Ramírez', 'Calle 789, Ciudad', '5555-5555', 'carlos.ramirez@gmail', '1'),
('A6789', 'María López', 'Avenida 456, Ciudad', '8765-4321', 'maria.lopez@gmail.co', '1'),
('A9876', 'Ana Martínez', 'Avenida 101, Ciudad', '9999-8888', 'ana.martinez@gmail.c', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosalumnos`
--

CREATE TABLE `asignacioncursosalumnos` (
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) DEFAULT NULL,
  `codigo_jornada` varchar(5) DEFAULT NULL,
  `codigo_secciones` varchar(5) DEFAULT NULL,
  `codigo_aulas` varchar(5) DEFAULT NULL,
  `codigo_cursos` varchar(5) DEFAULT NULL,
  `carnet_alumno` varchar(15) DEFAULT NULL,
  `nota` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosalumnos`
--

INSERT INTO `asignacioncursosalumnos` (`codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_secciones`, `codigo_aulas`, `codigo_cursos`, `carnet_alumno`, `nota`) VALUES
('0234', 'SE001', 'J001', 'S001', 'A001', 'C001', 'A1122', 85.00),
('0758', 'SE002', 'J002', 'S002', 'A002', 'C002', 'A1234', 78.00),
('0872', 'SE003', 'J003', 'S003', 'A003', 'C003', 'A5432', 92.00),
('0923', 'SE004', 'J004', 'S004', 'A004', 'C004', 'A6789', 88.00),
('0978', 'SE005', 'J005', 'S005', 'A005', 'C005', 'A9876', 95.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacioncursosnastros`
--

CREATE TABLE `asignacioncursosnastros` (
  `codigo_carrera` varchar(5) DEFAULT NULL,
  `codigo_sede` varchar(5) DEFAULT NULL,
  `codigo_jornada` varchar(5) DEFAULT NULL,
  `codigo_secciones` varchar(5) DEFAULT NULL,
  `codigo_aulas` varchar(5) DEFAULT NULL,
  `codigo_cursos` varchar(5) DEFAULT NULL,
  `codigo_maestro` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `asignacioncursosnastros`
--

INSERT INTO `asignacioncursosnastros` (`codigo_carrera`, `codigo_sede`, `codigo_jornada`, `codigo_secciones`, `codigo_aulas`, `codigo_cursos`, `codigo_maestro`) VALUES
('0234', 'SE001', 'J001', 'S001', 'A001', 'C001', 'M001'),
('0758', 'SE002', 'J002', 'S002', 'A002', 'C002', 'M002'),
('0872', 'SE003', 'J003', 'S003', 'A003', 'C003', 'M003'),
('0923', 'SE004', 'J004', 'S004', 'A004', 'C004', 'M004'),
('0978', 'SE005', 'J005', 'S005', 'A005', 'C005', 'M005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `CODIGO_AULAS` varchar(5) NOT NULL,
  `NOMBRE_AULAS` varchar(45) DEFAULT NULL,
  `ESTATUS_AULAS` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`CODIGO_AULAS`, `NOMBRE_AULAS`, `ESTATUS_AULAS`) VALUES
('A001', 'AULA 101', '1'),
('A002', 'AULA 202', '1'),
('A003', 'LABORATORIO DE INFORMATICA', '1'),
('A004', 'AULA MAGNA', '1'),
('A005', 'SALA DE CONFERENCIAS', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `CODIGO_CARRERA` varchar(5) NOT NULL,
  `NOMBRE_CARRERA` varchar(45) DEFAULT NULL,
  `CODIGO_FACULTAD` varchar(5) DEFAULT NULL,
  `ESTATUS_CARRERA` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`CODIGO_CARRERA`, `NOMBRE_CARRERA`, `CODIGO_FACULTAD`, `ESTATUS_CARRERA`) VALUES
('0234', 'INGENIERIA CIVIL', '0001', '1'),
('0758', 'INGENIERIA QUIMICA', '0001', '1'),
('0872', 'INGENIERIA MECANICA', '0001', '1'),
('0923', 'INGENIERIA EN SISTEMAS u', '0001', '1'),
('0978', 'INGENIERIA ELECTRICA', '0001', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `CODIGO_CURSOS` varchar(5) NOT NULL,
  `NOMBRE_CURSOS` varchar(45) DEFAULT NULL,
  `ESTATUS_CURSO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`CODIGO_CURSOS`, `NOMBRE_CURSOS`, `ESTATUS_CURSO`) VALUES
('C001', 'MATEMATICAS AVANZADAS', '1'),
('C002', 'FISICA MODERNA', '1'),
('C003', 'PROGRAMACION ORIENTADA A OBJETOS', '1'),
('C004', 'BASE DE DATOS', '1'),
('C005', 'INTELIGENCIA ARTIFICIAL', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `CODIGO_FACULTAD` varchar(5) NOT NULL,
  `NOMBRE_FACULTAD` varchar(45) DEFAULT NULL,
  `ESTATUS_FACULTAD` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`CODIGO_FACULTAD`, `NOMBRE_FACULTAD`, `ESTATUS_FACULTAD`) VALUES
('0001', 'INGENIERIA EN SISTEMAS Y C.C.', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornadas`
--

CREATE TABLE `jornadas` (
  `CODIGO_JORNADA` varchar(5) NOT NULL,
  `NOMBRE_JORNADA` varchar(45) DEFAULT NULL,
  `ESTATUS_CURSO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `jornadas`
--

INSERT INTO `jornadas` (`CODIGO_JORNADA`, `NOMBRE_JORNADA`, `ESTATUS_CURSO`) VALUES
('J001', 'JORNADA MATUTINA', '1'),
('J002', 'JORNADA VESPERTINA', '1'),
('J003', 'JORNADA NOCTURNA', '1'),
('J004', 'JORNADA MIXTA', '1'),
('J005', 'JORNADA FIN DE SEMANA', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `CODIGO_MAESTRO` varchar(5) NOT NULL,
  `NOMBRE_MAESTRO` varchar(45) DEFAULT NULL,
  `DIRECCION_MAESTRO` varchar(45) DEFAULT NULL,
  `TELEFONO_MAESTRO` varchar(45) DEFAULT NULL,
  `EMAIL_MAESTRO` varchar(20) DEFAULT NULL,
  `ESTATUS_MAESTRO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`CODIGO_MAESTRO`, `NOMBRE_MAESTRO`, `DIRECCION_MAESTRO`, `TELEFONO_MAESTRO`, `EMAIL_MAESTRO`, `ESTATUS_MAESTRO`) VALUES
('M001', 'Roberto Gómez', 'Calle 123, Ciudad', '1111-2222', 'roberto.gomez@exampl', '1'),
('M002', 'Laura Sánchez', 'Avenida 456, Ciudad', '3333-4444', 'laura.sanchez@exampl', '1'),
('M003', 'Jorge Torres', 'Calle 789, Ciudad', '5555-6666', 'jorge.torres@example', '1'),
('M004', 'Sofía Ramírez', 'Avenida 101, Ciudad', '7777-8888', 'sofia.ramirez@exampl', '1'),
('M005', 'Miguel Ángel Castro', 'Calle 202, Ciudad', '9999-0000', 'miguel.castro@exampl', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `CODIGO_SECCIONES` varchar(5) NOT NULL,
  `NOMBRE_SECCIONES` varchar(45) DEFAULT NULL,
  `ESTATUS_SECCIONES` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`CODIGO_SECCIONES`, `NOMBRE_SECCIONES`, `ESTATUS_SECCIONES`) VALUES
('S001', 'SECCION A', '1'),
('S002', 'SECCION B', '1'),
('S003', 'SECCION C', '1'),
('S004', 'SECCION D', '1'),
('S005', 'SECCION E', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `CODIGO_SEDE` varchar(5) NOT NULL,
  `NOMBRE_SEDE` varchar(45) DEFAULT NULL,
  `ESTATUS_SEDE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`CODIGO_SEDE`, `NOMBRE_SEDE`, `ESTATUS_SEDE`) VALUES
('SE001', 'SEDE CENTRAL', '1'),
('SE002', 'SEDE NORTE', '1'),
('SE003', 'SEDE SUR', '1'),
('SE004', 'SEDE OESTE', '1'),
('SE005', 'SEDE ESTE', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`) VALUES
(1, 'gonzalec', '131412');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`CARNET_ALUMNO`);

--
-- Indices de la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_secciones` (`codigo_secciones`),
  ADD KEY `codigo_aulas` (`codigo_aulas`),
  ADD KEY `codigo_cursos` (`codigo_cursos`),
  ADD KEY `carnet_alumno` (`carnet_alumno`);

--
-- Indices de la tabla `asignacioncursosnastros`
--
ALTER TABLE `asignacioncursosnastros`
  ADD KEY `codigo_carrera` (`codigo_carrera`),
  ADD KEY `codigo_sede` (`codigo_sede`),
  ADD KEY `codigo_jornada` (`codigo_jornada`),
  ADD KEY `codigo_secciones` (`codigo_secciones`),
  ADD KEY `codigo_aulas` (`codigo_aulas`),
  ADD KEY `codigo_cursos` (`codigo_cursos`),
  ADD KEY `codigo_maestro` (`codigo_maestro`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`CODIGO_AULAS`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`CODIGO_CARRERA`),
  ADD KEY `CODIGO_FACULTAD` (`CODIGO_FACULTAD`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`CODIGO_CURSOS`);

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`CODIGO_FACULTAD`);

--
-- Indices de la tabla `jornadas`
--
ALTER TABLE `jornadas`
  ADD PRIMARY KEY (`CODIGO_JORNADA`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`CODIGO_MAESTRO`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`CODIGO_SECCIONES`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`CODIGO_SEDE`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacioncursosalumnos`
--
ALTER TABLE `asignacioncursosalumnos`
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`CODIGO_CARRERA`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`CODIGO_SEDE`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`CODIGO_JORNADA`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_4` FOREIGN KEY (`codigo_secciones`) REFERENCES `secciones` (`CODIGO_SECCIONES`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_5` FOREIGN KEY (`codigo_aulas`) REFERENCES `aulas` (`CODIGO_AULAS`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_6` FOREIGN KEY (`codigo_cursos`) REFERENCES `cursos` (`CODIGO_CURSOS`),
  ADD CONSTRAINT `asignacioncursosalumnos_ibfk_7` FOREIGN KEY (`carnet_alumno`) REFERENCES `alumnos` (`CARNET_ALUMNO`);

--
-- Filtros para la tabla `asignacioncursosnastros`
--
ALTER TABLE `asignacioncursosnastros`
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_1` FOREIGN KEY (`codigo_carrera`) REFERENCES `carreras` (`CODIGO_CARRERA`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_2` FOREIGN KEY (`codigo_sede`) REFERENCES `sedes` (`CODIGO_SEDE`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_3` FOREIGN KEY (`codigo_jornada`) REFERENCES `jornadas` (`CODIGO_JORNADA`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_4` FOREIGN KEY (`codigo_secciones`) REFERENCES `secciones` (`CODIGO_SECCIONES`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_5` FOREIGN KEY (`codigo_aulas`) REFERENCES `aulas` (`CODIGO_AULAS`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_6` FOREIGN KEY (`codigo_cursos`) REFERENCES `cursos` (`CODIGO_CURSOS`),
  ADD CONSTRAINT `asignacioncursosnastros_ibfk_7` FOREIGN KEY (`codigo_maestro`) REFERENCES `maestros` (`CODIGO_MAESTRO`);

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`CODIGO_FACULTAD`) REFERENCES `facultades` (`CODIGO_FACULTAD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
