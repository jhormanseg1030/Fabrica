CREATE DEFINER=`root`@`localhost` PROCEDURE `Productos`(
	IN nombre varchar(100),
	IN precio double,
	IN codigo_fabricante int(10)
)
BEGIN
	INSERT INTO Producto (nombre,precio,codigo_fabricante)
    VALUES (nombre,precio,codigo_fabricante);
END