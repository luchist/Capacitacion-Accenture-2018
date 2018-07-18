#
# 2- JOIN
#

#Para joinear puedo usar cualquier campo que se comparta en las dos tablas.
#No es necesario que las dos tablas compartan claves (PKs).
#Las claves (PKs)  SI son necesarias para garantizar integridad referencial.
#(Que pasa si yo borro una entrada? Quedan datos sin referencia. Por eso necesito PKs)


#Creo algunas tablas
create table tabla1 (codigo int, 
nombre varchar(10));

insert into tabla1 values(1,'a'),(2,'g'),(3,'h');

create table tabla2 (id int, 
descripcion varchar(10));

insert into tabla2 values(2,'dos'),(3,'tres'),(8,'ocho');


#INNER JOIN - 
select codigo, nombre, descripcion from #from tabla1 no quiere decir que los 3 campos sean de tabla1. Pongo los campos que necesito, que tienen que existir en las dos tablas
tabla1 t1 join tabla2 t2 on t1.codigo = t2.id; #tabla1 t1 es un alias
#hago el join, traeme los registros en donde el campo codgio de la tabla 1 sea igual al campo id de la tabla2

#usando notacion where, siguiendo el estandar ANSI 97
select codigo, nombre, descripcion from
tabla1 t1 join tabla2 t2 where t1.codigo = t2.id;

#LEFT JOIN -
select codigo, nombre, descripcion from #
tabla1 t1 left join tabla2 t2 on t1.codigo = t2.id;
# me va a traer todos los registros de la tabla izquierda, mas los que coincidan con el criterio

#RIGHT JOIN -
select codigo, nombre, descripcion from #
tabla1 t1 right join tabla2 t2 on t1.codigo = t2.id;
# me va a traer todos los registros de la tabla derecha, mas los que coincidan con el criterio

#CROSS JOIN -
select codigo, nombre, id, descripcion from
tabla1 t1 cross join tabla2 t2;
#combinatoria de todos los valores posibles

#FULL JOIN - union en mysql
select codigo, nombre from tabla1 t1
union
select id, descripcion from tabla2 t2;

#Si no tengo la misma cantidad de columnas en las dos tiraria error.
#Se puede hacer algo como esto
select codigo, nombre, null from tabla1 t1 #uso null para que me queden 3 columnas en ambas
union
select id, descripcion,precio from tabla2 t2; #tengo un campo precio, osea tengo un campo de mas


# Consultas avanzadas
# Pido los datos de clientes
# tres tablas, contacto, tarjetacredito, contactotrajetacredito

select primernombre, apellido, numerotarjeta,
mesvencimiento, aniovencimiento from
contacto c left join contactotarjetacredito ctc
on c.idcontacto = ctc.idcontacto
left join tarjetacredito tc #el join con la tercera tabla
on ctc.idtarjetacredito = tc.idtarjetacredito;

#HAY QUE USAR LEFT JOIN EN LOS DOS O ME IGNORA LOS CLIENTES QUE NO TIENEN TARJETA DE CREDITO
#si uso un solo left join, despues usa el join comun y te vuelve a ignorar.

## con un patron

select primernombre, apellido, numerotarjeta,
mesvencimiento, aniovencimiento from
contacto c left join contactotarjetacredito ctc
on c.idcontacto = ctc.idcontacto
left join tarjetacredito tc #el join con la tercera tabla
on ctc.idtarjetacredito = tc.idtarjetacredito where primernombre like '%av%';
