//Ejercicio cambiarle el color al parrafo
//esto es para ejercicio-colores.html

var boton1 = document.getElementById("boton1")
console.log(boton1)
var boton2 = document.getElementById("boton2")
console.log(boton2)
var parrafo_cambiocolor1 = document.querySelector(".parrafo")
console.log(parrafo_cambiocolor1)
var parrafo_cambiocolor2 = document.querySelector(".parrafo + p") //el primer hermano
console.log(parrafo_cambiocolor2)


boton1.onclick = function() {
    parrafo_cambiocolor1.style.backgroundColor = '#00C3A4'
    parrafo_cambiocolor1.style.color = 'purple'
    parrafo_cambiocolor1.style.fontFamily = 'Webdings'
    parrafo_cambiocolor1.style.fontSize = 'xx-large'
    parrafo_cambiocolor1.style.textDecoration = 'underline'

    parrafo_cambiocolor2.style.backgroundColor = 'red'
    parrafo_cambiocolor2.style.color = 'white'
    parrafo_cambiocolor2.style.fontSize = 'xx-small'
    parrafo_cambiocolor2.style.fontFamily = 'Fira Code'
}

boton2.onclick = function() {
    parrafo_cambiocolor2.style.backgroundColor = '#D88820'
    parrafo_cambiocolor2.style.color = 'white'
    parrafo_cambiocolor2.style.fontFamily = 'Wingdings'
    parrafo_cambiocolor2.style.fontSize = 'xx-large'
    parrafo_cambiocolor2.style.fontWeight = 'bolder'
    parrafo_cambiocolor1.style.textDecoration = 'line-through'

    parrafo_cambiocolor1.style.backgroundColor = 'green'
    parrafo_cambiocolor1.style.color = 'yellow'
    parrafo_cambiocolor1.style.fontSize = 'xx-small'
    parrafo_cambiocolor1.style.fontFamily = 'Fira Code'
}