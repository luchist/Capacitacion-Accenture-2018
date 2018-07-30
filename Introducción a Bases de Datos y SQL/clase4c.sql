 /*
SELF JOIN
Similar a Inner Join, pero las tablas son iguales, osea dos instancias de la misma tabla
*/

 
 --Ejemplo SELF JOIN 
 -- Mostrar el nombre del empleado y su jefe
 IF OBJECT_ID (N'dbo.Empleado', N'T') IS NOT NULL 
	DROP TABLE Empleado; 
 
CREATE TABLE Empleado
(
empid int primary key,
nombre varchar(50),
jefeid int
)
Insert into Empleado(empid,nombre,jefeid)values (1001,'Juan Perez',null); 
Insert into Empleado(empid,nombre,jefeid)values (1002,'María Lopez',1001);
Insert into Empleado(empid,nombre,jefeid)values (1003,'Josecito',1001);
Insert into Empleado(empid,nombre,jefeid)values (1004,'Sandra Bull',1002);
Insert into Empleado(empid,nombre,jefeid)values (1005,'Andrea Puente',1003);
Insert into Empleado(empid,nombre,jefeid)values (1006,'Mr. Enri',1002);

SELECT * from Empleado;

SELECT e.empid, e.nombre as Emple, j.nombre as Jefe
from Empleado e, Empleado j
WHERE e.jefeid=j.empid;

SELECT e.empid, e.nombre as Emple, j.nombre as Jefe
FROM Empleado e INNER JOIN Empleado j ON e.jefeid=j.empid


/*

UNION

*/

-- Nombres comunesa ambos: ANN y MARIA dos veces en la tabla employee -- 64 registros

--UNION
--Para poder hacer la union, las dos tablas deben tener el mismo numero de columnas y el mismo tipo de datos
--(Porque se van a unir, uno abajo del otro)
SELECT fname FROM employee --43 rows
union
select au_fname FROM authors --23rows
--64 rows = 43 + 23 - 2 (que se repiten)
-- La tabla resultante tiene datos ordenados, porque los tiene que ordenar para saber si
-- hay duplicados

-- UNION ALL
SELECT fname FROM employee --43 rows
union all
select au_fname FROM authors --23rows
--66 rows = 43 + 23 (no borra repetidos)
-- La tabla resultante tiene datos desordenados