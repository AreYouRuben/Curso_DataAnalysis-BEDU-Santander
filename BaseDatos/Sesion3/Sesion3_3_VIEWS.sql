SELECT v.clave, v.fecha, a.nombre producto, a.precio, CONCAT(e.nombre, ' ', e.apellido_paterno) empleado
FROM venta v
JOIN empleado e
	ON v.id_empleado = e.id_empleado
JOIN articulo a
	ON v.id_articulo = a.id_articulo;
    
CREATE VIEW tickets057 AS 
(SELECT v.clave, v.fecha, a.nombre producto, a.precio, CONCAT(e.nombre, ' ', e.apellido_paterno) empleado
FROM venta v
JOIN empleado e
	ON v.id_empleado = e.id_empleado
JOIN articulo a
	ON v.id_articulo = a.id_articulo);
    
SELECT * FROM tickets057;

SELECT clave, round(sum(precio), 2) as total
FROM tickets057 
group by clave;

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


