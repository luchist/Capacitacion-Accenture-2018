using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlIfSwitchWhile
{
    class Program
    {
        static void Main(string[] args)
        {
            //WhileEjercicio();
            //WhileEjercicioProfe();
            /*Ejercicio2();
            Ejercicio4();
            Ejercicio6();*/
            Ejercicio7();
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

            //Una mejora conceptual
            const int TOPE = 5;

            while (a <= TOPE) //tambien a<6 (bueno) o a!=6 (feo!)
            {
                Console.WriteLine(a);
                a = a + 1; //a++
            }
            Console.WriteLine("El valor de a quedo en {0}", a);
            Console.ReadKey();
        }

        static void WhileEjercicio()
        /*
         * 
         * EJERCICIO: Hacer un bucle similar al anterior
         * pero en orden DESCENDENTE
         * 
         * */
        {
            int a = 5;

            while (a > 0)
            {
                Console.WriteLine(a);
                a--; //a++
            }
            Console.WriteLine("El valor de a quedo en {0}", a);
            Console.ReadKey();
        }

        static void WhileEjercicioProfe()
        /*
         * 
         * EJERCICIO: Hacer un bucle similar al anterior
         * pero en orden DESCENDENTE
         * 
         * */
        {
            int a = 5;
            const int TOPE = 1; //si es 0, va mayor en la condicion; sino >=

            while (a >= TOPE)
            {
                Console.WriteLine(a);
                a--; //a++
            }
            Console.WriteLine("El valor de a quedo en {0}", a);
            Console.ReadKey();
        }

        /*
         * EJERCICIOS LABORATORIO 3
         * 
         * */

        //EJERCICIO 2: Imprimir numeros del 1 al 10 salteando de a 2 uno abajo del otro
        static void Ejercicio2()
        {
            /*
             * Pseudocodigo
             * 
             * 1 Variable entera
             * 
             * while ... <= 10
             * {
             *      incremento en 2     //ojo el orden
             *      mostrar
             * }
             * 
             * 1, 3 , 5 , 7 ,9
             * 
             * */
            int x = 1;
            while (x <= 10)
            {
                Console.WriteLine(x);
                x += 2;
            }
            Console.ReadKey();
        }

        //EJERCICIO 4: Imprimir numeros del 1 al 10 sin imprimir numeros 2, 5 y 9 uno abajo del otro
        static void Ejercicio4()
        {
            /*
             * Pseudocodigo
             * 
             * 1 Variable entera
             * 
             * while ... <= 10
             * {
             *      si (nro no es 2 ni 5 ni 9)
             *      {
             *          mostrar
             *      }
             * }
             * 
             * */
            int x = 1;
            while (x <= 10)
            {
                switch (x)
                {
                    case 2:
                        break;

                    case 5:
                        break;

                    case 9:
                        break;

                    default:
                        Console.WriteLine(x);
                        break;
                }
                x++;
            }
            Console.ReadKey();
        }

        //EJERCICIO 6: Imprimir la suma de los numeros del 1 al 10
        static void Ejercicio6()
        {
            /*
             * Pseudocodigo
             * 
             *  1 Variable para el numero
             *  1 Variable para ir sumando
             *  while .. <= 10
             *  {
             *      AcumuloElNumero
             *      IncrementoEnUno
             *  }
             *  
             *  Mostrar()
             *  
             * */

            int x = 1;
            int total = 0;

            while (x <= 10)
            {
                total = total + x;
                x++;
            }
            Console.WriteLine(total);
            Console.ReadKey();


        }

        //EJERCICIO 7: Imprimir la suma de los numeros pares del 1 al 25 
        static void Ejercicio7()
        {
            /*
             * Pseudocodigo
             * 
             * 1 Variable para el numero
             * 1 Variable para ir sumando
             *  while ... < 25   //25 no es par
             *  {
             *      si el numero es par
             *      {
             *          sumar //acumular
             *      }
             *      Incrementa en 1
             *      
             *  }
             *  Mostrar la suma;
             * 
             * */

            int x = 1;
            int total = 0;

            while (x < 25)
            {
                if (esPar(x))
                {
                    total = total + x;
                }
                x++;
            }
            Console.WriteLine(total);
            Console.ReadKey();
        }

        static bool esPar(int x)
        {
            return (x % 2 == 0);
        }

    }

}
