# Sesión 1 Reto 1
# Usando la base de datos tienda, muestra la 
#	descripción de las tablas articulo, puesto y venta.
USE		tienda;
SHOW	TABLES;
DESCRIBE articulos;
DESCRIBE puesto;
DESCRIBE venta;

# Sesión 1 Reto 2
/*
¿Cuál es el nombre de los empleados con el puesto 4?
¿Qué puestos tienen un salario mayor a $10,000?
¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
*/
#1
SELECT 	id_empleado, nombre as Emplado_puesto4 
FROM 	empleado 	
WHERE 	id_puesto = 4;
#2
SELECT 	* FROM puesto
WHERE 	salario > 10000
ORDER BY 	salario;
#3
SELECT 	* FROM articulo
WHERE 	PRECIO 	> 1000
AND 	iva 	> 100;
#4
SELECT 	* FROM venta
WHERE	id_articulo in (135,963)
AND 	id_empleado in (835,369);

# Sesión 1 Reto 3
# Usando la base de datos tienda, escribe una consulta que permita 
#	obtener el top 5 de puestos por salarios.
SELECT 	* FROM puesto
ORDER BY salario DESC
LIMIT 	5;