set sql_safe_updates=off;

select * from clientes;

create table clientes select primernombre,
apellido from contacto;

rollback;
commit;


start transaction;
update clientes set apellido='Fernandez';
rollback;


delete from persona
where apellido in (select apellido from clientes);

update comercio.articulos set
precio=precio*1.2 where
((marca='Levis' and stock < 30) and
color in ('azul','verde')) or nombre='Remera A';
