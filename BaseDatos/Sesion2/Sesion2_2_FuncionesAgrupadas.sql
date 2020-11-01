# 	Funciones de agrupaciones
SELECT (1 + 7) * (10 / (6-4));
SELECT * FROM articulo;
SELECT AVG(precio) promedio_precio FROM articulo;
SELECT count(*) conteo_articulos FROM articulo;
SELECT max(precio) max_precio FROM articulo;
SELECT min(precio) min_precio FROM articulo;
SELECT sum(precio) Suma_precio FROM articulo;

#  	SESION 2; RETO 2
# https://github.com/beduExpert/A1-Introduccion-a-Bases-de-Datos-Santander/blob/main/Sesion-02/Reto-02/Readme.md
/*
¿Cuál es el promedio de salario de los puestos?
¿Cuántos artículos incluyen la palabra Pasta en su nombre?
¿Cuál es el salario mínimo y máximo?
¿Cuál es la suma del salario de los últimos cinco puestos agregados?
*/
SELECT AVG(salario) FROM puesto;
SELECT count(*) FROM articulo where nombre like '%pasta%';
SELECT min(salario) min_salario, max(salario) max_salario FROM puesto;

SELECT * from articulo order by id_articulo desc;
SELECT sum(salario) FROM puesto WHERE id_puesto > 995;

