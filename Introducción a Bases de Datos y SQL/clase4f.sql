/*
SCRIPTS
*/


--Variables
declare @variable varchar(10) =10 --seteo y declaro en la misma linea
--set @variable = 10
select @variable as 'FLEXBOX FROGGY MI UNICO HEROE EN ESTE LIO'
GO
-- el GO separa lotes de instrucciones (batch)

USE AdventureWorks2014
declare @nombre varchar(255)
select @nombre = name from Production.Product where ProductID = 332
select @nombre as ValorEncontrao


--uso de variables con un select

USE pubs
declare @promedioprecio as money              -- el promedio queda almacenado en la variable
select @promedioprecio = avg(ISNULL(Price,0)) -- los campos null los pongo en 0
from titles

select @promedioprecio

select * from titles
	where price < @promedioprecio


/*
STORE PROCEDURE : Procedimiento Almacenado
*/

--CREAR PROCEDURE

USE PUBS
GO

CREATE PROC [dbo].[RecuperarPromedioVentas]		--crea un procedimiento RecuperarPromediosVentas
AS
SELECT 
V.stor_id AS ID,
S.stor_name AS Sucursal,
AVG(ISNULL(QTY,0)) AS PromedioVentas
--lo pone en 0 si es null al promedio de las cantidades vendidas por sucursal

FROM Sales V INNER JOIN
          Stores S ON S.stor_id = V.stor_id
GROUP BY V.stor_id, S.stor_name
GO

USE pubs
GO
EXEC RecuperarPromedioVentas		-- ejecuta el procedimiento almacenado

--MODIFICAR PROCEDURE


ALTER PROC [dbo].[RecuperarPromedioVentas]		--crea un procedimiento RecuperarPromediosVentas
@FechaInicio DateTime,
@FechaFin DateTime
AS
SELECT 
V.stor_id AS ID,
S.stor_name AS Sucursal,
AVG(ISNULL(QTY,0)) AS PromedioVentas
--lo pone en 0 si es null al promedio de las cantidades vendidas por sucursal

FROM Sales V INNER JOIN
          Stores S ON S.stor_id = V.stor_id
WHERE ord_date BETWEEN @FechaInicio AND @FechaFin
GROUP BY V.stor_id, S.stor_name
GO

EXEC RecuperarPromedioVentas '19940101', '19941231'		-- ejecuta el procedimiento almacenado, ahora espera @FechaInicio y @FechaFin