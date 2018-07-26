//VAR
var a = 1
//Redeclaracion
var a = 10
//Redefinicion
a = 15
//No es scopeable
if (true) {
	var b = 10
	console.log(b)	
}
console.log(b)	
//Es global
var c = 10
//window.c = 10


//LET
let d = 1
//No admite redeclaracion
//let d = 10
//Redefinicion
d = 20
//Es scopeable 
if (true) {
	let e = true
	console.log(e)
}
console.log(e)
//Es parcialmente global
let f = 10 //!= window.f = 10

//CONST
const g = 10
//No admite redeclaracion
//const g = 10
//No admite redefinicion
//g = 20
//const h 
//h = 40
//Es scopeable 
if (true) {
	const i = true
	console.log(i)
}
//console.log(i) => Error de referencia
//Ningun valor escalar se puede redefinir pero si se pueden redefinir los valores de los componentes internos de un dato complejo como una matriz

