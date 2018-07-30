
use pubs;

-- 1) Mostrar los códigos de librerías que compraron libros de psicología.
SELECT * FROM sales
INNER JOIN titles
ON sales.title_id = titles.title_id
WHERE titles.type = 'PSYCHOLOGY'

-- 2) Mostrar los nombres y apellidos de autores que escribieron libros de cocina.

SELECT authors.au_fname as 'Nombre del Autor', authors.au_lname as 'Apellido del Autor',
	   titles.title as 'Titulo del Libro', titles.type as 'Tipo del Libro'
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles on titleauthor.title_id = titles.title_id
group by titles.title, titles.type, authors.au_fname, authors.au_lname
having titles.type = 'TRAD_COOK' or titles.type = 'mod_cook'

select * from authors as a
left join titleauthor as t
on a.au_id = t.au_id
order by t.au_id

-- consulta join doble

select * from titleauthor

-- 3) Mostrar la cantidad de libros vendidos de cada autor, junto con el código de autor.
-- Mi solucion
SELECT titleauthor.title_id as 'ID del Libro', sales.qty as 'Cantidad Vendida'
     , authors.au_fname as 'Nombre Autor', authors.au_lname as 'Apellido Autor'
	 , authors.au_id as 'Codigo Autor'
FROM sales
JOIN titleauthor on titleauthor.title_id = sales.title_id
JOIN authors on authors.au_id = titleauthor.au_id


--Respuesta de la profe
--El enunciado no es muy claro
SELECT t.au_id as 'ID del Autor', SUM(qty) as 'Cantidad Vendida'
FROM sales as s
INNER JOIN titleauthor t on s.title_id = t.title_id
group by t.au_id

-- 4) Mostrar las ciudades que aparecen en toda la base de datos, ordenadas en forma descendente.

select city from authors
union
select city from stores
union
select city from publishers;





