/* Laboratorio SQL Server Management Studio */
/* LABORATORIO 3 */

/*
 * PUBS - JOIN
 */

 use pubs;

/*
 * 1) Mostrar los códigos de librerías que compraron libros de psicología
 */

SELECT distinct stor_id FROM titles 
LEFT JOIN sales 
ON titles.title_id = sales.title_id
WHERE type = 'psychology';

/*
 * 2) Mostrar los nombres y apellidos de autores que escribieron libros de cocina
 */

/*todos los libros de cocina, joineados con la tabla titleauthor*/
select * from titles
left join titleauthor
on titles.title_id = titleauthor.title_id
where type like '%cook%';


/*selecciono los author_id*/
select au_id from titles
left join titleauthor
on titles.title_id = titleauthor.title_id
where type like '%cook%';

/*hago join con authors, tengo 3 tablas*/
select * from titles
left join titleauthor
on titles.title_id = titleauthor.title_id
left join authors
on titleauthor.au_id = authors.au_id
where type like '%cook%';

/*selecciono los nombres y apellidos de los autores*/
select au_fname as 'Nombre del Autor', au_lname as 'Apellido del Autor', title as 'Libro', type as 'Tipo' from titles
left join titleauthor
on titles.title_id = titleauthor.title_id
left join authors
on titleauthor.au_id = authors.au_id
where type like '%cook%';


/*
 * 3) Mostrar los nombres y apellidos de autores, y si hay editoriales
 * en la misma ciudad donde ellos viven, mostrar los nombres de editoriales
 */


/*
 * UNION
 */

/*
 * 11) Mostrar los títulos de los libros que fueron escritos o publicados en alguna localidad que comience con "wa"
 */
select t.title, p.city pub_city, NULL wrt_city
from titles as t
INNER JOIN	publishers p
on t.pub_id = p.pub_id and p.city
LIKE '%WA%'
UNION
select t.title, NULL pub_city, a.city wrt_city
from titles t
INNER JOIN titleauthor ta on t.title_id = ta.title_id
INNER JOIN authors a on a.au_id = a.au_id AND a.city
LIKE '%WA%';