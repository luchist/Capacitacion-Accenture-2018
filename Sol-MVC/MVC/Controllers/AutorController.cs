using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC.Models;

namespace MVC.Controllers
{
    public class AutorController : Controller
    {
        //creo un objeto de la clase mapeada a la base de datos
        BibliotecaEntities2 db = new BibliotecaEntities2();

        // GET: Autor
        public ActionResult Index()
        {
            /*
            PARA CADA ACCION DEL CONTROLADOR VOY A TENER UNA VISTA             
             */

            // acceso a la base con LINQ
            var listaAutores = db.Autores.ToList(); //todos los autores
            //tambien tengo linkeados los paises en donde nacio cada uno
            return View(listaAutores);
            //le digo a la vista que trabaje con listaAutores como modelo
        }

        // crear Metodo GET de CREATE
        [HttpGet]public ActionResult Create()
        {
            ViewBag.Nacionalidad = new SelectList(db.Paises, "ID", "Descripcion");
            Autore objAutor = new Autore();
            return View(objAutor);
        }

        //creamos el POST, con el Autore que nos viene por param
        [HttpPost]public ActionResult Create(Autore autor)
        {
            if (ModelState.IsValid)
            {
                db.Autores.Add(autor);
                db.SaveChanges(); //guarda en la bdd
                return RedirectToAction("Index");
            }

            ViewBag.Nacionalidad = new SelectList(db.Paises, "ID", "Descripcion");
            return View(autor);

            
        }
    }
}