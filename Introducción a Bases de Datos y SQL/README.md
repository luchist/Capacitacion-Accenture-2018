[![License](https://img.shields.io/badge/licence-GPL--3.0-blue.svg)](https://raw.githubusercontent.com/luchist/Capacitacion-Accenture-2018/master/LICENSE)
[![HitCount](http://hits.dwyl.io/luchist/Capacitacion-Accenture-2018.svg)](http://hits.dwyl.io/luchist/Capacitacion-Accenture-2018)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/luchist/Capacitacion-Accenture-2018/issues)
[![Website shields.io](https://img.shields.io/website-up-down-green-red/https/luchist.github.io/Capacitacion-Accenture-2018.svg)](https://luchist.github.io/Capacitacion-Accenture-2018/)
[![GitHub followers](https://img.shields.io/github/followers/luchist.svg?style=social&label=Follow&maxAge=2592000)](https://github.com/luchist?tab=followers)



# Introduccion a Bases de Datos y SQL

## `Recursos`


> * [XAMPP (https://www.apachefriends.org/es/index.html)](https://www.apachefriends.org/es/index.html)
> * [MySQL Workbench (https://www.mysql.com/products/workbench/)](https://www.mysql.com/products/workbench/)

## `Clases`

## CLASE 2
## Funciones de agregacion / agrupacion

```SQL
USE PRUEBA;
select idordenventa, subtotal
from headerventas order by subtotal desc;

select idordenventa, max(subtotal)
from headerventas;        #el maximo no corresponde con el ID registro!!!
#necesito usar GROUP BY


select max(subtotal), idordenventa
from headerventas where idordenventa=51131
group by idordenventa;    #me permite agrupar por un campo
```

`where + group by`: El where se hace sobre datos sin agrupar.

`group by + having`:  El having se hace sobre los datos agrupados.

---

### Maximo, Minimo, Promedio, Suma, Count
```SQL
select min(subtotal)
from headerventas;

select max(subtotal)
from headerventas;

select avg(subtotal)
from headerventas;

select sum(subtotal)
from headerventas;

select count(distinct idcontacto)     #sentencia distinct para contactos unicos de la tabla
from headerventas;
# distinc + campo (cualquier campo)
```

Quiero el total de la suma de ventas a un cliente en particular:
```SQL
select * from headerventas where
idcontacto=378;
```
Me trae toda la tabla de ventas particular a ese cliente.

---

Ahora hago la suma:
```SQL
select sum(subtotal) from headerventas where
idcontacto=378;
```

Si quiero ademas la cantidad de subtotales:
```SQL
select count(subtotal), sum(subtotal) from headerventas where
idcontacto=378;
```

```SQL
select idcontacto, count(distinct fechaventa),
sum(subtotal) from headerventas
group by idcontacto;
```
NO PUEDO AGRUPAR POR UN CAMPO QUE NO ESTE EN LA LISTA!

Necesito un campo para cada `group by` mas los campos para mis funciones.
