



let contenedor = document.querySelector("#info")
let body = document.querySelector("#body")

let usuario = document.querySelector("#form_nombre")
let pass = document.querySelector("#form_password")


usuario.addEventListener("blur",function(){
    ajax("uno", usuario.value, this)
})
pass.addEventListener("blur",function(){
    ajax("dos", pass.value, this)
})


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
        //peticion_carga()
    } else {
        el.style.backgroundColor = "red"
    }
    console.log(JSON.parse(xhr2.responseText)[a[m]])
}
})
    xhr2.send()
}



function doble_peticion_ajax(){
    //let productos
    //let contenedor = document.querySelector("#act")
    console.log("Doble peticion ajax")
    var xhr = new XMLHttpRequest()
    xhr.open("GET","productos.json")
    xhr.addEventListener("load",function(){
        if (xhr.status == 200) {
            console.log("xhr status 200")
            productos = JSON.parse(xhr.responseText)
            
            let url = productos[1].url //la url de los objetos JSON

            //Segunda Request
            console.log("Segunda Request")

            let xhr2 = new XMLHttpRequest()
            console.log("Segunda Request - New")

            xhr2.open("GET",url)
            console.log("Segunda Request - GET url")

            xhr2.addEventListener("load", function(){
                console.log("Segunda Request - addEventListener")
                if (xhr2.status == 200){

                    console.log("Segunda Request - Status 200")

                    let otrosProductos = JSON.parse(xhr2.responseText)
                    console.log("Segunda Request - JSON Parse")

                    carga_html(otrosProductos)
                    console.log("Segunda Request - carga_html")
                }
                
            })
            xhr2.send() //envio la request 
            console.log("Segunda Request - send()")

            destruir_form()
            carga_html(productos)
            // document.querySelector("#cont").innerHTML=xhr.responseText
            // console.log(JSON.parse(xhr.responseText)[0].clave)
        }
    })
    xhr.send()
}


function doble_peticion_promises(){
    let productos
    var url_interna
    //let contenedor = document.querySelector("")
    var promesa = new Promise(function(resolve, reject){
        var xhr = new XMLHttpRequest()
        xhr.open("GET","productos.json")
        xhr.addEventListener("load",function(){
            if(xhr.status == 200){
                productos = JSON.parse(xhr.responseText)
                url_interna = productos[1].url
                console.log(url_interna)
                resolve(url_interna) //aca ya estamos diciendo que es el resolve
                destruir_form()
                carga_html(productos)
            }
        })
        xhr.send()
        console.log("Se hizo el send de la primera request!")
        console.log(url_interna)
    }).then(peticion_carga) // NO Hace falta pasarle la URL sino que utiliza el RESOLVE
    //si le paso la URL me da error, se ejecuta primero y queda url_interna en NULL
}

/*
function doble_peticion_promises_profe(){
    let productos
    //let contenedor = document.querySelector("")
    var promesa = new Promise(function(resolve, reject){
        var xhr = new XMLHttpRequest()
        xhr.open("GET","productos.json")
        xhr.addEventListener("load",funcition(){
            if(xhr.status == 200){
                productos = JSON.parse(xhr.responseText)
                resolve(productos[1].url)
                productosMostrar()
            }
        })
        xhr.send()
    }).then(nombre).then(alertador)
}

function nombre(url){
    ajax = new XMLHttpRequest()
    ajax.open("GET",url)
    ajax.addEventListener("load",function(){
        var clave = JSON.parse(ajax.responseText).clave1
        console.log(clave)
        return clave
    })
    ajax.send()
}
*/



function peticion_carga(url){
    console.log("VOY A REALIZAR UNA peticion_carga XMLHttpRequest de PRODUCTOS!")
    var xhr = new XMLHttpRequest()
    xhr.open("GET",url)
    //xhr.open("GET","productos2.json")
    xhr.addEventListener("load",function(){
        if(xhr.status == 200){
            // document.querySelector('#cont').innerHTML = xhr.responseText
            //console.log(JSON.parse(xhr.responseText)[0].nombre)
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

    var userinfo = document.getElementById('username')
    userinfo.innerHTML = 'ADMIN' //aca necesito el username de alguna forma!!
}

function destruir_form(){
    let form = document.getElementById('form')
    form.innerHTML = ""
}


let form = document.getElementById('form')
form.addEventListener("submit",function(e){
    e.preventDefault()
    console.log("Toque el boton!!!")
    //peticion_carga()
    //doble_peticion_ajax()
    doble_peticion_promises()
})
