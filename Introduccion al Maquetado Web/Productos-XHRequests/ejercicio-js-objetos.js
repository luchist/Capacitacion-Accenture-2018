
let producto1 = {
    nombre:"Producto 1",
    precio:200,
    color:"rojo",
    link: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Wi0RZNscIe8QSM53dqlf8-cn86bm9evkxa7aPTHr2PUMaQP7',
    descripcion:"descripcion del producto"
}
let producto2 = {
    nombre:"Producto 2",
    precio:200,
    color:"rojo",
    link: 'https://static.mercadoshops.com/flipazoo-original-peluches-en-transformalos-quinotoys_iZ963306825XsZ69121590XpZ13XfZ69121590-672647290-13XvZgrandexIM.jpg?v=master-20180720_085242',
    descripcion:"descripcion del producto"
}
let producto3 = {
    nombre:"Producto 3",
    precio:200,
    color:"rojo",
    link: 'https://i.ebayimg.com/images/g/vdkAAOSwOfdZsZ~Y/s-l300.jpg',
    descripcion:"descripcion del producto"
}

let productos = [producto1, producto2, producto3]

/*me traigo la seccion de informacion*/
//let info = document.getElementById('info')
let info = document.querySelector("#info")
let contenedor = document.querySelector("#info")
console.log(info)

console.log("VOY A REALIZAR UNA PETICION XMLHttpRequest!")
var xhr = new XMLHttpRequest()
xhr.open("GET","productos.json")
xhr.addEventListener("load",function(){
    if(xhr.status == 200){
        // document.querySelector('#cont').innerHTML = xhr.responseText
        //console.log(JSON.parse(xhr.responseText)[0].nombre)
        var productos = JSON.parse(xhr.responseText)
        load_elements(productos)
    }
})
xhr.send()

function load_elements(productos){
    var cantidad = productos.length
    console.log("ESTOY CARGANDO A TRAVES DE AJAX!!!")
    for (var i = 0;i < cantidad; i++){
        let prod_div   = "<div class='contenedor'>"
        let prod_img   = "<p> <img src= " + productos[i].link + " ></p>"
        let prod_name  = "<p> Nombre: " + productos[i].nombre + "</p>"
        let prod_price = "<p> Precio : $"+ productos[i].precio + "</p>"
        let prod_color = "<p> Color: " + productos[i].color + "</p></div>"
        contenedor.innerHTML += prod_div + prod_img + prod_name + prod_price + prod_color
    }
}
