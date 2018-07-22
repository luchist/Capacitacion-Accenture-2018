create table facturas (
letra  char(1) not null,
numero int not null,
fecha date not null,
monto double not null,
primary key (letra, numero));

insert into facturas values
('a',0001,curdate(),500),
('b',0002,curdate(),55500),
('a',0003,curdate(),99900),
('b',0004,curdate(),900),
('c',0005,curdate(),40);

select * from facturas;

drop table articulos;

create table articulos (
codigo int auto_increment not null,
nombre varchar(50) not null,
precio double not null,
stock int not null,
primary key(codigo));

insert into articulos values
(0001,'jorgito',20,5000),
(0002,'guaymallen',10,10000),
(0003,'havanna',60,3000),
(0004,'asdasd',100,99999),
(0005,'capitan del espacio',12,200),
(0006,'fantoche',20,3000),
(0007,'comun',200,2000),
(0008,'blancoynegro',25,2000),
(0009,'maicena',16,500),
(0010,'inju',8,100);

select * from articulos;

alter table articulos add column precio_con_iva decimal(7,2);

drop database comercio;