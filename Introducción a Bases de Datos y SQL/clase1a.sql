create database cursos;

use cursos;


insert into alumno (nombre)
value ('Pauilinia');

select * from alumno;

create table persona (
documento int primary key,
nombre varchar(25) not null,
segundonombre varchar(25),
apellido varchar(25) not null,
sexo char(1) default 'X'
);


insert into persona values
(4, 'angel', null ,'yokohama', 'M'),
(5, 'javier', null ,'yokohama', 'M');

select * from persona;

create table cursante select documento,
nombre, apellido from persona;

select * from cursante;

create table alumnos (dni int,
nombre varchar(25), apellido varchar(25));

insert into alumnos (dni, nombre)
select documento,nombre from cursante;

select * from alumnos;