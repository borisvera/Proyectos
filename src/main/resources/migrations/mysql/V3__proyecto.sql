CREATE TABLE `proyecto` (
	`idProyecto` INT(11) NOT NULL,
	`descripcion` VARCHAR(50) NULL DEFAULT NULL,
	`tipoMoneda` VARCHAR(50) NULL DEFAULT NULL,
	`idCliente` INT(11) NOT NULL,
	PRIMARY KEY (`idProyecto`),
	INDEX `FK_proyecto_cliente` (`idCliente`),
	CONSTRAINT `FK_proyecto_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
);