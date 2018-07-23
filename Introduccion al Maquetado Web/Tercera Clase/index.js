


/*
 * 
 * JAVASCRIPT
 *
 */

//variables
/*
var variable = 'hola mundo'

var numero = 20

var booleano = true

//array

var array = ["valor", "valor"]

//objetos

var objeto = {
	clave : "valor", //los objetos tiene clave -> valor
	clave2: "valor2"
}

//null, undefined

var nulo = null

var sinDefinir = undefined

var funcion = function(){}

//interaccion con el usuario

console.log(variable)
console.log(numero + 10)			//podemos realizar cualquier operacion

console.log(variable + 10) 			//cuando tiene que sumar numero + string, en lugar de dar un error los concatena
console.log(variable + "mundo")

console.log(variable + "" + 10)

alert(booleano);					//alerta para el usuario

var confirmar = confirm("hola");	//pregunta algo al usuario, tiene opciones de aceptar y cancelar; devuelve un booleano dependiendo de esas opciones

alert(confirmar)

var pregunta = prompt("hola") 		//interaccion con el usuario
alert(pregunta)						//nos devuelve lo que le mandamos en el prompt

//condicionales

if (5 == 5){
	console.log("es verdad!")
}


if (numero === "20"){
	console.log("es verdad!!!!!")
}

if (numero != 50){
	console.log("es true")
} else {
	console.log("es false")
}

//repeticiones

for (var i=0; i < 10; i++){
	console.log(i) 					//va a mostrar los 10 numeros del ciclo
}


//condicionales con ciclos
//ejercicio: hacer un bucle que repita hasta la edad del usuario


var edad = prompt("hola, ingresa tu edad")

if (edad >= 18) {
	for (var i=1; i <= edad; i++) {
		console.log(i) 					//va a mostrar los 10 numeros del ciclo
		if (i == 15){
			break						//rompe el ciclo; si usara break 2 rompe 2 ciclos (anidados)
		}
	}
} else {
	alert("sos muy peque! volvé a la guardería")
}
*/
//funciones

//defino
function nombre(){
	console.log("hola")
}

//llamo
nombre()


//con parametros
function nombre(arg){
	console.log(arg)
}

nombre("hola")
nombre("amigos")
nombre("como")
nombre("estan")

//otras formas de crear variables

let variableLet = "cualquier cosa"
const constante = "constante"			//si tratamos de asignarle otro valor, nos lanzara un error en compilador
var ejemplo = "ejemplo"
ejemplo = "otra cosa"
//constante = "otra cosa"				//NO se puede hacer.
console.log(ejemplo)

/*
	la diferencia entre let y var es que let es mas liviano, solo se puede usar dentro de su propio
	closure; (tiene menos scope) si trato de usarlo afuera de donde lo defino me da un error.
	Var solo la usariamos cuando vamos a definir una variable adentro de un if o for y quiero usarla
	afuera del bloque.
*/


/////////////////////////////////

// Maniipulacion del DOM

//selecciono por ID al parrafo
console.log(document.getElementById("parrafo"))


//guardo en una variable
var elemento = document.getElementById("parrafo")


//hago un log cada vez que clickeo el parrafo
elemento.onclick = function() {
    console.log("click!")
}

/*
//ejercicio: al hacer click en un boton se hace interaccion con el usuario
//luego se muestra lo que ingreso
var boton = document.getElementById("boton")
boton.onclick = function() {
    let nombre = prompt("hola, ingresa tu nombre")
    console.log("hola " + " " + nombre)
}
*/

// ARRAYS

var array2 = ["hola", 50, true]         //no es tipado

console.log(array2[0], array2[2])       //acceso por indice, varios valores

//ver todos los elementos del array
var tamanio = array2.length             //al guardarlo en una variable, nos evitamos que se calcule en cada iteracion, solo se calcula una vez
for (var i = 0; i < tamanio; i++) {     //si usamos el <= necesitamos restar 1 al tamanio
    console.log(array2[i])
}

//actividad
//le preguntamos al usuario edad, nombre, nacionalidad, lo guardamos en un array

//como guardar en array?
array2[2] = "otra cosa"         //modificacion
array2[3] = "otra cosa mas"     //agrego

//otra forma de agregar
array2.push("pusheo al final del array")

//actividad - resolucion

var array3 = []

/*
var boton = document.getElementById("boton")
boton.onclick = function() {
    let nombre = prompt("hola, ingresa tu nombre:")
    array3.push(nombre)
    let edad = prompt("ingresa tu edad:")
    array3.push(edad)
    let nacionalidad = prompt("ingresa tu nacionalidad:")
    array3.push(nacionalidad)
    //imprimir array
    let cant = array3.length
    for (var i = 0; i < cant; i++) { //si usamos el <= necesitamos restar 1 al tamanio
        console.log(array3[i])
    }
}
*/

//como podemos mejorar la funcion?
//con funciones, para no repetir el codigo
//actividad me hace el prompt -> push al array

boton.onclick = function(){
    actividad("edad")
    actividad("nombre")
    actividad("domicilio")
    let cant = array3.lenght
    for (var i = 0; i < 3; i++) {
        console.log(array3[i])
    }
}

function actividad(arg){
    var preguntaAct = prompt(arg)
    array3.push(preguntaAct)
}

/////////////////////////////////////////////



// * agregar contenido a un div vacio con js *

var elementohtml = document.getElementById("contenedor")
console.log(elementohtml.innerHTML)
elementohtml.innerHTML = "<p> Soy un parrafo </p>"          //agrego
elementohtml.innerHTML += "<h1> Soy un titulo </h1>"        //concateno

//* seleccionar elementos *

var clases = document.getElementsByClassName('parrafo')         //selecciono elementos por su clase
var porTag = document.getElementsByTagName("p")                 //selecciono elementos por su tag

console.log("logueo usando un array con las clases parrafo")
console.log(clases[0])

console.log("logueo usando getElements con el tag p")
console.log(porTag)

// * otras formas *

console.log("logueo usando querySelector con el id contenedor")
console.log(document.querySelector("#contenedor"))          //nos trae el primero que encuentra con id contenedor

console.log("logueo usando querySelector con la clase p")
console.log(document.querySelector("p"))                    //mismo que el anterior, trae el primero


console.log("logueo usando querySelectorAll con la clase parrafo")
console.log(document.querySelectorAll(".parrafo"))          //nos trae todos con la clase parrafo

console.log("logueo usando querySelector con las clases parrafo y p")
console.log(document.querySelector(".parrafo + p"))         //agarramos al primer p hermano de parrafo
//el + hace rederencia "al que sigue"



//Cambio el estilo del DOM con js
var el = document.querySelector(".parrafo + p")
el.style.color = "red"
el.style.backgroundColor = 'blue'

//creo un elemento con js
var creado = document.createElement("p")
creado.innerText = "holiss"
elementohtml.append(creado)         //appenddeo al final del elemento html
