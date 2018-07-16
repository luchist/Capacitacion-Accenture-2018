
create table cliente (
nombre varchar(25) not null,
apellido varchar(25) not null,
cuit int not null,
direccion varchar(50),
primary key(cuit));

insert into cliente values
('alejo','smart',0001,'direcc'),
('claudia','stuart',0002,'siempreviva 2500'),
('david','gilmort',0003,'capdevila 5600'),
('karen','gillian',0004,'asdasd'),
('zoe','zaldana',0005,'av libertadores 52'),
('silvio','zoldan',0006,'av libertadores 52'),
('jaime','pols',0007,'av libertadores 53'),
('zeke','perez',0008,'av libertadores 56'),
('walter','zaldana',0009,'av libertadores 89'),
('yamil','gomez',0010,'av libertadores 55');

select * from cliente;

select * from articulos where precio >= 100;

select * from articulos where precio >= 20 and precio <= 40;

select * from articulos where precio between 40 and 60;

select * from articulos where precio=20 and stock > 30;

select * from articulos where precio=12 or precio=20 or precio=30;

select * from articulos where precio in (12,20,30);

select * from articulos where precio not in (12,20,30);

select * from articulos order by precio;

select nombre, precio, stock,
(precio) * 1.21 as 'iva'
from articulos;

select nombre, precio, stock,
3 as 'cantidad de cuotas',
((precio * 1.05) / 3) as 'valor de cuota'
from articulos;