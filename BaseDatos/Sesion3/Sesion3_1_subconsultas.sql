USE	tienda;
SELECT	* FROM puesto;
SELECT 	max(id_puesto) - 5 FROM puesto;
SELECT sum(salario) 
FROM	puesto
WHERE id_puesto > 995;

# SUBCONSULTAS
SELECT sum(salario) 
FROM	puesto
WHERE id_puesto > (SELECT 	max(id_puesto) - 5 FROM puesto);

# WHERE in
# Junior Executive
SELECT id_puesto
FROM puesto 
WHERE nombre = 'Junior Executive';

SELECT * FROM empleado
WHERE id_puesto in(
SELECT id_puesto
FROM puesto 
WHERE nombre = 'Junior Executive');

SELECT * FROM venta;

SELECT clave, id_articulo, count(*) cantidad FROM venta
GROUP BY clave, id_articulo
ORDER BY cantidad DESC;

SELECT id_articulo, min(cantidad) cantidad_min, max(cantidad) cantidad_max
FROM
(SELECT clave, id_articulo, count(*) cantidad FROM venta
GROUP BY clave, id_articulo
ORDER BY cantidad DESC) as subconsulta
GROUP BY id_articulo;

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
