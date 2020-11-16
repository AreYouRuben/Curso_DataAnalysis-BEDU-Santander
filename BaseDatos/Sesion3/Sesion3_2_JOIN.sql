SHOW KEYS FROM venta;

SELECT * FROM puesto;
SELECT * FROM empleado;

SELECT *
FROM empleado e
JOIN puesto p
ON e.id_puesto = p.id_puesto;

SELECT *
FROM puesto p
LEFT JOIN empleado e
ON p.id_puesto = e.id_puesto;

SELECT *
FROM empleado e
RIGHT JOIN puesto p
ON e.id_puesto = p.id_puesto;

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
