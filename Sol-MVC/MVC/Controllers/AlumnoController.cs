using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC.Controllers
{
    public class AlumnoController : Controller
    {
        // GET: Alumno
        public ActionResult Index()
        {
            ViewBag.saludo = "Bienvenute";
            ViewBag.hoy = DateTime.Now.ToString();
            return View();
        }
    }
}