using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libreria
{
    public class Alumno
    {
        // Atributos aquí
        public string nombre { get; set; }
        public string apellido { get; set; } 

        // Constructores

        public Alumno()
        {

        }

        public Alumno(String n, String a)
        {
            nombre = n;
            apellido = a;
        }

        // Métodos aquí
        public void informar()
        {
            Console.WriteLine(nombre + " " + apellido);
        }
    }
}
