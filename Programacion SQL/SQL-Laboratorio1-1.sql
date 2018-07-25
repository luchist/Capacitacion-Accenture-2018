
/*Laboratorio SQL Server Management Studio*/


/*
 * PUBS - SELECT / WHERE
 */

use pubs;

/*
 * Mostrar las categor�as de libros que publica la editorial '0877'
 */
select * from titles
where pub_id = 0877;                

/*
 * Mostrar los t�tulos de los libros de psicolog�a que cuestan m�s de $20
 */
select * from titles
where type = 'psychology' and price > 20;

/*
 * Mostrar los libros de psicolog�a con precio entre $10 y $20
 */
select * from titles
where (type = 'psychology') and (price between 10 and 20);

/*
 * Mostrar los libros de negocios con precio mayor a $15 y los libros de psicolog�a con precio mayor a $20
 */
select * from titles
where (type = 'business') and (price > 15)
union
select * from titles
where (type = 'psychology') and (price > 20);

/* otra forma */
select * from titles
where (type = 'business' and price > 15) or (type = 'psychology' and price > 20);

/*
 * Mostrar los t�tulos de los libros, junto con su precio y su precio incrementado en un 15%
 */
select title, price, round(price*1.15,3,1) as 'precio aumentado en 15%' from titles;
