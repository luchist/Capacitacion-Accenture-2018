
/*me traigo la seccion de informacion*/
//let info = document.getElementById('info')
let info = document.querySelector("#info")
let contenedor = document.querySelector("#info")


/*agarro todos los productos y les pongo la accion onHover*/
/*
function assign_hover(productos){
    let items = document.getElementsByClassName('contenedor')
    let cantidad = productos.length
    //
    console.log(cantidad)
    console.log("VOY A IMPRIMIR TODOS LOS PRODUCTOS")
    console.log(items)
    for (var i = 0; i < cantidad; i++) {
        var prod = items[i]
        console.log(prod)
        prod.addEventListener("click", function(e){
            prod.innerText = productos[i].descripcion
            console.log("Agregue " + "productos" + " al contenedor!!!")
        })
    }
}*/


/*
 * Ejercicio: Forms
 */

//let inputs = document.getElementsByTagName('input')
/*
form.addEventListener("mouseout",function(e){
    console.log("ME FUI DEL FORM")
})*/


/*
function asignar_eventos_mouse(object){
    object.onmouseout = function(){
        console.log("mouse_out")
    }
    object.onmouseover = function(){
        console.log("mouse_over")
    }
    object.onblur = function(){
        console.log("blur")
    }
}*/

let input_nombre = document.getElementById('form_nombre')
let input_pass = document.getElementById('form_password')

/*
Me traigo la BD de usuarios
*/

/*
console.log("VOY A REALIZAR UNA PETICION XMLHttpRequest!")
var xhr2 = new XMLHttpRequest()
xhr2.open("GET","usuarios.json")
xhr2.addEventListener("load",function(){
    if(xhr2.status == 200){
        var usuarios = JSON.parse(xhr2.responseText)
        evento_user(usuarios)
        evento_pass(usuarios)
        boton()
    }
    else {
        var usuarios = "no se pudo traer el JSON!"
    }
})
xhr2.send()*/

let usuario = document.querySelector("#form_nombre")
let pass = document.querySelector("#form_password")
usuario.addEventListener("blur",function(){
    ajax("uno", usuario.value, this)
})
pass.addEventListener("blur",function(){
    ajax("dos", pass.value, this)
})

let body = document.querySelector("#body")



function ajax(m, dato, el) {
    var a = {
        uno:"usuario",
        dos:"contraseña"
    }
    var xhr2 = new XMLHttpRequest()
    xhr2.open("POST","usuarios.json")
    xhr2.addEventListener("load",function(){
        if (xhr2.status == 200) {
            console.log("ENTRO AL IF 200")
    let usuarios = JSON.parse(xhr2.responseText)
    //buscar en todos los usuarios
    var found = usuarios.some(function (el) {
        return el.usuario === usuario.value;
    });
    if (JSON.parse(xhr2.responseText)[0][a[m]] == dato) {
        el.style.backgroundColor = "green"
        //load_elements()
    } else {
        el.style.backgroundColor = "red"
    }
    console.log(JSON.parse(xhr2.responseText)[a[m]])
}
})
    xhr2.send()
}

function load_elements(productos){
    console.log("VOY A REALIZAR UNA PETICION XMLHttpRequest de PRODUCTOS!")
    var xhr = new XMLHttpRequest()
    xhr.open("GET","productos.json")
    xhr.addEventListener("load",function(){
        if(xhr.status == 200){
            // document.querySelector('#cont').innerHTML = xhr.responseText
            console.log(JSON.parse(xhr.responseText)[0].nombre)
            var productos = JSON.parse(xhr.responseText)
            destruir_form()
            carga_html(productos)
        }
    })
    xhr.send()
}

function carga_html(array){
    var cantidad = array.length
    console.log("ESTOY CARGANDO A TRAVES DE AJAX!!!")
    for (var i = 0;i < cantidad; i++){
        let prod_div   = "<div class='contenedor'>"
        let prod_img   = "<p> <img src= " + array[i].link + " ></p>"
        let prod_name  = "<p class='highlight'>Nombre</p><p> " + array[i].nombre + "</p>"
        let prod_price = "<p class='highlight'>Precio</p><p> $"+ array[i].precio + "</p>"
        let prod_color = "<p class='highlight'>Color</p><p> " + array[i].color + "</p></div>"
        contenedor.innerHTML += prod_div + prod_img + prod_name + prod_price + prod_color
    }
}

function destruir_form(){
    let form = document.getElementById('form')
    form.innerHTML = ""
}


let form = document.getElementById('form')
form.addEventListener("submit",function(e){
    e.preventDefault()
    console.log("Toque el boton!!!")
    load_elements()
})

/*
function evento_user(usuarios){
    input_nombre.addEventListener("blur",function(e){
        //buscar en la lista de usuarios
        var found = usuarios.some(function (el) {
            return el.usuario === input_nombre.value;
        });
        if (found){
            input_nombre.style.backgroundColor = "#3EB991";
            console.log("El usuario es correcto!")
        } else{
            input_nombre.style.backgroundColor = "#EF334C";
            console.log("El usuario no existe!")
        }
    })
}

function evento_pass(usuarios){
    input_pass.addEventListener("blur",function(e){
        //buscar en la lista de usuarios
        var found = usuarios.some(function (el) {
            return el.contraseña === input_pass.value;
        });
        if (found){
            input_pass.style.backgroundColor = "#3EB991";
            console.log("La contraseña es correcta!")
        } else{
            input_pass.style.backgroundColor = "#EF334C";
            console.log("La contraseña es incorrecta!")
        }
    })
}*/

/*
function boton(){
    form.addEventListener("submit",function(e){
        e.preventDefault()
        console.log("Toque el boton!!!")
        location.href='http://www.google.com';
    })
}*/

