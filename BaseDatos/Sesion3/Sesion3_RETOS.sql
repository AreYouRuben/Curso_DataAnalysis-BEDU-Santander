# SESION 3; RETO 1
/*
¿Cuál es el nombre de los empleados cuyo sueldo es mayor a $100,000?
¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
*/
SELECT * FROM venta;
SELECT id_empleado, nombre
FROM empleado
WHERE id_puesto in 
(SELECT id_puesto from puesto
WHERE salario > 10000);

SELECT id_empleado, min(Tventa), max(Tventa)
FROM
(SELECT clave, id_empleado, count(*) Tventa
FROM venta
GROUP BY clave, id_empleado) as subconsulta
GROUP BY id_empleado;

SELECT * FROM venta
WHERE id_articulo
IN(SELECT id_articulo from articulo
WHERE precio > 5000);

# SESION 3; RETO 2
/*
¿Cuál es el nombre de los empleados que realizaron cada venta?
¿Cuál es el nombre de los artículos que se han vendido?
¿Cuál es el total de cada venta?
*/
SELECT nombre, id_venta, clave FROM empleado e
JOIN venta v
ON e.id_empleado = v.id_empleado;

SELECT nombre, id_venta, clave FROM articulo a
JOIN venta v
ON a.id_articulo = v.id_articulo;

SELECT clave, sum(precio) total FROM venta v
JOIN articulo a
ON v.id_articulo = a.id_articulo
GROUP BY clave;

# SESION 3; RETO 3
/*
Usando la base de datos tienda, define las siguientes vistas que permitan obtener la siguiente información.

Obtener el puesto de un empleado.
Saber qué artículos ha vendido cada empleado.
Saber qué puesto ha tenido más ventas.
*/
CREATE VIEW v_empleado_puesto_057 AS
	SELECT CONCAT(e.nombre,' ',apellido_paterno,' ',apellido_materno) AS Empleado, p.nombre Puesto
	FROM empleado e
	JOIN puesto p
	ON e.id_puesto = p.id_puesto;

SELECT * FROM v_empleado_puesto_057;

CREATE VIEW v_venta_empleado_057 AS
	SELECT clave, CONCAT(e.nombre,' ',apellido_paterno,' ',apellido_materno) AS Empleado, a.nombre
	FROM venta v
	JOIN empleado e
	ON v.id_empleado = e.id_empleado
	JOIN articulo a
	on v.id_articulo = a.id_articulo
	ORDER BY Empleado;

SELECT * FROM v_venta_empleado_057;

CREATE VIEW v_venta_puesto_057 AS
	SELECT p.nombre Puesto, count(clave) "Total de ventas por puesto"
	FROM venta v
	JOIN empleado e
	ON v.id_empleado = e.id_empleado
	JOIN puesto p
	ON e.id_puesto = p.id_puesto
	GROUP BY p.nombre
	order by count(clave) desc;

SELECT * FROM v_venta_puesto_057;
