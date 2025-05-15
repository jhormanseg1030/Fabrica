#0
SELECT nombre FROM Productos;
#1
SELECT nombre,precio FROM Productos;
#2
SELECT * FROM Productos;
#3
SELECT nombre FROM Productos;
#4
SELECT nombre,precio,precio * 0.8945 AS euros FROM Productos;
#5
SELECT nombre AS 'nombre de producto', precio * 0.8945 AS euros, precio AS dolares FROM Productos;
#6
SELECT UPPER (nombre) AS nombre FROM Productos;
#7
SELECT LOWER (nombre) AS nombre FROM Productos;
#8
SELECT nombre, UPPER (LEFT(nombre,2)) AS nombre FROM Fabricante;
#9
SELECT nombre,precio, ROUND(precio) AS precio FROM Productos;
#10
SELECT nombre,precio, FLOOR(precio) AS precio FROM Productos;
#11
SELECT f.codigo FROM Fabricante AS f
JOIN Productos AS p ON f.codigo= p.codigo_fabricante;
#12
SELECT DISTINCT p.codigo_fabricante FROM productos as p;
#13
SELECT nombre FROM Fabricante ORDER BY nombre ASC;
#14
SELECT nombre FROM Fabricante ORDER BY nombre DESC;
#15
SELECT nombre FROM Productos ORDER BY nombre ASC;
SELECT precio FROM Productos ORDER BY precio DESC;
#16
SELECT * FROM fabricante LIMIT 5;
#17
SELECT * FROM fabricante ORDER BY codigo,nombre LIMIT 2 OFFSET 3;
#18
SELECT nombre,precio FROM Productos ORDER BY precio ASC LIMIT 1;
#19
SELECT nombre,precio FROM Productos ORDER BY precio DESC LIMIT 1;
#20
SELECT nombre FROM Productos WHERE codigo=2;
#21
SELECT nombre,precio * 0.8945  AS euros FROM Productos WHERE precio * 0.8945  <=120;
#22
SELECT nombre,precio * 0.8945  AS euros FROM Productos WHERE precio * 0.8945  >=400;
#23
SELECT nombre,precio * 0.8945  AS euros FROM Productos WHERE NOT precio * 0.8945  >= 400;
#24
SELECT nombre,precio * 0.8945  AS euros FROM productos WHERE precio * 0.8945 >= 80 AND precio <= 300;
#25
SELECT nombre,precio * 0.8945  AS euros FROM productos WHERE precio * 0.8945 BETWEEN 60 AND 200;
#26
SELECT nombre,precio * 0.8945  AS euros FROM Productos WHERE codigo_fabricante=6 AND precio * 0.8945  >=200;
#27
SELECT codigo_fabricante,nombre FROM Productos WHERE codigo_fabricante=1 OR codigo_fabricante=3 OR codigo_fabricante=5;
#28
SELECT codigo_fabricante,nombre FROM Productos WHERE codigo_fabricante IN (1, 3, 5);
#29
SELECT nombre, precio * 100 AS centimas FROM Productos;
#30
SELECT nombre FROM Fabricante WHERE nombre LIKE "S%";
#31
SELECT nombre FROM Fabricante WHERE RIGHT(nombre,1) = "e";
#32
SELECT nombre FROM Fabricante WHERE nombre LIKE "%w%";
#33
SELECT nombre FROM Fabricante WHERE LENGTH(nombre) =4;
#34
SELECT nombre FROM Productos WHERE nombre LIKE "%portatil%";
#35
SELECT nombre,precio FROM Productos WHERE nombre LIKE "%monitor%" AND  precio * 0.8945 < 215;
#36
SELECT nombre,precio * 0.8945  AS euros FROM Productos WHERE precio * 0.8945  >=180 ORDER BY precio DESC, nombre ASC;

/*Consultas multitabla (Composición interna)*/
#1
SELECT P.nombre,P.precio,F.nombre FROM Productos AS P
INNER JOIN fabricante f On p.codigo = f.codigo;
#2
SELECT P.nombre,P.precio,F.nombre FROM Productos AS P
INNER JOIN fabricante f On p.codigo = f.codigo ORDER BY f.nombre ASC;
#3
SELECT p.codigo,p.nombre,f.codigo,f.nombre FROM Fabricante AS f
INNER JOIN Productos AS p ON f.codigo= p.codigo;
#4
SELECT p.nombre,p.precio,f.nombre FROM Fabricante AS f
INNER JOIN Productos AS p ON f.codigo= p.codigo ORDER BY precio ASC LIMIT 1;
#5
SELECT p.nombre,p.precio,f.nombre FROM Fabricante AS f
INNER JOIN Productos AS p ON f.codigo= p.codigo ORDER BY precio DESC LIMIT 1;
#6 
SELECT f.nombre,P.nombre FROM Productos AS P
JOIN Fabricante AS f ON P.codigo_fabricante = f.codigo 
Where p.codigo_fabricante =2;
#7
SELECT f.nombre,P.nombre,precio * 0.8945 AS precio FROM Productos AS P
JOIN Fabricante AS f ON P.codigo_fabricante = f.codigo 
Where p.codigo_fabricante =6 AND precio * 0.8945  >200;
#8
SELECT f.nombre,p.nombre FROM Productos AS p
JOIN Fabricante AS f ON P.codigo_fabricante = f.codigo 
WHERE codigo_fabricante=1 OR codigo_fabricante=3 OR codigo_fabricante=5;
#9
SELECT f.nombre,p.nombre FROM Productos AS p
JOIN Fabricante AS f ON P.codigo_fabricante = f.codigo 
WHERE codigo_fabricante IN (1, 3, 5);
#10
SELECT nombre,precio FROM Productos WHERE RIGHT(nombre,1) = "e";
#11
SELECT nombre,precio FROM Productos WHERE nombre LIKE "%w%";
#12----mirar en codigo 
SELECT f.codigo, p.nombre, p.precio * 0.8945 AS precio FROM Fabricante AS f
JOIN Productos AS p ON f.codigo=P.codigo_fabricante   
WHERE precio * 0.8945  >=180 ORDER BY precio DESC, nombre ASC;
#13
SELECT DISTINCT f.codigo,f.nombre FROM Fabricante AS f
INNER JOIN Productos AS p ON f.codigo = p.codigo_fabricante;

/* Consultas multitabla (Composición externa)*/
#1
SELECT f.nombre AS nombre,p.nombre AS nombre FROM fabricante AS f
LEFT JOIN Productos AS p ON f.codigo = p.codigo_fabricante ORDER BY f.nombre;
#2
SELECT DISTINCT nombre FROM fabricante
WHERE codigo NOT IN (SELECT codigo_fabricante FROM productos);
#3
/* */


/*Consultas resumen*/
#1
SELECT COUNT(*) FROM productos;
#2
SELECT COUNT(*) FROM Fabricante;
#3
SELECT COUNT(DISTINCT codigo_fabricante) AS codigo FROM Productos;
#4
SELECT AVG(precio) AS "media del precio" FROM Productos;
#5
SELECT MIN(precio) FROM Productos;
#6
SELECT MAX(precio) FROM Productos;
#7
SELECT nombre, precio FROM Productos WHERE precio= (SELECT MIN(precio)FROM Productos) LIMIT 1;
#8
SELECT nombre, precio FROM Productos WHERE precio= (SELECT MAX(precio)FROM Productos) LIMIT 1;
#9
SELECT SUM(precio) AS precio FROM Productos;
#10
SELECT COUNT(codigo_fabricante) FROM Productos WHERE codigo_fabricante =1;
#11
