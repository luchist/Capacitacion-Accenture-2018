USE [pubs]
GO
CREATE TABLE NuevaSucursal(
	stor_id char(4) NOT NULL,
	stor_name varchar(40) NULL,
	stor_address varchar(40) NULL,
	city varchar(20) NULL,
	state char(2) NULL,
	zip char(5) NULL)
GO
--me crea la tabla nueva sucursal, por ahora vacia

INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('7890', 'Sucursal Rosario', 'Calle 1', 'Rosario', 'SF', '1000')
INSERT NuevaSucursal (stor_id, stor_name, stor_address, city, state, zip) VALUES ('1234', 'Sucursal CABA', 'Calle 2', 'CABA', 'BA', '2000')

select * from NuevaSucursal; --tenemos las dos sucursales nuevas

select * from stores; -- la tabla stores no cambio


--uno los dos resultados en una sola tabla
select * from NuevaSucursal --tenemos las dos sucursales nuevas
union
select * from stores;


-- los inserto en la tabla stores
-- isnercion de las novedades
insert stores
select stor_id, stor_name, stor_address, city,state, zip from NuevaSucursal

select * from stores;
--Esto se conoce como tablas permanentes.

-- Select Into
USE pubs
SELECT title_id as Codigo, title AS Libro,
       price AS PrecioNeto,
	   (price * 1.21) AS PrecioConIva
INTO #ListaPrecios						--las tablas que comienzan con # son tablas temporales locales
FROM titles
--Ver tabla creada en TempDB, temporary tables
-- Esto solo vive mientras la conexion local este viva

select * from #ListaPrecios
-- Al cerrar la query, la tabla se elimina automaticamente de la base de datos
-- Muy util para resultados intermedios, cuando no tenemos permisos para modificar la base de datos, etc

-- Si queremos que sea global usamos deos numerales ##
-- La diferencia entre local y global es que a la global la ven todas las conexiones


/*
Insercion de Datos Parciales
*/


/*
Eliminacion de Datos
*/

--DELETE vs TRUNCATE

--Delete asigna los campos con un flag para ser desasignados
--Truncate desasigna la tabla completa

-- Eliminacion basada en otras tablas


--Eliminar el vinculo de titleauthor para los libros de fecha 09-06-1991
delete from titleauthor
from titles as t
inner join titleauthor as ta
on t.title_id=ta.title_id
where pubdate='19910609'

select * from titles as t
inner join titleauthor as ta
on t.title_id = ta.title_id
where pubdate='19910609'
--para chequear si realmente los elimino, primero puedo hacer un select con la misma
--condicion, despues elimino y vuelvo a chequer

/*
ACTUALIZACION DE FILAS BASADO EN DATOS DE LA TABLA
*/

select * from titles;

use pubs;
update titles
	set price = (price * 1.1) --SET especifica los datos nuevos
--puedo usar WHERE para restriingir los datos que quiero actualizar

--Actualizar el precio de los libros de la editorial CA

update titles
SET price = price + 2
FROM titles AS t
INNER JOIN publishers AS p
ON t.pub_id = p.pub_id
WHERE p.state = 'CA'

--chequeo
select *
FROM titles AS t
INNER JOIN publishers AS p
ON t.pub_id = p.pub_id
WHERE p.state = 'CA'


--Actualiza el precio de los lobros de la editorial del pais 'USA'
--Update con SUBCONSULTA
UPDATE titles
SET price = price + 2
WHERE pub_id
IN
	(
	 SELECT pub_id
	 FROM publishers
	 WHERE country='USA'
	)
