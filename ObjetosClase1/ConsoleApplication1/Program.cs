using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DecisionSimple
{
    class Program
    {
        static void Main(string[] args)
        {
            While();
        }

        static void ControlIF()
        {
            int valor = 0;
            Console.Write("Ingrese un valor entero:");
            valor = Convert.ToInt32(Console.ReadLine());

            if (valor == 10)
            {
                Console.WriteLine("valor ingresado {0} es 10", valor);
            }
            else
            {
                Console.WriteLine("valor ingresado {0} no es 10", valor);
            }

            Console.ReadKey();
        }

        /*
         * ACTIVIDAD
         * 
         * Se tienen 3 variables enteras llamadas Nota1, Nota2 y Nota3
         * Obtener el promedio
         * Segun el promedio; si quedo >= 7 mostrar PROMOCIONADO
         * Si quedo 4, 5 o 6 mostrar REGULAR
         * Si quedo <= 3 mostrar Reprobado
         * 
         * */

        static void Promedio()
        {
            int nota1;
            int nota2;
            int nota3;

            

            Console.WriteLine("Ingresa tus tres notas: ");

            nota1 = Convert.ToInt32(Console.ReadLine());
            nota2 = Convert.ToInt32(Console.ReadLine());
            nota3 = Convert.ToInt32(Console.ReadLine());


            Console.WriteLine("Tus notas ingresadas fueron [ {0}, {1}, {2} ]", nota1, nota2, nota3);

            double promedio = (nota1 + nota2 + nota3) / 3;
            Console.WriteLine("Tu promedio es: {0}!", promedio);

            if (promedio >= 7)
            {
                Console.WriteLine("PRO MO CIO NA 2!!!");
                Console.ReadKey();
            }
            else if (promedio <= 3)
            {
                Console.WriteLine("RE PRO BA DI SI MO. MEJOR DEDICATE A OTRA COSA");
                Console.ReadKey();
            }
            else
            {
                Console.WriteLine("REGULAR. A VER SI AFLOJAMOS CON EL FORTNITE");
                Console.ReadKey();
            }
        }

        static void Switch()
        {
            int valor = 19;

            switch (valor)
            {
                case 10:
                    Console.WriteLine("El valor es 10");
                    break;

                case 11:
                    Console.WriteLine("El valor es 11");
                    break;

                case 12:
                    Console.WriteLine("El valor es 12");
                    break;
         
                default:
                    Console.WriteLine("El valor es otro");
                    break;
            }
            Console.ReadKey();

        }

        static void While()
        {
            int a = 1;
            while(a <= 5) //tambien a<6 (bueno) o a!=6 (feo!)
            {
                Console.WriteLine(a);
                a = a + 1; //a++
            }
            Console.WriteLine("El valor de a quedo en {0}", a);
            Console.ReadKey();
        }
    }

}
