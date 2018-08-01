/*Laboratorio SQL Server Management Studio*/

/*
 * ADVENTURE WORKS 2016 - SELECT / WHERE
 */

use AdventureWorks2014;

/* comando necesario para darle permisos para ejecutar un diagrama de base de datos */
alter authorization on database::pubs to sa

/*
 * Mostrar los empleados que tienen más de 90 horas de vacaciones
 */

select * from HumanResources.Employee
where VacationHours > 90;

/*
 * Mostrar el nombre, precio y precio con iva de los productos fabricados
 */
select Name, ListPrice, round(ListPrice*1.21,3,1)as 'Precio con IVA' from Production.Product;

/*
 * Mostrar los diferentes títulos de trabajo que existen
 */
select distinct JobTitle from HumanResources.Employee;

/*
 * Mostrar todos los posibles colores de productos
 */
select distinct Color from Production.Product;

/*
 * Mostrar todos los tipos de personas que existen
 */
select distinct PersonType from Person.Person;

/*
 * Mostrar el nombre concatenado con el apellido de las personas cuyo apellido sea johnson
 */
select (FirstName + ' ' + LastName) as 'Nombre Completo' from Person.Person
where LastName = 'Johnson';

/*
 * Mostrar todos los productos cuyo precio sea inferior a 150$ de color rojo o cuyo precio
 * sea mayor a 500$ de color negro
 */
select * from Production.Product
where ListPrice < 150 and Color = 'Red'
union
select * from Production.Product
where ListPrice > 500 and Color = 'Black';

/*
 * Mostrar el código, fecha de ingreso y horas de vacaciones de los
 * empleados ingresaron a partir del año 2000
 */
select BusinessEntityID, HireDate, VacationHours from HumanResources.Employee
where year(HireDate) > 2000;

/*
 * Mostrar el nombre, número de producto, precio de lista y el precio de lista
 * incrementado en un 10% de los productos cuya fecha de fin de venta sea anterior al día de hoy
 */
select Name, ProductNumber, (ListPrice*1.10), SellEndDate from Production.Product
where SellEndDate < GETDATE(); /*comparar fechas por menor!*/ 
/*TODO: arreglar la consulta */