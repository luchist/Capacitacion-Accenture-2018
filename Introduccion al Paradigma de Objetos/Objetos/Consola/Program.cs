using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Libreria;

namespace Consola
{
    class Programa
    {
        public static void Main(String[] args)
        {
            Alumno a1 = new Alumno();
            Alumno a2 = new Alumno("Juan", "Perez");

            a1.informar();
            a2.informar();

            a2.nombre = "luis";
            a2.apellido = "coronel";
            a2.informar();
            Console.ReadKey();
        }
    }
}
