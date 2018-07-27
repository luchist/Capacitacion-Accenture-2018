var a = "hola"
let b = 50
const c = ["hola",5,[],a]

for (let i = 0; i< 10; i++){
	console.log(i)
}

/*
while(b < 100){
	console.log(b)
	b += 5
}*/

/*

do{
	b+=5
	console.log(b)
} while(b<100)
*/

/*
if(true) {
    console.log("hola")
} else {
    console.log("chau")
}
*/

/*
var array = ["hola",5,["hola",5],a]
array[1] = "chau"
array.push("nuevo dato")

console.log(array[2][0])

function nombre(argumento){
    console.log(argumento)
}

nombre("parametro")
nombre("parametro2")
*/

/*alert("hola")*/

/*
var con = confirm("hgola")
console.log(con)*/

/*
var pregunta = prompt("pregunta")
console.log(pregunta)*/

/*TRAERNOS ELEMENTOS*/

let parrafo = document.getElementById('parrafo')
let parrafos = document.getElementsByClassName('parrafo')

let pe = document.getElementsByTagName('p')
let parra = document.querySelector('.parrafo')
let parraID = document.querySelector('#parrafo')

let parras = document.querySelectorAll('.parrafo')
let parras2 = document.querySelectorAll('p')

console.log(parrafo)

console.log(parrafos)

console.log(pe)

console.log(parra)

console.log(parraID)

console.log(parras)

console.log(parras2)

/*FUNCIONES*/

//parrafo.onClick = funcionClick() Se va a ejecutar solo!!
//Debemos hacer el llamado sin usar los parentesis ().
//Pero que pasa si necesito pasarle parametros???
//solucion: usamos una funcion anonima

parrafo.onClick = function (){
    funcionClick("me hiciste click!!") //lo unico que hace la funcion anonima es llamar a la otra funcion
}

function funcionClick(arg){
    console.log(arg)
}

/*OTRA FORMA DE REGISTRAR EVENTOS: addEventListener*/

parrafo.addEventListener("click",function(e){
    console.log(e) // e.target es el que propago el evento
    segundaFuncion("parametro")
})

parrafo.addEventListener("click",function(){
    segundaFuncion("parametro2")
})

function segundaFuncion(argument){
    console.log(argument)
}


/*MODIFICAR CSS DESDE JS*/
parrafo.style.fontSize = "40px"
parrafo.classList.add("clase")
parrafo.classList.remove("clase")




