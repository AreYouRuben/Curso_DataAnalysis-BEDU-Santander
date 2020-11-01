# 	LIKE
USE tienda;
SHOW TABLES;
SELECT * FROM empleado;
SELECT * FROM empleado WHERE nombre LIKE 'M%';
SELECT * FROM empleado WHERE nombre LIKE '%a';
SELECT * FROM empleado WHERE nombre LIKE 'M%a';


#  	SESION 2; RETO 1
SELECT * FROM articulo WHERE nombre LIKE '%pasta%';
SELECT * FROM articulo WHERE nombre LIKE '%Cannelloni%';
SELECT * FROM articulo WHERE nombre LIKE '% - %';
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';
