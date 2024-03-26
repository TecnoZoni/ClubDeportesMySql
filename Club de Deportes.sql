CREATE TABLE `deporte` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `es_grupal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `deporte` (`codigo`, `nombre`, `es_grupal`) VALUES
(1, 'tenis', 1),
(2, 'futbol', 1),
(3, 'basquet', 1);

CREATE TABLE `socios` (
  `num_socio` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(12) NOT NULL,
  `fk_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO `socios` (`num_socio`, `nombre`, `apellido`, `dni`, `fk_codigo`) VALUES
(1, 'Pepito', 'Juarez', 12345678, 1),
(2, 'Pedro', 'Perez', 23456789, 2),
(3, 'Carlos', 'Lopez', 34567890, 3),
(4, 'Maria', 'Diaz', 45678901, 1),
(5, 'Ana', 'Martinez', 56789012, 2),
(6, 'Luis', 'Gonzalez', 67890123, 3),
(7, 'Jose', 'Rodriguez', 78901234, 1),
(8, 'Carmen', 'Fernandez', 89012345, 2),
(9, 'Isabel', 'Torres', 90123456, 3),
(10, 'Juan', 'Gomez', 12345678, 1);

ALTER TABLE `deporte`
  ADD PRIMARY KEY (`codigo`);

ALTER TABLE `socios`
  ADD PRIMARY KEY (`num_socio`),
  ADD KEY `fk_codigo` (`fk_codigo`);

ALTER TABLE `socios`
  ADD CONSTRAINT `fk_codigo` FOREIGN KEY (`fk_codigo`) REFERENCES `deporte` (`codigo`);
COMMIT;

SELECT * FROM `deporte`;

SELECT * FROM `socios`;

SELECT * FROM `socios` WHERE `fk_codigo` = 1;

SELECT COUNT(fk_codigo) FROM `socios` WHERE `fk_codigo` = 2;