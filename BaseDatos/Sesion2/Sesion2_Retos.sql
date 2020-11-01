#  	SESION 2; RETO 1
/*
¿Qué artículos incluyen la palabra Pasta en su nombre?
¿Qué artículos incluyen la palabra Cannelloni en su nombre?
¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
¿Qué puestos incluyen la palabra Designer?
¿Qué puestos incluyen la palabra Developer?
*/
#1
SELECT 	* FROM articulo WHERE nombre LIKE '%pasta%';
#2
SELECT 	* FROM articulo WHERE nombre LIKE '%Cannelloni%';
#3
SELECT 	* FROM articulo WHERE nombre LIKE '% - %';
#4
SELECT 	* FROM puesto WHERE nombre LIKE '%Designer%';
#5
SELECT 	* FROM puesto WHERE nombre LIKE '%Developer%';

#  	SESION 2; RETO 2
# https://github.com/beduExpert/A1-Introduccion-a-Bases-de-Datos-Santander/blob/main/Sesion-02/Reto-02/Readme.md
/*
¿Cuál es el promedio de salario de los puestos?
¿Cuántos artículos incluyen la palabra Pasta en su nombre?
¿Cuál es el salario mínimo y máximo?
¿Cuál es la suma del salario de los últimos cinco puestos agregados?
*/
#1
SELECT 	AVG(salario) PromedioSalario FROM puesto;
#2
SELECT 	count(*) PastaInName FROM articulo where nombre like '%pasta%';
#3
SELECT 	min(salario) min_salario, max(salario) max_salario FROM puesto;
#4
SELECT 	* from articulo order by id_articulo desc;
SELECT 	sum(salario) TotalDeSalarios FROM puesto WHERE id_puesto > 995;

#  	SESION 2; RETO 3
/*
¿Cuántos registros hay por cada uno de los puestos?
¿Cuánto dinero se paga en total por puesto?
¿Cuál es el número total de ventas por vendedor?
¿Cuál es el número total de ventas por artículo?
*/
#1
SELECT 	nombre, count(nombre) repeticion_puesto FROM puesto GROUP BY nombre;
#2
SELECT 	nombre, sum(salario) total FROM puesto GROUP BY nombre;
#3
SELECT 	* FROM venta;
SELECT 	id_empleado, count(clave) total 
FROM 	venta GROUP BY id_empleado;
#4
SELECT 	id_articulo, count(*) total 
FROM 	venta GROUP BY id_articulo;