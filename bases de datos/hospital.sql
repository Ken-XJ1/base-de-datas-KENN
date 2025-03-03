-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2025 at 09:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `citas`
--

CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` enum('Programada','Cancelada','Completada') DEFAULT 'Programada',
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citas`
--

INSERT INTO `citas` (`id_cita`, `id_paciente`, `id_medico`, `fecha_hora`, `estado`, `notas`) VALUES
(1, 1, 1, '2024-03-05 10:00:00', 'Programada', 'Revisión de rutina'),
(2, 2, 2, '2024-03-06 11:30:00', 'Programada', 'Consulta de seguimiento'),
(3, 3, 1, '2024-03-07 09:00:00', 'Programada', 'Dolor de cabeza persistente'),
(4, 4, 2, '2024-03-08 14:00:00', 'Programada', 'Control de asma'),
(5, 5, 1, '2024-03-09 10:30:00', 'Programada', 'Revisión postoperatoria'),
(6, 6, 2, '2024-03-10 11:00:00', 'Programada', 'Consulta de alergias'),
(7, 7, 1, '2024-03-11 12:00:00', 'Programada', 'Dolor abdominal'),
(8, 8, 2, '2024-03-12 13:00:00', 'Programada', 'Control de presión arterial'),
(9, 9, 1, '2024-03-13 14:30:00', 'Programada', 'Revisión de análisis'),
(10, 10, 2, '2024-03-14 15:00:00', 'Programada', 'Consulta de seguimiento'),
(11, 11, 1, '2024-03-15 16:00:00', 'Programada', 'Dolor en las articulaciones'),
(12, 12, 2, '2024-03-16 17:00:00', 'Programada', 'Control de diabetes'),
(13, 13, 1, '2024-03-17 18:00:00', 'Programada', 'Revisión de rutina'),
(14, 14, 2, '2024-03-18 19:00:00', 'Programada', 'Consulta de seguimiento'),
(15, 15, 1, '2024-03-19 20:00:00', 'Programada', 'Dolor de espalda'),
(16, 16, 2, '2024-03-20 09:00:00', 'Programada', 'Control de colesterol'),
(17, 17, 1, '2024-03-21 10:00:00', 'Programada', 'Revisión de rutina'),
(18, 18, 2, '2024-03-22 11:00:00', 'Programada', 'Consulta de seguimiento'),
(19, 19, 1, '2024-03-23 12:00:00', 'Programada', 'Dolor de garganta'),
(20, 20, 2, '2024-03-24 13:00:00', 'Programada', 'Control de presión arterial'),
(21, 21, 1, '2024-03-25 14:00:00', 'Programada', 'Revisión de análisis'),
(22, 22, 2, '2024-03-26 15:00:00', 'Programada', 'Consulta de seguimiento'),
(23, 23, 1, '2024-03-27 16:00:00', 'Programada', 'Dolor en las articulaciones'),
(24, 24, 2, '2024-03-28 17:00:00', 'Programada', 'Control de diabetes'),
(25, 25, 1, '2024-03-29 18:00:00', 'Programada', 'Revisión de rutina'),
(26, 26, 2, '2024-03-30 19:00:00', 'Programada', 'Consulta de seguimiento'),
(27, 27, 1, '2024-03-31 20:00:00', 'Programada', 'Dolor de espalda'),
(28, 28, 2, '2024-04-01 09:00:00', 'Programada', 'Control de colesterol'),
(29, 29, 1, '2024-04-02 10:00:00', 'Programada', 'Revisión de rutina'),
(30, 30, 2, '2024-04-03 11:00:00', 'Programada', 'Consulta de seguimiento');

-- --------------------------------------------------------

--
-- Table structure for table `consultas`
--

CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `id_paciente`, `id_medico`, `id_sala`, `fecha_hora`, `notas`) VALUES
(1, 1, 1, 1, '2024-03-05 10:00:00', 'Consulta de rutina en sala de urgencias.'),
(2, 2, 2, 2, '2024-03-06 11:30:00', 'Consulta pediátrica en sala de pediatría.'),
(3, 3, 1, 3, '2024-03-07 09:00:00', 'Consulta cardiológica en sala de cardiología.'),
(4, 4, 2, 4, '2024-03-08 14:00:00', 'Consulta de seguimiento en sala de maternidad.'),
(5, 5, 1, 5, '2024-03-09 10:30:00', 'Consulta postoperatoria en sala de cirugía.'),
(6, 6, 2, 6, '2024-03-10 11:00:00', 'Consulta de rehabilitación en sala de rehabilitación.'),
(7, 7, 1, 7, '2024-03-11 12:00:00', 'Consulta oncológica en sala de oncología.'),
(8, 8, 2, 8, '2024-03-12 13:00:00', 'Consulta neonatal en sala de neonatología.'),
(9, 9, 1, 9, '2024-03-13 14:30:00', 'Consulta psiquiátrica en sala de psiquiatría.'),
(10, 10, 2, 10, '2024-03-14 15:00:00', 'Consulta de radiología en sala de radiología.'),
(11, 11, 1, 1, '2024-03-15 16:00:00', 'Consulta de urgencias en sala de urgencias.'),
(12, 12, 2, 2, '2024-03-16 17:00:00', 'Consulta pediátrica en sala de pediatría.'),
(13, 13, 1, 3, '2024-03-17 18:00:00', 'Consulta cardiológica en sala de cardiología.'),
(14, 14, 2, 4, '2024-03-18 19:00:00', 'Consulta de seguimiento en sala de maternidad.'),
(15, 15, 1, 5, '2024-03-19 20:00:00', 'Consulta postoperatoria en sala de cirugía.'),
(16, 16, 2, 6, '2024-03-20 09:00:00', 'Consulta de rehabilitación en sala de rehabilitación.'),
(17, 17, 1, 7, '2024-03-21 10:00:00', 'Consulta oncológica en sala de oncología.'),
(18, 18, 2, 8, '2024-03-22 11:00:00', 'Consulta neonatal en sala de neonatología.'),
(19, 19, 1, 9, '2024-03-23 12:00:00', 'Consulta psiquiátrica en sala de psiquiatría.'),
(20, 20, 2, 10, '2024-03-24 13:00:00', 'Consulta de radiología en sala de radiología.'),
(21, 21, 1, 1, '2024-03-25 14:00:00', 'Consulta de urgencias en sala de urgencias.'),
(22, 22, 2, 2, '2024-03-26 15:00:00', 'Consulta pediátrica en sala de pediatría.'),
(23, 23, 1, 3, '2024-03-27 16:00:00', 'Consulta cardiológica en sala de cardiología.'),
(24, 24, 2, 4, '2024-03-28 17:00:00', 'Consulta de seguimiento en sala de maternidad.'),
(25, 25, 1, 5, '2024-03-29 18:00:00', 'Consulta postoperatoria en sala de cirugía.'),
(26, 26, 2, 6, '2024-03-30 19:00:00', 'Consulta de rehabilitación en sala de rehabilitación.'),
(27, 27, 1, 7, '2024-03-31 20:00:00', 'Consulta oncológica en sala de oncología.'),
(28, 28, 2, 8, '2024-04-01 09:00:00', 'Consulta neonatal en sala de neonatología.'),
(29, 29, 1, 9, '2024-04-02 10:00:00', 'Consulta psiquiátrica en sala de psiquiatría.'),
(30, 30, 2, 10, '2024-04-03 11:00:00', 'Consulta de radiología en sala de radiología.');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_facturas`
--

CREATE TABLE `detalle_facturas` (
  `id_detalle` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detalle_facturas`
--

INSERT INTO `detalle_facturas` (`id_detalle`, `id_factura`, `descripcion`, `cantidad`, `precio`) VALUES
(1, 1, 'Consulta médica', 1, 100.00),
(2, 2, 'Prueba de laboratorio', 1, 50.75),
(3, 3, 'Radiografía', 1, 75.00),
(4, 4, 'Análisis de sangre', 1, 60.00),
(5, 5, 'Ecografía', 1, 120.00),
(6, 6, 'Consulta de especialista', 1, 150.00),
(7, 7, 'Medicamentos', 2, 30.00),
(8, 8, 'Consulta médica', 1, 100.00),
(9, 9, 'Prueba de laboratorio', 1, 50.75),
(10, 10, 'Radiografía', 1, 75.00),
(11, 11, 'Análisis de sangre', 1, 60.00),
(12, 12, 'Ecografía', 1, 120.00),
(13, 13, 'Consulta de especialista', 1, 150.00),
(14, 14, 'Medicamentos', 2, 30.00),
(15, 15, 'Consulta médica', 1, 100.00),
(16, 16, 'Prueba de laboratorio', 1, 50.75),
(17, 17, 'Radiografía', 1, 75.00),
(18, 18, 'Análisis de sangre', 1, 60.00),
(19, 19, 'Ecografía', 1, 120.00),
(20, 20, 'Consulta de especialista', 1, 150.00),
(21, 21, 'Medicamentos', 2, 30.00),
(22, 22, 'Consulta médica', 1, 100.00),
(23, 23, 'Prueba de laboratorio', 1, 50.75),
(24, 24, 'Radiografía', 1, 75.00),
(25, 25, 'Análisis de sangre', 1, 60.00),
(26, 26, 'Ecografía', 1, 120.00),
(27, 27, 'Consulta de especialista', 1, 150.00),
(28, 28, 'Medicamentos', 2, 30.00),
(29, 29, 'Consulta médica', 1, 100.00),
(30, 30, 'Prueba de laboratorio', 1, 50.75);

-- --------------------------------------------------------

--
-- Table structure for table `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `estado` enum('Pagada','Pendiente') DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facturas`
--

INSERT INTO `facturas` (`id_factura`, `id_paciente`, `fecha`, `total`, `estado`) VALUES
(1, 1, '2024-03-06', 150.75, 'Pendiente'),
(2, 2, '2024-03-07', 200.50, 'Pagada'),
(3, 3, '2024-03-08', 175.00, 'Pendiente'),
(4, 4, '2024-03-09', 160.00, 'Pagada'),
(5, 5, '2024-03-10', 220.00, 'Pendiente'),
(6, 6, '2024-03-11', 150.00, 'Pagada'),
(7, 7, '2024-03-12', 130.00, 'Pendiente'),
(8, 8, '2024-03-13', 100.00, 'Pagada'),
(9, 9, '2024-03-14', 150.75, 'Pendiente'),
(10, 10, '2024-03-15', 200.50, 'Pagada'),
(11, 11, '2024-03-16', 175.00, 'Pendiente'),
(12, 12, '2024-03-17', 160.00, 'Pagada'),
(13, 13, '2024-03-18', 220.00, 'Pendiente'),
(14, 14, '2024-03-19', 150.00, 'Pagada'),
(15, 15, '2024-03-20', 130.00, 'Pendiente'),
(16, 16, '2024-03-21', 100.00, 'Pagada'),
(17, 17, '2024-03-22', 150.75, 'Pendiente'),
(18, 18, '2024-03-23', 200.50, 'Pagada'),
(19, 19, '2024-03-24', 175.00, 'Pendiente'),
(20, 20, '2024-03-25', 160.00, 'Pagada'),
(21, 21, '2024-03-26', 220.00, 'Pendiente'),
(22, 22, '2024-03-27', 150.00, 'Pagada'),
(23, 23, '2024-03-28', 130.00, 'Pendiente'),
(24, 24, '2024-03-29', 100.00, 'Pagada'),
(25, 25, '2024-03-30', 150.75, 'Pendiente'),
(26, 26, '2024-03-31', 200.50, 'Pagada'),
(27, 27, '2024-04-01', 175.00, 'Pendiente'),
(28, 28, '2024-04-02', 160.00, 'Pagada'),
(29, 29, '2024-04-03', 220.00, 'Pendiente'),
(30, 30, '2024-04-04', 150.00, 'Pagada');

-- --------------------------------------------------------

--
-- Table structure for table `formulas_medicas`
--

CREATE TABLE `formulas_medicas` (
  `id_formula` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formulas_medicas`
--

INSERT INTO `formulas_medicas` (`id_formula`, `id_paciente`, `id_medico`, `fecha`) VALUES
(1, 1, 1, '2024-03-08'),
(2, 2, 2, '2024-03-09'),
(3, 3, 1, '2024-03-10'),
(4, 4, 2, '2024-03-11'),
(5, 5, 1, '2024-03-12'),
(6, 6, 2, '2024-03-13'),
(7, 7, 1, '2024-03-14'),
(8, 8, 2, '2024-03-15'),
(9, 9, 1, '2024-03-16'),
(10, 10, 2, '2024-03-17'),
(11, 11, 1, '2024-03-18'),
(12, 12, 2, '2024-03-19'),
(13, 13, 1, '2024-03-20'),
(14, 14, 2, '2024-03-21'),
(15, 15, 1, '2024-03-22'),
(16, 16, 2, '2024-03-23'),
(17, 17, 1, '2024-03-24'),
(18, 18, 2, '2024-03-25'),
(19, 19, 1, '2024-03-26'),
(20, 20, 2, '2024-03-27'),
(21, 21, 1, '2024-03-28'),
(22, 22, 2, '2024-03-29'),
(23, 23, 1, '2024-03-30'),
(24, 24, 2, '2024-03-31'),
(25, 25, 1, '2024-04-01'),
(26, 26, 2, '2024-04-02'),
(27, 27, 1, '2024-04-03'),
(28, 28, 2, '2024-04-04'),
(29, 29, 1, '2024-04-05'),
(30, 30, 2, '2024-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `historias_clinicas`
--

CREATE TABLE `historias_clinicas` (
  `id_historia` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `diagnostico` text DEFAULT NULL,
  `tratamiento` text DEFAULT NULL,
  `notas` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historias_clinicas`
--

INSERT INTO `historias_clinicas` (`id_historia`, `id_paciente`, `fecha_creacion`, `diagnostico`, `tratamiento`, `notas`) VALUES
(1, 1, '2024-01-10', 'Hipertensión', 'Dieta baja en sodio', 'Paciente estable'),
(2, 2, '2024-02-15', 'Asma', 'Inhalador de rescate', 'Control adecuado'),
(3, 3, '2024-03-01', 'Diabetes', 'Insulina', 'Control de glucosa'),
(4, 4, '2024-03-02', 'Artritis', 'Antiinflamatorios', 'Dolor controlado'),
(5, 5, '2024-03-03', 'Gastritis', 'Antiácidos', 'Mejora notable'),
(6, 6, '2024-03-04', 'Migraña', 'Analgésicos', 'Episodios reducidos'),
(7, 7, '2024-03-05', 'Bronquitis', 'Antibióticos', 'Recuperación en curso'),
(8, 8, '2024-03-06', 'Hipertensión', 'Dieta y ejercicio', 'Presión controlada'),
(9, 9, '2024-03-07', 'Asma', 'Inhalador de rescate', 'Control adecuado'),
(10, 10, '2024-03-08', 'Diabetes', 'Insulina', 'Control de glucosa'),
(11, 11, '2024-03-09', 'Artritis', 'Antiinflamatorios', 'Dolor controlado'),
(12, 12, '2024-03-10', 'Gastritis', 'Antiácidos', 'Mejora notable'),
(13, 13, '2024-03-11', 'Migraña', 'Analgésicos', 'Episodios reducidos'),
(14, 14, '2024-03-12', 'Bronquitis', 'Antibióticos', 'Recuperación en curso'),
(15, 15, '2024-03-13', 'Hipertensión', 'Dieta y ejercicio', 'Presión controlada'),
(16, 16, '2024-03-14', 'Asma', 'Inhalador de rescate', 'Control adecuado'),
(17, 17, '2024-03-15', 'Diabetes', 'Insulina', 'Control de glucosa'),
(18, 18, '2024-03-16', 'Artritis', 'Antiinflamatorios', 'Dolor controlado'),
(19, 19, '2024-03-17', 'Gastritis', 'Antiácidos', 'Mejora notable'),
(20, 20, '2024-03-18', 'Migraña', 'Analgésicos', 'Episodios reducidos'),
(21, 21, '2024-03-19', 'Bronquitis', 'Antibióticos', 'Recuperación en curso'),
(22, 22, '2024-03-20', 'Hipertensión', 'Dieta y ejercicio', 'Presión controlada'),
(23, 23, '2024-03-21', 'Asma', 'Inhalador de rescate', 'Control adecuado'),
(24, 24, '2024-03-22', 'Diabetes', 'Insulina', 'Control de glucosa'),
(25, 25, '2024-03-23', 'Artritis', 'Antiinflamatorios', 'Dolor controlado'),
(26, 26, '2024-03-24', 'Gastritis', 'Antiácidos', 'Mejora notable'),
(27, 27, '2024-03-25', 'Migraña', 'Analgésicos', 'Episodios reducidos'),
(28, 28, '2024-03-26', 'Bronquitis', 'Antibióticos', 'Recuperación en curso'),
(29, 29, '2024-03-27', 'Hipertensión', 'Dieta y ejercicio', 'Presión controlada'),
(30, 30, '2024-03-28', 'Asma', 'Inhalador de rescate', 'Control adecuado');

-- --------------------------------------------------------

--
-- Table structure for table `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id_medicamento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad_disponible` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicamentos`
--

INSERT INTO `medicamentos` (`id_medicamento`, `nombre`, `descripcion`, `cantidad_disponible`, `precio`) VALUES
(1, 'Paracetamol', 'Analgésico y antipirético', 500, 5.00),
(2, 'Salbutamol', 'Broncodilatador', 200, 15.00),
(3, 'Ibuprofeno', 'Antiinflamatorio', 300, 7.50),
(4, 'Omeprazol', 'Protector gástrico', 400, 10.00),
(5, 'Amoxicilina', 'Antibiótico', 250, 12.00),
(6, 'Loratadina', 'Antihistamínico', 150, 8.00),
(7, 'Metformina', 'Antidiabético', 200, 9.00),
(8, 'Atorvastatina', 'Hipolipemiante', 180, 14.00),
(9, 'Diazepam', 'Ansiolítico', 100, 20.00),
(10, 'Losartán', 'Antihipertensivo', 300, 11.00),
(11, 'Paracetamol', 'Analgésico y antipirético', 500, 5.00),
(12, 'Salbutamol', 'Broncodilatador', 200, 15.00),
(13, 'Ibuprofeno', 'Antiinflamatorio', 300, 7.50),
(14, 'Omeprazol', 'Protector gástrico', 400, 10.00),
(15, 'Amoxicilina', 'Antibiótico', 250, 12.00),
(16, 'Loratadina', 'Antihistamínico', 150, 8.00),
(17, 'Metformina', 'Antidiabético', 200, 9.00),
(18, 'Atorvastatina', 'Hipolipemiante', 180, 14.00),
(19, 'Diazepam', 'Ansiolítico', 100, 20.00),
(20, 'Losartán', 'Antihipertensivo', 300, 11.00),
(21, 'Paracetamol', 'Analgésico y antipirético', 500, 5.00),
(22, 'Salbutamol', 'Broncodilatador', 200, 15.00),
(23, 'Ibuprofeno', 'Antiinflamatorio', 300, 7.50),
(24, 'Omeprazol', 'Protector gástrico', 400, 10.00),
(25, 'Amoxicilina', 'Antibiótico', 250, 12.00),
(26, 'Loratadina', 'Antihistamínico', 150, 8.00),
(27, 'Metformina', 'Antidiabético', 200, 9.00),
(28, 'Atorvastatina', 'Hipolipemiante', 180, 14.00),
(29, 'Diazepam', 'Ansiolítico', 100, 20.00),
(30, 'Losartán', 'Antihipertensivo', 300, 11.00);

-- --------------------------------------------------------

--
-- Table structure for table `medicos`
--

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicos`
--

INSERT INTO `medicos` (`id_medico`, `nombre`, `apellido`, `especialidad`, `telefono`, `correo_electronico`, `fecha_contratacion`) VALUES
(1, 'Carlos', 'Ramírez', 'Cardiología', '555-6789', 'carlos.ramirez@email.com', '2020-06-01'),
(2, 'Ana', 'Martínez', 'Neumología', '555-9876', 'ana.martinez@email.com', '2018-09-15'),
(3, 'Luis', 'Gómez', 'Pediatría', '555-1234', 'luis.gomez@email.com', '2019-03-10'),
(4, 'María', 'López', 'Dermatología', '555-5678', 'maria.lopez@email.com', '2021-07-22'),
(5, 'Jorge', 'Hernández', 'Ortopedia', '555-4321', 'jorge.hernandez@email.com', '2017-11-05'),
(6, 'Sofía', 'García', 'Ginecología', '555-8765', 'sofia.garcia@email.com', '2022-02-14'),
(7, 'Pedro', 'Díaz', 'Neurología', '555-2345', 'pedro.diaz@email.com', '2016-08-30'),
(8, 'Laura', 'Fernández', 'Oncología', '555-6543', 'laura.fernandez@email.com', '2023-01-12'),
(9, 'Miguel', 'Sánchez', 'Endocrinología', '555-3456', 'miguel.sanchez@email.com', '2015-05-20'),
(10, 'Carmen', 'Ruiz', 'Psiquiatría', '555-7654', 'carmen.ruiz@email.com', '2014-09-18'),
(11, 'Carlos', 'Ramírez', 'Cardiología', '555-6789', 'carlos.ramirez@email.com', '2020-06-01'),
(12, 'Ana', 'Martínez', 'Neumología', '555-9876', 'ana.martinez@email.com', '2018-09-15'),
(13, 'Luis', 'Gómez', 'Pediatría', '555-1234', 'luis.gomez@email.com', '2019-03-10'),
(14, 'María', 'López', 'Dermatología', '555-5678', 'maria.lopez@email.com', '2021-07-22'),
(15, 'Jorge', 'Hernández', 'Ortopedia', '555-4321', 'jorge.hernandez@email.com', '2017-11-05'),
(16, 'Sofía', 'García', 'Ginecología', '555-8765', 'sofia.garcia@email.com', '2022-02-14'),
(17, 'Pedro', 'Díaz', 'Neurología', '555-2345', 'pedro.diaz@email.com', '2016-08-30'),
(18, 'Laura', 'Fernández', 'Oncología', '555-6543', 'laura.fernandez@email.com', '2023-01-12'),
(19, 'Miguel', 'Sánchez', 'Endocrinología', '555-3456', 'miguel.sanchez@email.com', '2015-05-20'),
(20, 'Carmen', 'Ruiz', 'Psiquiatría', '555-7654', 'carmen.ruiz@email.com', '2014-09-18'),
(21, 'Carlos', 'Ramírez', 'Cardiología', '555-6789', 'carlos.ramirez@email.com', '2020-06-01'),
(22, 'Ana', 'Martínez', 'Neumología', '555-9876', 'ana.martinez@email.com', '2018-09-15'),
(23, 'Luis', 'Gómez', 'Pediatría', '555-1234', 'luis.gomez@email.com', '2019-03-10'),
(24, 'María', 'López', 'Dermatología', '555-5678', 'maria.lopez@email.com', '2021-07-22'),
(25, 'Jorge', 'Hernández', 'Ortopedia', '555-4321', 'jorge.hernandez@email.com', '2017-11-05'),
(26, 'Sofía', 'García', 'Ginecología', '555-8765', 'sofia.garcia@email.com', '2022-02-14'),
(27, 'Pedro', 'Díaz', 'Neurología', '555-2345', 'pedro.diaz@email.com', '2016-08-30'),
(28, 'Laura', 'Fernández', 'Oncología', '555-6543', 'laura.fernandez@email.com', '2023-01-12'),
(29, 'Miguel', 'Sánchez', 'Endocrinología', '555-3456', 'miguel.sanchez@email.com', '2015-05-20'),
(30, 'Carmen', 'Ruiz', 'Psiquiatría', '555-7654', 'carmen.ruiz@email.com', '2014-09-18'),
(31, 'Jhon', 'Duran', 'Radiologo', '+1 (606) 006-18', 'jhduran01@outlook.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` enum('Masculino','Femenino') NOT NULL,
  `tipo_sangre` varchar(5) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `nombre`, `apellido`, `fecha_nacimiento`, `genero`, `tipo_sangre`, `telefono`, `correo_electronico`, `direccion`, `ciudad`, `codigo_postal`, `fecha_registro`) VALUES
(1, 'Juan', 'Pérez', '1985-06-15', 'Masculino', 'O+', '555-1234', 'juan.perez@email.com', 'Calle 123', 'Ciudad A', '10001', '2025-02-26 23:37:20'),
(2, 'María', 'González', '1990-09-22', 'Femenino', 'A-', '555-5678', 'maria.gonzalez@email.com', 'Avenida B', 'Ciudad B', '10002', '2025-02-26 23:37:20'),
(3, 'Luis', 'Martínez', '1978-03-10', 'Masculino', 'B+', '555-9876', 'luis.martinez@email.com', 'Calle 456', 'Ciudad C', '10003', '2025-02-26 23:37:20'),
(4, 'Ana', 'López', '1982-07-25', 'Femenino', 'AB-', '555-4321', 'ana.lopez@email.com', 'Avenida D', 'Ciudad D', '10004', '2025-02-26 23:37:20'),
(5, 'Carlos', 'Gómez', '1995-11-30', 'Masculino', 'O-', '555-8765', 'carlos.gomez@email.com', 'Calle 789', 'Ciudad E', '10005', '2025-02-26 23:37:20'),
(6, 'Sofía', 'Hernández', '1988-04-12', 'Femenino', 'A+', '555-2345', 'sofia.hernandez@email.com', 'Avenida F', 'Ciudad F', '10006', '2025-02-26 23:37:20'),
(7, 'Pedro', 'Díaz', '1975-08-18', 'Masculino', 'B-', '555-6543', 'pedro.diaz@email.com', 'Calle 101', 'Ciudad G', '10007', '2025-02-26 23:37:20'),
(8, 'Laura', 'Fernández', '1992-12-05', 'Femenino', 'O+', '555-3456', 'laura.fernandez@email.com', 'Avenida H', 'Ciudad H', '10008', '2025-02-26 23:37:20'),
(9, 'Miguel', 'Sánchez', '1980-02-20', 'Masculino', 'A-', '555-7654', 'miguel.sanchez@email.com', 'Calle 112', 'Ciudad I', '10009', '2025-02-26 23:37:20'),
(10, 'Carmen', 'Ruiz', '1973-05-15', 'Femenino', 'B+', '555-8765', 'carmen.ruiz@email.com', 'Avenida J', 'Ciudad J', '10010', '2025-02-26 23:37:20'),
(11, 'Juan', 'Pérez', '1985-06-15', 'Masculino', 'O+', '555-1234', 'juan.perez@email.com', 'Calle 123', 'Ciudad A', '10001', '2025-02-26 23:37:20'),
(12, 'María', 'González', '1990-09-22', 'Femenino', 'A-', '555-5678', 'maria.gonzalez@email.com', 'Avenida B', 'Ciudad B', '10002', '2025-02-26 23:37:20'),
(13, 'Luis', 'Martínez', '1978-03-10', 'Masculino', 'B+', '555-9876', 'luis.martinez@email.com', 'Calle 456', 'Ciudad C', '10003', '2025-02-26 23:37:20'),
(14, 'Ana', 'López', '1982-07-25', 'Femenino', 'AB-', '555-4321', 'ana.lopez@email.com', 'Avenida D', 'Ciudad D', '10004', '2025-02-26 23:37:20'),
(15, 'Carlos', 'Gómez', '1995-11-30', 'Masculino', 'O-', '555-8765', 'carlos.gomez@email.com', 'Calle 789', 'Ciudad E', '10005', '2025-02-26 23:37:20'),
(16, 'Sofía', 'Hernández', '1988-04-12', 'Femenino', 'A+', '555-2345', 'sofia.hernandez@email.com', 'Avenida F', 'Ciudad F', '10006', '2025-02-26 23:37:20'),
(17, 'Pedro', 'Díaz', '1975-08-18', 'Masculino', 'B-', '555-6543', 'pedro.diaz@email.com', 'Calle 101', 'Ciudad G', '10007', '2025-02-26 23:37:20'),
(18, 'Laura', 'Fernández', '1992-12-05', 'Femenino', 'O+', '555-3456', 'laura.fernandez@email.com', 'Avenida H', 'Ciudad H', '10008', '2025-02-26 23:37:20'),
(19, 'Miguel', 'Sánchez', '1980-02-20', 'Masculino', 'A-', '555-7654', 'miguel.sanchez@email.com', 'Calle 112', 'Ciudad I', '10009', '2025-02-26 23:37:20'),
(20, 'Carmen', 'Ruiz', '1973-05-15', 'Femenino', 'B+', '555-8765', 'carmen.ruiz@email.com', 'Avenida J', 'Ciudad J', '10010', '2025-02-26 23:37:20'),
(21, 'Juan', 'Pérez', '1985-06-15', 'Masculino', 'O+', '555-1234', 'juan.perez@email.com', 'Calle 123', 'Ciudad A', '10001', '2025-02-26 23:37:20'),
(22, 'María', 'González', '1990-09-22', 'Femenino', 'A-', '555-5678', 'maria.gonzalez@email.com', 'Avenida B', 'Ciudad B', '10002', '2025-02-26 23:37:20'),
(23, 'Luis', 'Martínez', '1978-03-10', 'Masculino', 'B+', '555-9876', 'luis.martinez@email.com', 'Calle 456', 'Ciudad C', '10003', '2025-02-26 23:37:20'),
(24, 'Ana', 'López', '1982-07-25', 'Femenino', 'AB-', '555-4321', 'ana.lopez@email.com', 'Avenida D', 'Ciudad D', '10004', '2025-02-26 23:37:20'),
(25, 'Carlos', 'Gómez', '1995-11-30', 'Masculino', 'O-', '555-8765', 'carlos.gomez@email.com', 'Calle 789', 'Ciudad E', '10005', '2025-02-26 23:37:20'),
(26, 'Sofía', 'Hernández', '1988-04-12', 'Femenino', 'A+', '555-2345', 'sofia.hernandez@email.com', 'Avenida F', 'Ciudad F', '10006', '2025-02-26 23:37:20'),
(27, 'Pedro', 'Díaz', '1975-08-18', 'Masculino', 'B-', '555-6543', 'pedro.diaz@email.com', 'Calle 101', 'Ciudad G', '10007', '2025-02-26 23:37:20'),
(28, 'Laura', 'Fernández', '1992-12-05', 'Femenino', 'O+', '555-3456', 'laura.fernandez@email.com', 'Avenida H', 'Ciudad H', '10008', '2025-02-26 23:37:20'),
(29, 'Miguel', 'Sánchez', '1980-02-20', 'Masculino', 'A-', '555-7654', 'miguel.sanchez@email.com', 'Calle 112', 'Ciudad I', '10009', '2025-02-26 23:37:20'),
(30, 'Carmen', 'Ruiz', '1973-05-15', 'Femenino', 'B+', '555-8765', 'carmen.ruiz@email.com', 'Avenida J', 'Ciudad J', '10010', '2025-02-26 23:37:20'),
(31, 'Jhonny', 'Cordoba', '2222-02-12', 'Masculino', 'O-', '015024077795', '', '226 East 26th Street 7th Floor Arkansas 10001 USA', 'Arkasnas', NULL, '2025-02-26 19:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salas`
--

INSERT INTO `salas` (`id_sala`, `nombre`, `descripcion`) VALUES
(1, 'Sala de Urgencias', 'Atención de emergencias médicas'),
(2, 'Sala de Pediatría', 'Atención especializada para niños'),
(3, 'Sala de Cardiología', 'Atención especializada en cardiología'),
(4, 'Sala de Maternidad', 'Atención a mujeres embarazadas'),
(5, 'Sala de Cirugía', 'Salas para procedimientos quirúrgicos'),
(6, 'Sala de Rehabilitación', 'Terapias físicas y rehabilitación'),
(7, 'Sala de Oncología', 'Atención a pacientes con cáncer'),
(8, 'Sala de Neonatología', 'Cuidados intensivos para recién nacidos'),
(9, 'Sala de Psiquiatría', 'Atención a pacientes con trastornos mentales'),
(10, 'Sala de Radiología', 'Estudios de imagenología'),
(11, 'Sala de Urgencias', 'Atención de emergencias médicas'),
(12, 'Sala de Pediatría', 'Atención especializada para niños'),
(13, 'Sala de Cardiología', 'Atención especializada en cardiología'),
(14, 'Sala de Maternidad', 'Atención a mujeres embarazadas'),
(15, 'Sala de Cirugía', 'Salas para procedimientos quirúrgicos'),
(16, 'Sala de Rehabilitación', 'Terapias físicas y rehabilitación'),
(17, 'Sala de Oncología', 'Atención a pacientes con cáncer'),
(18, 'Sala de Neonatología', 'Cuidados intensivos para recién nacidos'),
(19, 'Sala de Psiquiatría', 'Atención a pacientes con trastornos mentales'),
(20, 'Sala de Radiología', 'Estudios de imagenología'),
(21, 'Sala de Urgencias', 'Atención de emergencias médicas'),
(22, 'Sala de Pediatría', 'Atención especializada para niños'),
(23, 'Sala de Cardiología', 'Atención especializada en cardiología'),
(24, 'Sala de Maternidad', 'Atención a mujeres embarazadas'),
(25, 'Sala de Cirugía', 'Salas para procedimientos quirúrgicos'),
(26, 'Sala de Rehabilitación', 'Terapias físicas y rehabilitación'),
(27, 'Sala de Oncología', 'Atención a pacientes con cáncer'),
(28, 'Sala de Neonatología', 'Cuidados intensivos para recién nacidos'),
(29, 'Sala de Psiquiatría', 'Atención a pacientes con trastornos mentales'),
(30, 'Sala de Radiología', 'Estudios de imagenología');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_canceladas`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_canceladas` (
`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_hora` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_completadas`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_completadas` (
`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_hora` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_detalles_completos` (
`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_hora` datetime
,`estado` enum('Programada','Cancelada','Completada')
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_detalles_medicos` (
`id_cita` int(11)
,`nombre` varchar(100)
,`apellido` varchar(100)
,`especialidad` varchar(100)
,`telefono` varchar(15)
,`correo_electronico` varchar(100)
,`fecha_hora` datetime
,`estado` enum('Programada','Cancelada','Completada')
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_detalles_pacientes` (
`id_cita` int(11)
,`nombre` varchar(100)
,`apellido` varchar(100)
,`fecha_nacimiento` date
,`genero` enum('Masculino','Femenino')
,`tipo_sangre` varchar(5)
,`fecha_hora` datetime
,`estado` enum('Programada','Cancelada','Completada')
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_pacientes_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_pacientes_medicos` (
`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_hora` datetime
,`estado` enum('Programada','Cancelada','Completada')
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_por_especialidad`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_por_especialidad` (
`especialidad` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_por_medico`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_por_medico` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_por_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_por_paciente` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_citas_programadas`
-- (See below for the actual view)
--
CREATE TABLE `vista_citas_programadas` (
`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_hora` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_completas`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_completas` (
`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`nombre_sala` varchar(100)
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_detalles_completos` (
`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`nombre_sala` varchar(100)
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_detalles_medicos` (
`id_consulta` int(11)
,`nombre` varchar(100)
,`apellido` varchar(100)
,`especialidad` varchar(100)
,`telefono` varchar(15)
,`correo_electronico` varchar(100)
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_detalles_pacientes` (
`id_consulta` int(11)
,`nombre` varchar(100)
,`apellido` varchar(100)
,`fecha_nacimiento` date
,`genero` enum('Masculino','Femenino')
,`tipo_sangre` varchar(5)
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_detalles_salas`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_detalles_salas` (
`id_consulta` int(11)
,`nombre_sala` varchar(100)
,`descripcion` text
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_por_especialidad`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_por_especialidad` (
`especialidad` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_por_medico`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_por_medico` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_por_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_por_paciente` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_por_sala`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_por_sala` (
`nombre_sala` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_consultas_por_tipo_sala`
-- (See below for the actual view)
--
CREATE TABLE `vista_consultas_por_tipo_sala` (
`nombre_sala` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_detalles_facturas`
-- (See below for the actual view)
--
CREATE TABLE `vista_detalles_facturas` (
`id_detalle` int(11)
,`id_factura` int(11)
,`descripcion` varchar(255)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`subtotal` decimal(20,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_detalles_completos` (
`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
,`total` decimal(10,2)
,`estado` enum('Pagada','Pendiente')
,`descripcion` varchar(255)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`subtotal` decimal(20,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_detalles_consultas` (
`id_factura` int(11)
,`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
,`total` decimal(10,2)
,`estado` enum('Pagada','Pendiente')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_detalles_medicamentos` (
`id_factura` int(11)
,`medicamento` varchar(255)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`subtotal` decimal(20,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_detalles_pacientes` (
`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
,`total` decimal(10,2)
,`estado` enum('Pagada','Pendiente')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_detalles_pacientes_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_detalles_pacientes_medicos` (
`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
,`total` decimal(10,2)
,`estado` enum('Pagada','Pendiente')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_pagadas`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_pagadas` (
`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
,`total` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_pendientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_pendientes` (
`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
,`total` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_por_mes`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_por_mes` (
`mes` int(2)
,`año` int(4)
,`total_facturas` bigint(21)
,`total_pagado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_facturas_por_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vista_facturas_por_paciente` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_facturas` bigint(21)
,`total_pagado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_citas`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_citas` (
`id_formula` int(11)
,`id_cita` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_completos` (
`id_formula` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_consultas` (
`id_formula` int(11)
,`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_medicamentos` (
`id_formula` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
,`medicamento` varchar(100)
,`descripcion` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_medicos` (
`id_formula` int(11)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_detalles_pacientes` (
`id_formula` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_por_especialidad`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_por_especialidad` (
`especialidad` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_por_medico`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_por_medico` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_por_mes`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_por_mes` (
`mes` int(2)
,`año` int(4)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_formulas_por_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vista_formulas_por_paciente` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_completos` (
`id_historia` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`nombre_sala` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_consultas` (
`id_historia` int(11)
,`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_formulas`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_formulas` (
`id_historia` int(11)
,`id_formula` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_medicamentos` (
`id_historia` int(11)
,`medicamento` varchar(100)
,`descripcion` text
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_medicos` (
`id_historia` int(11)
,`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_pacientes` (
`id_historia` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_detalles_salas`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_detalles_salas` (
`id_historia` int(11)
,`nombre_sala` varchar(100)
,`descripcion` text
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_por_diagnostico`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_por_diagnostico` (
`diagnostico` text
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_por_mes`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_por_mes` (
`mes` int(2)
,`año` int(4)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_historias_por_paciente`
-- (See below for the actual view)
--
CREATE TABLE `vista_historias_por_paciente` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_agotados`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_agotados` (
`id_medicamento` int(11)
,`nombre` varchar(100)
,`descripcion` text
,`cantidad_disponible` int(11)
,`precio` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_detalles_consultas` (
`medicamento` varchar(100)
,`id_consulta` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_hora` datetime
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_detalles_facturas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_detalles_facturas` (
`medicamento` varchar(100)
,`id_detalle` int(11)
,`id_factura` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`subtotal` decimal(20,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_detalles_formulas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_detalles_formulas` (
`medicamento` varchar(100)
,`id_formula` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_detalles_historias`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_detalles_historias` (
`medicamento` varchar(100)
,`id_historia` int(11)
,`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_creacion` date
,`diagnostico` text
,`tratamiento` text
,`notas` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_disponibles`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_disponibles` (
`id_medicamento` int(11)
,`nombre` varchar(100)
,`descripcion` text
,`cantidad_disponible` int(11)
,`precio` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_mas_vendidos`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_mas_vendidos` (
`nombre` varchar(100)
,`total_vendido` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_por_cantidad`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_por_cantidad` (
`nombre` varchar(100)
,`cantidad_disponible` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_por_descripcion`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_por_descripcion` (
`nombre` varchar(100)
,`descripcion` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicamentos_por_precio`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicamentos_por_precio` (
`nombre` varchar(100)
,`precio` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_citas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_citas` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_completos` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`especialidad` varchar(100)
,`telefono` varchar(15)
,`correo_electronico` varchar(100)
,`fecha_contratacion` date
,`total_citas` bigint(21)
,`total_consultas` bigint(21)
,`total_formulas` bigint(21)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_consultas` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_facturas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_facturas` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_facturas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_formulas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_formulas` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_historias`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_historias` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_medicamentos` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_medicamentos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_pacientes` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_pacientes` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_detalles_salas`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_detalles_salas` (
`nombre_medico` varchar(100)
,`apellido_medico` varchar(100)
,`total_salas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medicos_por_especialidad`
-- (See below for the actual view)
--
CREATE TABLE `vista_medicos_por_especialidad` (
`especialidad` varchar(100)
,`total_medicos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_citas`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_citas` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_completos` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`fecha_nacimiento` date
,`genero` enum('Masculino','Femenino')
,`tipo_sangre` varchar(5)
,`telefono` varchar(15)
,`correo_electronico` varchar(100)
,`direccion` varchar(255)
,`ciudad` varchar(100)
,`codigo_postal` varchar(10)
,`total_citas` bigint(21)
,`total_consultas` bigint(21)
,`total_facturas` bigint(21)
,`total_formulas` bigint(21)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_consultas` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_facturas`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_facturas` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_facturas` bigint(21)
,`total_pagado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_formulas`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_formulas` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_historias`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_historias` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_medicamentos` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_medicamentos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_medicos` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_medicos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_detalles_salas`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_detalles_salas` (
`nombre_paciente` varchar(100)
,`apellido_paciente` varchar(100)
,`total_salas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_pacientes_por_genero`
-- (See below for the actual view)
--
CREATE TABLE `vista_pacientes_por_genero` (
`genero` enum('Masculino','Femenino')
,`total_pacientes` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_citas`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_citas` (
`nombre_sala` varchar(100)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_completos`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_completos` (
`nombre_sala` varchar(100)
,`descripcion` text
,`total_consultas` bigint(21)
,`total_medicos` bigint(21)
,`total_pacientes` bigint(21)
,`total_historias` bigint(21)
,`total_formulas` bigint(21)
,`total_medicamentos` bigint(21)
,`total_facturas` bigint(21)
,`total_citas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_consultas`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_consultas` (
`nombre_sala` varchar(100)
,`total_consultas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_facturas`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_facturas` (
`nombre_sala` varchar(100)
,`total_facturas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_formulas`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_formulas` (
`nombre_sala` varchar(100)
,`total_formulas` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_historias`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_historias` (
`nombre_sala` varchar(100)
,`total_historias` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_medicamentos`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_medicamentos` (
`nombre_sala` varchar(100)
,`total_medicamentos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_medicos`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_medicos` (
`nombre_sala` varchar(100)
,`total_medicos` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_detalles_pacientes`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_detalles_pacientes` (
`nombre_sala` varchar(100)
,`total_pacientes` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_salas_por_tipo`
-- (See below for the actual view)
--
CREATE TABLE `vista_salas_por_tipo` (
`nombre` varchar(100)
,`total_salas` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_canceladas`
--
DROP TABLE IF EXISTS `vista_citas_canceladas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_canceladas`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `c`.`fecha_hora` AS `fecha_hora` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) WHERE `c`.`estado` = 'Cancelada' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_completadas`
--
DROP TABLE IF EXISTS `vista_citas_completadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_completadas`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `c`.`fecha_hora` AS `fecha_hora` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) WHERE `c`.`estado` = 'Completada' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_detalles_completos`
--
DROP TABLE IF EXISTS `vista_citas_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_detalles_completos`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `c`.`fecha_hora` AS `fecha_hora`, `c`.`estado` AS `estado`, `c`.`notas` AS `notas` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_citas_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_detalles_medicos`  AS SELECT `c`.`id_cita` AS `id_cita`, `m`.`nombre` AS `nombre`, `m`.`apellido` AS `apellido`, `m`.`especialidad` AS `especialidad`, `m`.`telefono` AS `telefono`, `m`.`correo_electronico` AS `correo_electronico`, `c`.`fecha_hora` AS `fecha_hora`, `c`.`estado` AS `estado`, `c`.`notas` AS `notas` FROM (`citas` `c` join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_citas_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_detalles_pacientes`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`genero` AS `genero`, `p`.`tipo_sangre` AS `tipo_sangre`, `c`.`fecha_hora` AS `fecha_hora`, `c`.`estado` AS `estado`, `c`.`notas` AS `notas` FROM (`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_pacientes_medicos`
--
DROP TABLE IF EXISTS `vista_citas_pacientes_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_pacientes_medicos`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `c`.`fecha_hora` AS `fecha_hora`, `c`.`estado` AS `estado`, `c`.`notas` AS `notas` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_por_especialidad`
--
DROP TABLE IF EXISTS `vista_citas_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_por_especialidad`  AS SELECT `m`.`especialidad` AS `especialidad`, count(`c`.`id_cita`) AS `total_citas` FROM (`citas` `c` join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`especialidad` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_por_medico`
--
DROP TABLE IF EXISTS `vista_citas_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_por_medico`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`c`.`id_cita`) AS `total_citas` FROM (`citas` `c` join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_por_paciente`
--
DROP TABLE IF EXISTS `vista_citas_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_por_paciente`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`c`.`id_cita`) AS `total_citas` FROM (`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_citas_programadas`
--
DROP TABLE IF EXISTS `vista_citas_programadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_programadas`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `c`.`fecha_hora` AS `fecha_hora` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) WHERE `c`.`estado` = 'Programada' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_completas`
--
DROP TABLE IF EXISTS `vista_consultas_completas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_completas`  AS SELECT `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `s`.`nombre` AS `nombre_sala`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (((`consultas` `co` join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_detalles_completos`
--
DROP TABLE IF EXISTS `vista_consultas_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_detalles_completos`  AS SELECT `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `s`.`nombre` AS `nombre_sala`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (((`consultas` `co` join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_consultas_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_detalles_medicos`  AS SELECT `co`.`id_consulta` AS `id_consulta`, `m`.`nombre` AS `nombre`, `m`.`apellido` AS `apellido`, `m`.`especialidad` AS `especialidad`, `m`.`telefono` AS `telefono`, `m`.`correo_electronico` AS `correo_electronico`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (`consultas` `co` join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_consultas_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_detalles_pacientes`  AS SELECT `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`genero` AS `genero`, `p`.`tipo_sangre` AS `tipo_sangre`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (`consultas` `co` join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_detalles_salas`
--
DROP TABLE IF EXISTS `vista_consultas_detalles_salas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_detalles_salas`  AS SELECT `co`.`id_consulta` AS `id_consulta`, `s`.`nombre` AS `nombre_sala`, `s`.`descripcion` AS `descripcion`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (`consultas` `co` join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_por_especialidad`
--
DROP TABLE IF EXISTS `vista_consultas_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_por_especialidad`  AS SELECT `m`.`especialidad` AS `especialidad`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`consultas` `co` join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`especialidad` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_por_medico`
--
DROP TABLE IF EXISTS `vista_consultas_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_por_medico`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`consultas` `co` join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_por_paciente`
--
DROP TABLE IF EXISTS `vista_consultas_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_por_paciente`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`consultas` `co` join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_por_sala`
--
DROP TABLE IF EXISTS `vista_consultas_por_sala`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_por_sala`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`consultas` `co` join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_consultas_por_tipo_sala`
--
DROP TABLE IF EXISTS `vista_consultas_por_tipo_sala`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_por_tipo_sala`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`consultas` `co` join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) GROUP BY `s`.`nombre` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_detalles_facturas`
--
DROP TABLE IF EXISTS `vista_detalles_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_detalles_facturas`  AS SELECT `df`.`id_detalle` AS `id_detalle`, `f`.`id_factura` AS `id_factura`, `df`.`descripcion` AS `descripcion`, `df`.`cantidad` AS `cantidad`, `df`.`precio` AS `precio`, `df`.`cantidad`* `df`.`precio` AS `subtotal` FROM (`detalle_facturas` `df` join `facturas` `f` on(`df`.`id_factura` = `f`.`id_factura`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_detalles_completos`
--
DROP TABLE IF EXISTS `vista_facturas_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_detalles_completos`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total`, `f`.`estado` AS `estado`, `df`.`descripcion` AS `descripcion`, `df`.`cantidad` AS `cantidad`, `df`.`precio` AS `precio`, `df`.`cantidad`* `df`.`precio` AS `subtotal` FROM ((`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) join `detalle_facturas` `df` on(`f`.`id_factura` = `df`.`id_factura`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_facturas_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_detalles_consultas`  AS SELECT `f`.`id_factura` AS `id_factura`, `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total`, `f`.`estado` AS `estado` FROM (((`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_facturas_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_detalles_medicamentos`  AS SELECT `f`.`id_factura` AS `id_factura`, `df`.`descripcion` AS `medicamento`, `df`.`cantidad` AS `cantidad`, `df`.`precio` AS `precio`, `df`.`cantidad`* `df`.`precio` AS `subtotal` FROM (`facturas` `f` join `detalle_facturas` `df` on(`f`.`id_factura` = `df`.`id_factura`)) WHERE `df`.`descripcion` like '%Medicamento%' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_facturas_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_detalles_pacientes`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total`, `f`.`estado` AS `estado` FROM (`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_detalles_pacientes_medicos`
--
DROP TABLE IF EXISTS `vista_facturas_detalles_pacientes_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_detalles_pacientes_medicos`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total`, `f`.`estado` AS `estado` FROM (((`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_pagadas`
--
DROP TABLE IF EXISTS `vista_facturas_pagadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_pagadas`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total` FROM (`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) WHERE `f`.`estado` = 'Pagada' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_pendientes`
--
DROP TABLE IF EXISTS `vista_facturas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_pendientes`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `f`.`fecha` AS `fecha`, `f`.`total` AS `total` FROM (`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) WHERE `f`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_por_mes`
--
DROP TABLE IF EXISTS `vista_facturas_por_mes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_por_mes`  AS SELECT month(`f`.`fecha`) AS `mes`, year(`f`.`fecha`) AS `año`, count(`f`.`id_factura`) AS `total_facturas`, sum(`f`.`total`) AS `total_pagado` FROM `facturas` AS `f` GROUP BY month(`f`.`fecha`), year(`f`.`fecha`) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_facturas_por_paciente`
--
DROP TABLE IF EXISTS `vista_facturas_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_por_paciente`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`f`.`id_factura`) AS `total_facturas`, sum(`f`.`total`) AS `total_pagado` FROM (`facturas` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_citas`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_citas`  AS SELECT `fm`.`id_formula` AS `id_formula`, `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `fm`.`fecha` AS `fecha` FROM (((`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_completos`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_completos`  AS SELECT `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `fm`.`fecha` AS `fecha` FROM ((`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_consultas`  AS SELECT `fm`.`id_formula` AS `id_formula`, `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `fm`.`fecha` AS `fecha` FROM (((`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_medicamentos`  AS SELECT `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `fm`.`fecha` AS `fecha`, `me`.`nombre` AS `medicamento`, `me`.`descripcion` AS `descripcion` FROM (((`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_medicos`  AS SELECT `fm`.`id_formula` AS `id_formula`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `fm`.`fecha` AS `fecha` FROM (`formulas_medicas` `fm` join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_formulas_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_detalles_pacientes`  AS SELECT `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `fm`.`fecha` AS `fecha` FROM (`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_por_especialidad`
--
DROP TABLE IF EXISTS `vista_formulas_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_por_especialidad`  AS SELECT `m`.`especialidad` AS `especialidad`, count(`fm`.`id_formula`) AS `total_formulas` FROM (`formulas_medicas` `fm` join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`especialidad` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_por_medico`
--
DROP TABLE IF EXISTS `vista_formulas_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_por_medico`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`fm`.`id_formula`) AS `total_formulas` FROM (`formulas_medicas` `fm` join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_por_mes`
--
DROP TABLE IF EXISTS `vista_formulas_por_mes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_por_mes`  AS SELECT month(`fm`.`fecha`) AS `mes`, year(`fm`.`fecha`) AS `año`, count(`fm`.`id_formula`) AS `total_formulas` FROM `formulas_medicas` AS `fm` GROUP BY month(`fm`.`fecha`), year(`fm`.`fecha`) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_formulas_por_paciente`
--
DROP TABLE IF EXISTS `vista_formulas_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_por_paciente`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`fm`.`id_formula`) AS `total_formulas` FROM (`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_completos`
--
DROP TABLE IF EXISTS `vista_historias_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_completos`  AS SELECT `hc`.`id_historia` AS `id_historia`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `s`.`nombre` AS `nombre_sala`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM ((((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_historias_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_consultas`  AS SELECT `hc`.`id_historia` AS `id_historia`, `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM ((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_formulas`
--
DROP TABLE IF EXISTS `vista_historias_detalles_formulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_formulas`  AS SELECT `hc`.`id_historia` AS `id_historia`, `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM ((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `formulas_medicas` `fm` on(`p`.`id_paciente` = `fm`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_historias_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_medicamentos`  AS SELECT `hc`.`id_historia` AS `id_historia`, `me`.`nombre` AS `medicamento`, `me`.`descripcion` AS `descripcion`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM (((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `formulas_medicas` `fm` on(`p`.`id_paciente` = `fm`.`id_paciente`)) join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_historias_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_medicos`  AS SELECT `hc`.`id_historia` AS `id_historia`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM (((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_historias_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_pacientes`  AS SELECT `hc`.`id_historia` AS `id_historia`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM (`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_detalles_salas`
--
DROP TABLE IF EXISTS `vista_historias_detalles_salas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_detalles_salas`  AS SELECT `hc`.`id_historia` AS `id_historia`, `s`.`nombre` AS `nombre_sala`, `s`.`descripcion` AS `descripcion`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM (((`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_por_diagnostico`
--
DROP TABLE IF EXISTS `vista_historias_por_diagnostico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_por_diagnostico`  AS SELECT `hc`.`diagnostico` AS `diagnostico`, count(`hc`.`id_historia`) AS `total_historias` FROM `historias_clinicas` AS `hc` GROUP BY `hc`.`diagnostico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_por_mes`
--
DROP TABLE IF EXISTS `vista_historias_por_mes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_por_mes`  AS SELECT month(`hc`.`fecha_creacion`) AS `mes`, year(`hc`.`fecha_creacion`) AS `año`, count(`hc`.`id_historia`) AS `total_historias` FROM `historias_clinicas` AS `hc` GROUP BY month(`hc`.`fecha_creacion`), year(`hc`.`fecha_creacion`) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_historias_por_paciente`
--
DROP TABLE IF EXISTS `vista_historias_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_por_paciente`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`hc`.`id_historia`) AS `total_historias` FROM (`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_agotados`
--
DROP TABLE IF EXISTS `vista_medicamentos_agotados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_agotados`  AS SELECT `medicamentos`.`id_medicamento` AS `id_medicamento`, `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`descripcion` AS `descripcion`, `medicamentos`.`cantidad_disponible` AS `cantidad_disponible`, `medicamentos`.`precio` AS `precio` FROM `medicamentos` WHERE `medicamentos`.`cantidad_disponible` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_medicamentos_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_detalles_consultas`  AS SELECT `me`.`nombre` AS `medicamento`, `co`.`id_consulta` AS `id_consulta`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `co`.`fecha_hora` AS `fecha_hora`, `co`.`notas` AS `notas` FROM (((`medicamentos` `me` join `formulas_medicas` `fm` on(`me`.`id_medicamento` = `fm`.`id_formula`)) join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_detalles_facturas`
--
DROP TABLE IF EXISTS `vista_medicamentos_detalles_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_detalles_facturas`  AS SELECT `me`.`nombre` AS `medicamento`, `df`.`id_detalle` AS `id_detalle`, `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `df`.`cantidad` AS `cantidad`, `df`.`precio` AS `precio`, `df`.`cantidad`* `df`.`precio` AS `subtotal` FROM (((`medicamentos` `me` join `detalle_facturas` `df` on(`me`.`nombre` = `df`.`descripcion`)) join `facturas` `f` on(`df`.`id_factura` = `f`.`id_factura`)) join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_detalles_formulas`
--
DROP TABLE IF EXISTS `vista_medicamentos_detalles_formulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_detalles_formulas`  AS SELECT `me`.`nombre` AS `medicamento`, `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `fm`.`fecha` AS `fecha` FROM ((`medicamentos` `me` join `formulas_medicas` `fm` on(`me`.`id_medicamento` = `fm`.`id_formula`)) join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_detalles_historias`
--
DROP TABLE IF EXISTS `vista_medicamentos_detalles_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_detalles_historias`  AS SELECT `me`.`nombre` AS `medicamento`, `hc`.`id_historia` AS `id_historia`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `hc`.`fecha_creacion` AS `fecha_creacion`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`notas` AS `notas` FROM (((`medicamentos` `me` join `formulas_medicas` `fm` on(`me`.`id_medicamento` = `fm`.`id_formula`)) join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `historias_clinicas` `hc` on(`p`.`id_paciente` = `hc`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_disponibles`
--
DROP TABLE IF EXISTS `vista_medicamentos_disponibles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_disponibles`  AS SELECT `medicamentos`.`id_medicamento` AS `id_medicamento`, `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`descripcion` AS `descripcion`, `medicamentos`.`cantidad_disponible` AS `cantidad_disponible`, `medicamentos`.`precio` AS `precio` FROM `medicamentos` WHERE `medicamentos`.`cantidad_disponible` > 0 ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_mas_vendidos`
--
DROP TABLE IF EXISTS `vista_medicamentos_mas_vendidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_mas_vendidos`  AS SELECT `me`.`nombre` AS `nombre`, sum(`df`.`cantidad`) AS `total_vendido` FROM (`detalle_facturas` `df` join `medicamentos` `me` on(`df`.`descripcion` like concat('%',`me`.`nombre`,'%'))) GROUP BY `me`.`nombre` ORDER BY sum(`df`.`cantidad`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_por_cantidad`
--
DROP TABLE IF EXISTS `vista_medicamentos_por_cantidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_por_cantidad`  AS SELECT `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`cantidad_disponible` AS `cantidad_disponible` FROM `medicamentos` ORDER BY `medicamentos`.`cantidad_disponible` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_por_descripcion`
--
DROP TABLE IF EXISTS `vista_medicamentos_por_descripcion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_por_descripcion`  AS SELECT `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`descripcion` AS `descripcion` FROM `medicamentos` ORDER BY `medicamentos`.`descripcion` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicamentos_por_precio`
--
DROP TABLE IF EXISTS `vista_medicamentos_por_precio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_por_precio`  AS SELECT `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`precio` AS `precio` FROM `medicamentos` ORDER BY `medicamentos`.`precio` DESC ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_citas`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_citas`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`c`.`id_cita`) AS `total_citas` FROM (`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_completos`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_completos`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, `m`.`especialidad` AS `especialidad`, `m`.`telefono` AS `telefono`, `m`.`correo_electronico` AS `correo_electronico`, `m`.`fecha_contratacion` AS `fecha_contratacion`, count(`c`.`id_cita`) AS `total_citas`, count(`co`.`id_consulta`) AS `total_consultas`, count(`fm`.`id_formula`) AS `total_formulas`, count(`hc`.`id_historia`) AS `total_historias` FROM ((((`medicos` `m` left join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) left join `consultas` `co` on(`m`.`id_medico` = `co`.`id_medico`)) left join `formulas_medicas` `fm` on(`m`.`id_medico` = `fm`.`id_medico`)) left join `historias_clinicas` `hc` on(`c`.`id_paciente` = `hc`.`id_paciente`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_consultas`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`medicos` `m` join `consultas` `co` on(`m`.`id_medico` = `co`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_facturas`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_facturas`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`f`.`id_factura`) AS `total_facturas` FROM (((`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `facturas` `f` on(`p`.`id_paciente` = `f`.`id_paciente`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_formulas`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_formulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_formulas`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`fm`.`id_formula`) AS `total_formulas` FROM (`medicos` `m` join `formulas_medicas` `fm` on(`m`.`id_medico` = `fm`.`id_medico`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_historias`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_historias`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`hc`.`id_historia`) AS `total_historias` FROM ((`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) join `historias_clinicas` `hc` on(`c`.`id_paciente` = `hc`.`id_paciente`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_medicamentos`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`me`.`id_medicamento`) AS `total_medicamentos` FROM ((`medicos` `m` join `formulas_medicas` `fm` on(`m`.`id_medico` = `fm`.`id_medico`)) join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_pacientes`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`p`.`id_paciente`) AS `total_pacientes` FROM ((`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_detalles_salas`
--
DROP TABLE IF EXISTS `vista_medicos_detalles_salas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_detalles_salas`  AS SELECT `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico`, count(`s`.`id_sala`) AS `total_salas` FROM ((`medicos` `m` join `consultas` `co` on(`m`.`id_medico` = `co`.`id_medico`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) GROUP BY `m`.`id_medico` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medicos_por_especialidad`
--
DROP TABLE IF EXISTS `vista_medicos_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_por_especialidad`  AS SELECT `medicos`.`especialidad` AS `especialidad`, count(`medicos`.`id_medico`) AS `total_medicos` FROM `medicos` GROUP BY `medicos`.`especialidad` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_citas`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_citas`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`c`.`id_cita`) AS `total_citas` FROM (`pacientes` `p` join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_completos`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_completos`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`genero` AS `genero`, `p`.`tipo_sangre` AS `tipo_sangre`, `p`.`telefono` AS `telefono`, `p`.`correo_electronico` AS `correo_electronico`, `p`.`direccion` AS `direccion`, `p`.`ciudad` AS `ciudad`, `p`.`codigo_postal` AS `codigo_postal`, count(`c`.`id_cita`) AS `total_citas`, count(`co`.`id_consulta`) AS `total_consultas`, count(`f`.`id_factura`) AS `total_facturas`, count(`fm`.`id_formula`) AS `total_formulas`, count(`hc`.`id_historia`) AS `total_historias` FROM (((((`pacientes` `p` left join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) left join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) left join `facturas` `f` on(`p`.`id_paciente` = `f`.`id_paciente`)) left join `formulas_medicas` `fm` on(`p`.`id_paciente` = `fm`.`id_paciente`)) left join `historias_clinicas` `hc` on(`p`.`id_paciente` = `hc`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_consultas`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`pacientes` `p` join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_facturas`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_facturas`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`f`.`id_factura`) AS `total_facturas`, sum(`f`.`total`) AS `total_pagado` FROM (`pacientes` `p` join `facturas` `f` on(`p`.`id_paciente` = `f`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_formulas`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_formulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_formulas`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`fm`.`id_formula`) AS `total_formulas` FROM (`pacientes` `p` join `formulas_medicas` `fm` on(`p`.`id_paciente` = `fm`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_historias`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_historias`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`hc`.`id_historia`) AS `total_historias` FROM (`pacientes` `p` join `historias_clinicas` `hc` on(`p`.`id_paciente` = `hc`.`id_paciente`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_medicamentos`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`me`.`id_medicamento`) AS `total_medicamentos` FROM ((`pacientes` `p` join `formulas_medicas` `fm` on(`p`.`id_paciente` = `fm`.`id_paciente`)) join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_medicos`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`m`.`id_medico`) AS `total_medicos` FROM ((`pacientes` `p` join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_detalles_salas`
--
DROP TABLE IF EXISTS `vista_pacientes_detalles_salas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_detalles_salas`  AS SELECT `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, count(`s`.`id_sala`) AS `total_salas` FROM ((`pacientes` `p` join `consultas` `co` on(`p`.`id_paciente` = `co`.`id_paciente`)) join `salas` `s` on(`co`.`id_sala` = `s`.`id_sala`)) GROUP BY `p`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_pacientes_por_genero`
--
DROP TABLE IF EXISTS `vista_pacientes_por_genero`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_por_genero`  AS SELECT `pacientes`.`genero` AS `genero`, count(`pacientes`.`id_paciente`) AS `total_pacientes` FROM `pacientes` GROUP BY `pacientes`.`genero` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_citas`
--
DROP TABLE IF EXISTS `vista_salas_detalles_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_citas`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`c`.`id_cita`) AS `total_citas` FROM ((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `citas` `c` on(`co`.`id_paciente` = `c`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_completos`
--
DROP TABLE IF EXISTS `vista_salas_detalles_completos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_completos`  AS SELECT `s`.`nombre` AS `nombre_sala`, `s`.`descripcion` AS `descripcion`, count(`co`.`id_consulta`) AS `total_consultas`, count(`m`.`id_medico`) AS `total_medicos`, count(`p`.`id_paciente`) AS `total_pacientes`, count(`hc`.`id_historia`) AS `total_historias`, count(`fm`.`id_formula`) AS `total_formulas`, count(`me`.`id_medicamento`) AS `total_medicamentos`, count(`f`.`id_factura`) AS `total_facturas`, count(`c`.`id_cita`) AS `total_citas` FROM ((((((((`salas` `s` left join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) left join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) left join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) left join `historias_clinicas` `hc` on(`co`.`id_paciente` = `hc`.`id_paciente`)) left join `formulas_medicas` `fm` on(`co`.`id_paciente` = `fm`.`id_paciente`)) left join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) left join `facturas` `f` on(`p`.`id_paciente` = `f`.`id_paciente`)) left join `citas` `c` on(`co`.`id_paciente` = `c`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_consultas`
--
DROP TABLE IF EXISTS `vista_salas_detalles_consultas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_consultas`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`co`.`id_consulta`) AS `total_consultas` FROM (`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_facturas`
--
DROP TABLE IF EXISTS `vista_salas_detalles_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_facturas`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`f`.`id_factura`) AS `total_facturas` FROM (((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) join `facturas` `f` on(`p`.`id_paciente` = `f`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_formulas`
--
DROP TABLE IF EXISTS `vista_salas_detalles_formulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_formulas`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`fm`.`id_formula`) AS `total_formulas` FROM ((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `formulas_medicas` `fm` on(`co`.`id_paciente` = `fm`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_historias`
--
DROP TABLE IF EXISTS `vista_salas_detalles_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_historias`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`hc`.`id_historia`) AS `total_historias` FROM ((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `historias_clinicas` `hc` on(`co`.`id_paciente` = `hc`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_medicamentos`
--
DROP TABLE IF EXISTS `vista_salas_detalles_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_medicamentos`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`me`.`id_medicamento`) AS `total_medicamentos` FROM (((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `formulas_medicas` `fm` on(`co`.`id_paciente` = `fm`.`id_paciente`)) join `medicamentos` `me` on(`fm`.`id_formula` = `me`.`id_medicamento`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_medicos`
--
DROP TABLE IF EXISTS `vista_salas_detalles_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_medicos`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`m`.`id_medico`) AS `total_medicos` FROM ((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `medicos` `m` on(`co`.`id_medico` = `m`.`id_medico`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_detalles_pacientes`
--
DROP TABLE IF EXISTS `vista_salas_detalles_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_detalles_pacientes`  AS SELECT `s`.`nombre` AS `nombre_sala`, count(`p`.`id_paciente`) AS `total_pacientes` FROM ((`salas` `s` join `consultas` `co` on(`s`.`id_sala` = `co`.`id_sala`)) join `pacientes` `p` on(`co`.`id_paciente` = `p`.`id_paciente`)) GROUP BY `s`.`id_sala` ;

-- --------------------------------------------------------

--
-- Structure for view `vista_salas_por_tipo`
--
DROP TABLE IF EXISTS `vista_salas_por_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_salas_por_tipo`  AS SELECT `salas`.`nombre` AS `nombre`, count(`salas`.`id_sala`) AS `total_salas` FROM `salas` GROUP BY `salas`.`nombre` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Indexes for table `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_consulta`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indexes for table `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_factura` (`id_factura`);

--
-- Indexes for table `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indexes for table `formulas_medicas`
--
ALTER TABLE `formulas_medicas`
  ADD PRIMARY KEY (`id_formula`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Indexes for table `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  ADD PRIMARY KEY (`id_historia`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indexes for table `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indexes for table `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_medico`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citas`
--
ALTER TABLE `citas`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `formulas_medicas`
--
ALTER TABLE `formulas_medicas`
  MODIFY `id_formula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  MODIFY `id_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

--
-- Constraints for table `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`),
  ADD CONSTRAINT `consultas_ibfk_3` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`);

--
-- Constraints for table `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD CONSTRAINT `detalle_facturas_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id_factura`);

--
-- Constraints for table `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`);

--
-- Constraints for table `formulas_medicas`
--
ALTER TABLE `formulas_medicas`
  ADD CONSTRAINT `formulas_medicas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `formulas_medicas_ibfk_2` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`);

--
-- Constraints for table `historias_clinicas`
--
ALTER TABLE `historias_clinicas`
  ADD CONSTRAINT `historias_clinicas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
