using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VariablesAsignacion
{
    class Program
    {
        static void Main(string[] args)
        {

            Asignacion();
        }

        static void Variables()
        {
            /*VARIABLES*/
            string Nombre;
            Console.Write("Cual es tu nombre? ");
            Nombre = Console.ReadLine();
            Console.WriteLine("me llamo {0}", Nombre);
            Console.ReadKey();

            //Por convencion las variables van con CamelCase
            //Buena practica: darle un valor inicial a las variables

            /*VALORES CONSTANTES*/
            const int DiasDeSemana = 7;
            //Este valor no cambia en tiempo de ejecucion
            //Por convencion las constantes van con Mayusculas

            /*Variables Char*/

            //Casteo tipo Boxing
            char char2 = (char)88; //convierto con la tabla ASCII
            Console.WriteLine("Letra Misteriosa: " + char2 + " -- ");
            Console.ReadKey();
        }

        static void FloatDouble()
        {
            /*FLOAT*/
            float fl = 0;
            fl = 95.60f;    //Asigna el literal 95.60 con sufijo f o F

            /*DOUBLE*/

            double dl = 0;
            dl = 95.60d;    //Asigna el literal con sufijo d o D
        }

        static void OperadoresRelacionales()
        {
            /*OPERADORES RELACIONALES*/
            int a = 10;
            int b = 5;
            Console.WriteLine("{0} es mayor a {1} ? {2}", a, b, a > b);
            Console.WriteLine("{0} es menor a {1} ? {2}", a, b, a < b);
            Console.ReadKey();
        }

        static void Asignacion()
        {
            /*OPERADORES DE ASIGNACION*/

            /*Atajos*/
            // variable++
            // variable--

            int c;
            int b = 23;

            //CUANDO EL ++ ESTA DEL LADO DERECHO
            //PRIMERO ASIGNA Y DESPUES SUMA
            c = b++;
            // c = 23
            // b = 24

            Console.WriteLine("Con b++ c queda con {0} y b queda con {1}", c, b);
            Console.ReadKey();

            //CUANDO EL ++ ESTA DEL LADO IZQUIERDO
            //PRIMERO SUMA LUEGO ASIGNA
            c = ++b;
            // b = 25
            // c = 25

            Console.WriteLine("Con ++b c queda con {0} y b queda con {1}", c, b);
            Console.ReadKey();
        }

        static void ControlIF()
        {

        }
    }
}

