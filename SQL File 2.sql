
use prueba;

select idordenventa as 'codigo de factura', subtotal, impuesto, flete,
.21 as IVA,
(subtotal + impuesto + flete) * 1.21 as 'importe total con iva'
from headerventas
where (subtotal + impuesto + flete) * 1.21
between 5000 and 10000;

create table ventas select * from headerventas
where idordenventa < 52000;

select idordenventa,subtotal from headerventas
where subtotal not in (select subtotal from ventas);

select * from contacto where primernombre in ('Pedro','Kelli','Morgan');

select * from contacto where primernombre like 'just%';