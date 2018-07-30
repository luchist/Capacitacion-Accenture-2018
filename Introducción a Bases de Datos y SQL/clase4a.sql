/* DDL vs DML */

/* 
	DML : Data Manipulation Language
	Select - Update - Delete - Insert

	DDL : Data Definition Language
	Create Table - Alter Table - Drop Table
	Grant - Revoke (Permisos)

*/

/*
	Restricciones  : Constraints

	En Columnas.-
	Obligatorias   : Not NULL
	Valores Unicos : No Duplicates

*/


--literales concatenados, alias  
SELECT au_lname + ', ' + au_fname AS ApellydoYNpmbre FROM authors


--alias de columna
SELECT au_lname AS Apellido, au_fname AS Nombre FROM authors
WHERE au_fname='Ann'
ORDER BY au_lname--Apellido


--BETWEEN
select * from sales
where ord_date BETWEEN '19930524' AND '19930529'--formato ISO style

--IN : Operador de Inclusion (or implicito)
SELECT pub_name, country
FROM publishers
WHERE country IN ('USA','France')
--era lo mismo que hacer
--WHERE country='USA' or country='France'

--NOT IN
SELECT pub_name, country
FROM publishers
WHERE country NOT IN ('USA','France')


--LIKE
SELECT *
FROM authors
WHERE (au_lname LIKE '%B%')

SELECT * FROM authors, titleauthor;


---------
SELECT TYPE, pub_id,SUM(ytd_sales)
from titles
GROUP BY TYPE, pub_id

SELECT TYPE, pub_id, SUM(ytd_sales)
from titles
Group by TYPE, pub_id
HAVING pub_id = '0877'
ORDER BY TYPE

select count(*) as 'cantidad de libros' from titles;

--NULL, IS NULL, IS NOT NULL
select pub_name, city, state, country
from publishers
where (state is null)

--COUNT
select * from titles
select count(price) as cantidadDePreciosNoNulos from titles
select count(*) as cantidadDeRegistros from titles

--GROUP BY
select * from titles order by type;

select titles.title
type,
COUNT(*) AS CantPorCategoria
FROM titles
GROUP BY type

SELECT stor_id, title_id, SUM(qty) AS Cantidad
from sales
GROUP BY stor_id, title_id
/*HAVING SUM(qty) > 10*/
ORDER BY stor_id, title_id
