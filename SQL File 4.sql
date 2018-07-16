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
