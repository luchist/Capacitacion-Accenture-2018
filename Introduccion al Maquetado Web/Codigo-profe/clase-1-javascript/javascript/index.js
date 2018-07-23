
var string = 'hola mundo'
var numero = 20
var booleano = true
var array = ["valor", "valor"]
var objeto = {
	clave: "valor",
	clave2: "valor2"
}
console.log(objeto)

var nulo = null
var sinDefinir = undefined
var funcion = function(){}

// console.log(string + " " + 10)
// var confirmar = confirm("hola")
// var pregunta = prompt("hola")
// alert(pregunta)

if(numero != 50 || numero < 49){
	console.log("es true")
}else{
	console.log("es false")
}

// var pregunta3 = prompt("que edad tenés?")


function nombre() {
var pregunta2 = prompt("que edad tenés?")
if (pregunta2 >= 18){
	for(var i=1;i <= pregunta2;i++){
		console.log(i)
		if (i==15){
			break
		}
	}
}else{
	alert("sos muy chiquito, pervertido!")
}
}
// nombre()
// nombre()
// nombre("como")
// nombre("estan")

let variableLet = "cualquier cosa"
const constante = "constante"
var ejemplo = "ejemplo"
variableLet = "otra cosa"
console.log(ejemplo)

console.log(document.getElementById("parrafo"))

var elemento = document.getElementById("parrafo")
var arrayAct = []
elemento.onclick = function() {
	actividad("edad")
	actividad("nombre")
	actividad("domicilio")
	let cont = arrayAct.length
	for (var i = 0; i < cont; i++) {
		console.log(arrayAct[i])
	}

}
function actividad(arg){
	var preguntaAct = prompt(arg)
	arrayAct.push(preguntaAct)
}


var array2 = ["hola", 50, true]
array2[3] = "otra cosa"
array2.push("ooootra cosita")

var contado = array2.length
console.log(array2[0], array2[2])
for (var i = 0; i < contado; i++) {
	console.log(array2[i])
}
var elementohtml = document.getElementById("contenedor")
console.log(elementohtml.innerHTML)
elementohtml.innerHTML = "<p>Soy un parrafo</p>"
elementohtml.innerHTML += "<h1>Soy un titulo</h1>"

var creado = document.createElement("p")
creado.innerText="holisss"
creado.classList.add("clase")
creado.id = "ident"
elementohtml.append(creado)


var clases = document.getElementsByClassName('parrafo')
var porTag = document.getElementsByTagName("body")
// console.log(porTag)

// console.log(document.querySelector("p"))
console.log(document.querySelector(".parrafo + p"))

var el = document.querySelector(".parrafo + p")

el.style.color="red"
el.style.backgroundColor = "blue"


var parrafos = document.querySelectorAll("p")
var titulos = document.querySelectorAll("h2")
var boton = document.querySelector("#boton")
boton.onclick=function () {
	colores(parrafos, "red")
}
function colores(argumento, argumento2){
	var parrafoContado = argumento.length
	for (var i = 0; i < parrafoContado; i++) {
		argumento[i].style.color=argumento2	}
}

var arrayDePrueba = []



arrayDePrueba.push(5)




var input = document.querySelector("#texto")
var botoncito = document.querySelector("#botoncito")
var form = document.querySelector("#form")

form.addEventListener("submit",miFuncion)
// form.removeEventListener("submit",miFuncion)
function miFuncion(e){
	e.preventDefault()
}
botoncito.onclick=function(){
	console.log(input.value)
}


/*
||
%%
HTML
*/