/* Laboratorio SQL Server Management Studio */
/* LABORATORIO 2 */

/*
 * PUBS - LIKE
 */

use pubs;

/*
 * 1) Mostrar los títulos de los libros que tengan cualquier combinación de 'computer'
 */
select title from titles
where title like '%computer%';

/*
 * 2) Mostrar los autores que su nombre empieza con la letra N.
 */
select * from authors
where au_fname like 'N%';


/*
 * 3) Mostrar los autores que la segunda letra de su nombre es una A.
 */
select * from authors
where au_fname like '_a%';


/*
 * 4) Mostrar todos los autores con el nombre compuesto por algún número
 */
select * from authors
where (au_fname like '%[0-9]%') or (au_lname like '%[0-9]%');

/*
 * 5) Mostrar los códigos de libros cuyo título tenga C o c como primer carácter
 * cualquier otro como segundo carácter, ni D ni d ni F ni g como tercer carácter,
 * cualquier entre J y R o entre S y W como cuarto carácter y el resto sin restricciones
 */
select * from titles
where title like 'c_[^d-f][j-w]%'; /*para ver*/

select title_id from titles
where title like 'c_[^d-f][j-w]%'; /*solucion*/


/*
 * PUBS - DISTINCT
 */

/*
 * 6) Mostrar todas las categorías distintas que existen
 */
select distinct type from titles;


/*
 * 7) Mostrar todos los códigos distintos de tiendas que hayan vendido libros.
 */
select distinct stor_id from sales;


/*
 * PUBS - ORDER BY
 */

/*
 * 8) Mostrar todas las fechas de facturas (pedidos) con cantidad mayor a 10
 * libros ordenado por número de factura.
 */

select * from sales
where qty > 10
order by ord_num asc; /*para ver resultados*/

select ord_date from sales
where qty > 10
order by ord_num asc; /*solucion*/

/*
 * 9) Mostrar todas las fechas de facturas (pedidos) con cantidad mayor a 10
 * libros ordenado por cantidad vendida en forma descendente.
 */
select * from sales
where qty > 10
order by qty desc; /*para ver resultados*/

select ord_date from sales
where qty > 10
order by qty desc; /*solucion*/

/*
 * 10) Mostrar todos los libros existentes ordenados por categoría
 * en forma ascendente y precio en forma descendente
 */
select * from titles
order by type asc, price desc; /*para ver resultados*/

/*
 * PUBS - GROUP BY
 */

/* 
 * 11) Mostrar la fecha más reciente de venta
 */
select MAX(ord_date) from sales;

/* 
 * 12) Mostrar el precio más barato de los libros
 */
select MIN(price) from titles;


/* 
 * 13) Mostrar la cantidad de libros de cada categoría, junto con la categoría
 */
select type as 'Categoria', COUNT(type) as 'Cantidad' from titles
group by type;


/* 
 * 14) Mostrar la cantidad de libros vendidos por cada tienda
 */
select stor_id, SUM(qty) as 'Cantidad de libros vendidos' from sales
group by stor_id;

/* para chequear */
select * from sales
order by stor_id;


/* 
 * 15) Mostrar la cantidad de libros vendidos por cada tienda y cada libro
 */
select stor_id, title_id,  SUM(qty) as 'Cantidad de libros vendidos' from sales
group by stor_id, title_id;


/* 
 * 16) Mostrar la cantidad de facturas distintas (órdenes) por cada libro
 */
select distinct ord_num, title_id from sales
order by ord_num;

/* 
 * 17) Mostrar la cantidad de categorías disponibles
 */
select COUNT(distinct type) as 'Categorias Disponibles' from titles;

select * from titles; /* check */

/* 
 * 18) Mostrar el precio promedio actual de los libros,
 * el precio promedio de los precios incrementado en un 15% y el precio promedio de los precios distintos
 */
select AVG(price) as 'Precio Promedio de los Libros' ,
(AVG(price) * 1.15) as 'Precio Promedio Incrementado en 15%',
(AVG(distinct price)) as 'Precio promedio de los precios distintos' from titles;


/* 
 * 19) Mostrar el precio más caro de todos los libros
 */
select MAX(price) as 'Precio mas Caro de todos' from titles;

/*
 * PUBS - HAVING
 */

/*
 * 20) Mostrar las categorías de libros que tienen dos o más libros que cuestan
 * menos de $15 pero de diferente precio
 */
select * from titles;

/*cuantos libros tiene cada categoria?*/
select type, COUNT(type) as 'Cantidad' from titles
group by type;

/*???*/
select type, COUNT(*)
from titles
group by type
having COUNT(*) > 3

/*Ejemplo: Liste la cantidad de ventas por grupo, cuyo pub_id sea igual a 0877*/
select type, pub_id, SUM(ytd_sales) from titles
group by type, pub_id
having pub_id = '0877'

/*entonces:*/
select type, COUNT(type)
from titles
where price < 15		/*precio es menor a 15*/
group by type
having COUNT(*) >= 2;	/*tienen dos o mas libros*/

/*
 * 21) Mostrar la cantidad de facturas por libro que vendieron más de 20 libros
 */

/*
select ord_num as 'Codigo de Venta ', COUNT(ord_num) as 'Cantidad de Facturas', SUM(qty) as 'Cantidad Vendida', title_id as 'ID del Libro'
from sales			
group by title_id, ord_num, qty
having SUM(qty) > 20;	/*cantidad vendida > 20*/
*/

select title_id as 'ID del Libro', COUNT(distinct ord_num) as 'Cantidad de Facturas'
from sales
where qty > 20 /*despues del from*/
group by title_id
/*having se hace despues del group by*/

select * from sales order by title_id; /*check*/

/*
 * 22) Mostrar la cantidad de facturas por tienda que hayan vendido más de 20 libros
 */

select stor_id as 'ID de la Tienda', COUNT(distinct ord_num) as 'Cantidad de Facturas'
from sales
where qty > 20 /*despues del from*/
group by stor_id
/*having se hace despues del group by*/

select * from sales order by title_id; /*check*/

/*
 * 23) Mostrar la cantidad promedio vendida por tienda que hayan vendido más de 20 libros
 */
select stor_id as 'ID de la Tienda', AVG(qty) as 'Cantidad Promedio Vendida por Tienda'
from sales
group by stor_id, qty
having qty > 20

/*
 * 24) Mostrar todas las categorías existentes junto con la cantidad de libros
 * y el precio promedio por cada una de aquellos libros que cuestan más de $7 y el precio promedio es mayor a $15.-
 */
 select type as 'Categoria', SUM(ytd_sales) as 'Cant Ventas', AVG(price) as 'Precio Promedio'
 from titles
 group by type, price
 having (price > 7) and (AVG(price) > 15)

 /*
  * NULL
  */

/*
 * 25) Mostrar los títulos de los libros de negocio que no tienen decidido el precio
 */

select * from titles
where type = 'business' and price is null;


/*
 * 26) Mostrar los títulos y los precios sumados a una base de $10.
 * Considerar los libros que no tienen definido el precio como 0 (cero).
 */
select title, price + 10 as 'Precio + 10' from titles
where price is not null
union
/*los que tienen precio NULL*/
select title, 10 as 'Precio + 10' from titles
where price is null;

/*
 * 26) Mostrar los títulos de los libros que no tienen definida la categoría.
 */
select title from titles
where type = 'UNDECIDED';
