#
# INTEGRIDAD REFERENCIAL
#

#creo 3 tablas

create table empleado(
	dni int,
    nombre varchar(25),
    apellido varchar(25),
    primary key(dni)
);

insert into empleado values
	(23411546, 'ariel', 'mercado f'),
    (24875929, 'maria', 'baudino');

create table familiar(
	cuil varchar(13),
    dni_familiar int,
    nombre varchar(25),
    apellido varchar(25),
    parentesco varchar(1)
);

insert into familiar values
	('20-23411546-5', 44361642, 'agustin', 'mercado f', '8'),
    ('27-24875928-2', 46027196, 'facundo', 'togneri', '2');

create table parentesco(
	codigo varchar(1),
    descripcion varchar(10)
);

insert into parentesco values ('2', 'hijo');


select * from empleado join familiar on
dni=substring(cuil,4,8); #pido el dni del cuil usando substring para poder hacer el join

#NO es necesario que los campos sean del mismo tipo. Solo es necesario que tengan la
#misma informacion

# Que paso? tengo muchos datos inconsistentes,.
# Tengo familiares sin empleados asociados, parentescos que no estan registrados, etc.

#NECESITO ESTABLECER REGLAS DE INTEGRIDAD REFERENCIAL
#Antes de esto, voy a eliminar la tabla familiar y volver a crearla modificando el campo cuil

set sql_safe_updates=off;
delete from parentesco;

alter table familiar add
foreign key (dni_empleado) references
empleado(codigo);

drop table familiar;

create table familiar(
	dni_empleado int, #cambio el cuil x esto
    dni_familiar int,
    nombre varchar(25),
    apellido varchar(25),
    parentesco varchar(1),
    
    #clave foranea que va a estar definida por el campo dni_empleado y apunta
    foreign key(dni_empleado) references #al campo dni de la tabla empleado; tambien le defino que borre de la tabla
    empleado(dni) on delete cascade on update #empleados en cascadas, y tambien on update cuando actualizo desde la tabla empleados
    cascade,
    
    foreign key(parentesco) references
    parentesco(codigo) on update
    cascade
    
);

#ME DA ERROR!!  Porque codigo no es Primary Key en la tabla parentesco!
#Modifico la tabla para que sea PK

drop table parentesco;

create table parentesco(
	codigo varchar(1),
    descripcion varchar(10),
    primary key(codigo)
);


#Que gano con esto? Ahora para dar de alta a un familiar, necesito si o si
# un empleado valido y un codigo de parentesco valido.
# Gano CONSISTENCIA.

#Doy de alta empleados

