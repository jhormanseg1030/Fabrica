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
/* 15....SELECT nombre,precio FROM Productos ORDER BY nombre ASC*/
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
SELECT codigo FROM Productos;
SELECT DISTINCT codigo FROM productos;
