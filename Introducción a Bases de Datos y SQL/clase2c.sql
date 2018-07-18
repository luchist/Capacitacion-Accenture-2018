#
# VISTAS
#

#creo la vista
create view tarjetas as
select idcontacto, primernombre, apellido, numerotarjeta,
mesvencimiento, aniovencimiento from
contacto c left join contactotarjetacredito ctc
on c.idcontacto = ctc.idcontacto
left join tarjetacredito tc #el join con la tercera tabla
on ctc.idtarjetacredito = tc.idtarjetacredito;

select * from tarjetas where primernombre like '%av%';

#vistas tienen comportamiento parecido a tablas. Puedo agregar campos.
#no puedo hacer operaciones de actualizacion sobre la vista
#tengo que modificar la tabla.
#las vistas son dinamicas, cambian cuando cambian las tablas.

#Con las vistas solo puedo ver datos.
#En la practica se usan vistas en ves de dar permiso para entrar a bases de datos.

#borro la vista
drop view tarjetas;

#vuelvo a crear
create view tarjetas as
select idcontacto, primernombre, apellido, numerotarjeta,
mesvencimiento, aniovencimiento from
contacto c left join contactotarjetacredito ctc
on c.idcontacto = ctc.idcontacto
left join tarjetacredito tc #el join con la tercera tabla
on ctc.idtarjetacredito = tc.idtarjetacredito;
#el campo idcontacto existe en las 3 tablas!! hay que aclarar

create view tarjetas as
select c.idcontacto, primernombre, apellido, numerotarjeta, #aclaro de que tabla
mesvencimiento, aniovencimiento from
contacto c left join contactotarjetacredito ctc
on c.idcontacto = ctc.idcontacto
left join tarjetacredito tc #el join con la tercera tabla
on ctc.idtarjetacredito = tc.idtarjetacredito;

select * from tarjetas;

#Consultas con vistas y join
#ventas totales por cliente y por tarjeta de credito, y los datos de la tarjeta

select idcontacto, idtarjetacredito, sum(subtotal+impuesto+flete)
as total from headerventas
group by idcontacto,idtarjetacredito; #puede haber contactos con mas de una tarjeta

#aca tengo el idcontaco, idtarjeta y total de las ventas; necesito joinear para agregar el nombre y apellido
# del contacto, y los datos de la tarjeta de credito.
#seria enroscadisimo joinear todo esto asi, creamos vistas

create view vista2 as 
select idcontacto, idtarjetacredito, sum(subtotal+impuesto+flete)
as total from headerventas
group by idcontacto,idtarjetacredito; #mismo que el anterior

select * from vista2;
select t.*, v.* from tarjetas t
join vista2 v on t.idcontacto = v.idcontacto;

#idcontacto aparece 2 veces repetido, se puede hacer una posible mejora

select * from vista2;
select t.*, v.total from tarjetas t #no me interesa vista2.idcontacto, no lo repite
join vista2 v on t.idcontacto = v.idcontacto;


