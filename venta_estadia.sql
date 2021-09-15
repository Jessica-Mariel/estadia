-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 15-09-2021 a las 17:31:31
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta_estadia`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetTicket` (IN `IDTicket` INT)  BEGIN
    SELECT * 
    FROM ticket
    WHERE IDTicket = IDTicket;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_GetVentaDia` (IN `idventa` INT)  BEGIN
    SELECT * 
    FROM venta
    WHERE idventa = idventa;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_SetGeneraVenta` (`idventa` INT(11), `producto` VARCHAR(50), `precio` DOUBLE)  INSERT INTO venta (idventa, producto, precio) VALUES (idventa, producto, precio)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `IDDetalle` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Lugar` varchar(50) NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`IDDetalle`, `Fecha`, `Lugar`, `Hora`) VALUES
(1, '2021-09-14', 'Plaza Jardin', '04:16:00'),
(2, '2021-09-14', 'Chedraui', '05:26:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `IDTicket` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`IDTicket`, `Fecha`) VALUES
(1, '2021-09-14'),
(2, '2021-09-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `producto`, `precio`) VALUES
(1, 'agua', 10),
(2, 'Cafe', 55);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`IDDetalle`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`IDTicket`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
