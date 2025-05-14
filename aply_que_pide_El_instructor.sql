USE `fabrica`;
DROP procedure IF EXISTS `Fabricante`;

DELIMITER $$
USE `fabrica`$$
CREATE PROCEDURE `Fabricante`(	
	IN nombre varchar(100)
)
BEGIN
	INSERT INTO Fabricante (nombre)
    VALUES (nombre);
END$$

DELIMITER ;

USE `fabrica`;
DROP procedure IF EXISTS `Productos`;

DELIMITER $$
USE `fabrica`$$
CREATE PROCEDURE `Productos` (
	IN nombre varchar(100),
	IN precio double,
	IN codigo_fabricante int(10)
)
BEGIN
	INSERT INTO Productos (nombre,precio,codigo_fabricante)
    VALUES (nombre,precio,codigo_fabricante);
END$$

DELIMITER ;