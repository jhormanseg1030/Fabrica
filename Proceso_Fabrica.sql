CREATE DEFINER=`root`@`localhost` PROCEDURE `Fabricante`(	
	IN nombre varchar(100)
)
BEGIN
	INSERT INTO Fabricante (nombre)
    VALUES (nombre);
END