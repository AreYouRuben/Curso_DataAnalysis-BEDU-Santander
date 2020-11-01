# 	Agrupaciones ORDER BY

SELECT * FROM articulo;
SELECT nombre, sum(precio) precio_total 
FROM articulo GROUP BY nombre;

SELECT nombre, count(*) cantidad
FROM articulo group by nombre ORDER BY cantidad DESC;

SELECT * FROM puesto;
SELECT NOMBRE, MIN(salario), max(salario) FROM puesto  group by nombre;

#  	SESION 2; RETO 3
/*
¿Cuántos registros hay por cada uno de los puestos?
¿Cuánto dinero se paga en total por puesto?
¿Cuál es el número total de ventas por vendedor?
¿Cuál es el número total de ventas por artículo?
*/
SELECT nombre, count(nombre) repeticion_puesto FROM puesto GROUP BY nombre;
SELECT nombre, sum(salario) total FROM puesto GROUP BY nombre;

SELECT * FROM venta;
SELECT id_empleado, count(clave) total 
FROM venta GROUP BY id_empleado;

SELECT id_articulo, count(*) total 
FROM venta GROUP BY id_articulo;


