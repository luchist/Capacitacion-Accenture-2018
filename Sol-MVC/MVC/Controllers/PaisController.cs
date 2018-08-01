using MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace MVC.Controllers
{
    public class PaisController : Controller
    {
        //creo un objeto de la clase mapeada a la base de datos
        BibliotecaEntities2 db = new BibliotecaEntities2();

        // GET: Pais
        public ActionResult Index()
        {
            /*
            PARA CADA ACCION DEL CONTROLADOR VOY A TENER UNA VISTA             
             */


            var listaPaises = db.Paises.ToList(); //todos los paises
            return View(listaPaises);
            //le digo a la vista que trabaje con listaPaises como modelo
        }

        //Alta de Pais

        // crear Metodo GET de CREATE
        [HttpGet]
        public ActionResult Create()
        {
            ViewBag.Nacionalidad = new SelectList(db.Paises, "ID", "Descripcion");
            Pais objPais = new Pais();
            return View(objPais);
        }

        //creamos el POST, con el Pais que nos viene por param
        [HttpPost]
        public ActionResult Create(Pais pais)
        {
            if (ModelState.IsValid)
            {
                db.Paises.Add(pais);
                db.SaveChanges(); //guarda en la bdd
                return RedirectToAction("Index");
            }

            ViewBag.Nacionalidad = new SelectList(db.Paises, "ID", "Descripcion");
            return View(pais);


        }
    }
}