#CLASE 2
# 1.Funciones de agregacion / agrupacion

USE PRUEBA;
select idordenventa, subtotal
from headerventas order by subtotal desc;

select idordenventa, max(subtotal)
from headerventas;#el maximo no corresponde con el ID registro!!!
#necesito usar GROUP BY


select max(subtotal), idordenventa
from headerventas where idordenventa=51131
group by idordenventa;#me permite agrupar por un campo

# where - group by. El where se hace sobre datos sin agrupar.
# group by - having. El having se hace sobre los datos agrupados

#Maximo Minimo Promedio Suma Count
select min(subtotal)
from headerventas;

select max(subtotal)
from headerventas;

select avg(subtotal)
from headerventas;

select sum(subtotal)
from headerventas;

select count(distinct idcontacto)#sentencia distinct para contactos unicos de la tabla
from headerventas;
#distinc + campo (cualquier campo)

#quiero el total de la suma de ventas a un cliente en particular
select * from headerventas where
idcontacto=378;
#Me trae toda la tabla de ventas particular a ese cliente

#Ahora hago la suma
select sum(subtotal) from headerventas where
idcontacto=378;

#Si quiero ademas la cantidad de subtotales
select count(subtotal), sum(subtotal) from headerventas where
idcontacto=378;


select idcontacto, count(distinct fechaventa),
sum(subtotal) from headerventas
group by idcontacto;#NO PUEDO AGRUPAR X UN CAMPO QUE NO ESTE EN LA LISTA!
#necesito un campo para cada group by + los campos para mis funciones

#
# JOIN
#

