CREATE TABLE `cliente` (
	`idCliente` INT(11) NOT NULL,
	`usuario` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT NULL,
	`tipo` INT(11) NULL,
	PRIMARY KEY (`idCliente`),
	INDEX `FK_cliente_cliente_tipo` (`tipo`),
	CONSTRAINT `FK_cliente_cliente_tipo` FOREIGN KEY (`tipo`) REFERENCES `cliente_tipo` (`idClienteTipo`) ON UPDATE NO ACTION ON DELETE NO ACTION
);