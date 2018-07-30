
use pubs;

/*
JOINS
INNER JOIN
Toma todos los REGISTROS coincidentes en las dos tablas
*/

SELECT
	t.title as Libro,
	t.price as Precio,
	p.pub_name as Editorial
FROM titles as t			-- alias de la tabla titles, para acortar la sintaxis
INNER JOIN publishers as p on p.pub_id = t.pub_id
--18 resultados


/*
LEFT JOIN
Toma todos los REGISTROS de la tabla izquierda y solo los coincidentes de la tabla derecha
*/
SELECT
	t.title as Libro,
	t.price as Precio,
	p.pub_name as Editorial
FROM publishers as p			-- alias de la tabla titles, para acortar la sintaxis
LEFT JOIN titles as t on p.pub_id = t.pub_id
ORDER BY Editorial, Libro
--23 resultados

/*
RIGHT JOIN
Toma todos los REGISTROS de la tabla derecha y solo los coincidentes de la tabla izquierda
*/
SELECT
	t.title as Libro,
	t.price as Precio,
	p.pub_name as Editorial
FROM titles as t			-- alias de la tabla titles, para acortar la sintaxis
RIGHT JOIN publishers as p on p.pub_id = t.pub_id
ORDER BY Editorial, Libro
--23 resultados


/*
FULL JOIN
Combinacion de LEFT y RIGHT JOIN. Traigo todos los registros de ambas tablas, coincidan o no.
En caso de que haya campos que no tengan coincidencias, quedan como NULL en la tabla resultado.
*/

SELECT t.title as Libro, p.pub_name as Editorial
FROM titles t
FULL JOIN publishers p ON p.pub_id = t.pub_id
ORDER BY Libro;

-------------------------------------------------------------------+

/*
CASE
*/


SELECT
e.lname AS Empleado,
j.job_desc as Puesto,
e.job_lvl as NivelEmpleado,
j.min_lvl as NivelMininimo,
j.max_lvl as NivelMaximo
FROM employee AS e RIGHT JOIN jobs as j on j.job_id=e.job_id
ORDER BY Empleado


/*CASE - END : Campo Virtual*/

SELECT
e.lname as Empleado,
j.job_desc as Puesto,
e.job_lvl as NivelEmpleado,
j.min_lvl as NivelMininimo,
j.max_lvl as NivelMaximo,
CASE WHEN e.job_lvl > j.min_lvl
	THEN 'Supero Minimo'
	ELSE 'No Supero'
END AS Calificacion

from Employee as e RIGHT JOIN jobs as j on j.job_id = e.job_id
ORDER BY Empleado
--44 rows

/*IIF : Inline IF*/
SELECT
e.lname as Empleado,
j.job_desc as Puesto,
e.job_lvl as NivelEmpleado,
j.min_lvl as NivelMininimo,
j.max_lvl as NivelMaximo,
IIF (e.job_lvl > j.min_lvl, 'Supero Minimo', 'No Supero') AS Calificacion

from Employee as e RIGHT JOIN jobs as j on j.job_id = e.job_id
ORDER BY Empleado
--44 rows

/*El IIF solo existe desde la version 2012, de lo contrario deberemos utilizar CASE*/

/* CROSS JOIN
   Producto Cartesiano, el resultado de todas las combinaciones.
   Aunque no tiene mucho sentido.
*/
select t.title as Libro, p.pub_name as Editorial
FROM titles t
CROSS JOIN publishers p
ORDER BY Libro
--144 rows

--es lo mismo que
select t.title as Libro, p.pub_name as Editorial
FROM titles t, publishers p
ORDER BY Libro
--que tambien es un producto cartesiano
--144 rows

--Ejemplo

select
t.title as Libro, p.pub_name as Editorial
FROM titles t inner join publishers p on p.pub_id = t.pub_id
ORDER BY Libro
--18 rows

select
t.title as Libro, p.pub_name as Editorial
FROM titles t, publishers p
WHERE p.pub_id = t.pub_id
ORDER BY Libro
--18 rows


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