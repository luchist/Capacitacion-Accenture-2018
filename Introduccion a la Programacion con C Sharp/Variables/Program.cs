using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Variables
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 30;
            a = 40;
            a = 2;
            // pero puede asignar valor cuantas veces quiera

            int b = 15;

            int c = a + b;

            int d = 100;

            Console.Write("Variable A = ");
            Console.WriteLine(a);
            Console.Write("Variable B = ");
            Console.WriteLine(b);
            Console.Write("Variable C = ");
            Console.WriteLine(c);
            Console.Write("Variable D = ");
            Console.WriteLine(d);

            Console.WriteLine("A + B = " + a + b); // error produce la concatenacion

            Console.Write("A + B = ");
            Console.WriteLine(a + b);

            Console.WriteLine("A + B = " + (a + b));

            Console.WriteLine("cadena de texto {0} {1} {2}", a, b, c);

            Console.WriteLine("El valor de c es {0}", a + b);
            Console.ReadKey();
        }
    }
}

