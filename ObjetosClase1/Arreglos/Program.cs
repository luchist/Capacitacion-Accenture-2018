using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Arreglos
{
    class Program
    {
        static void Main(string[] args)
        {
            EjercicioBonusWhile();
        }

        static void Arrays()
        {
            //array o arreglo de string
            string[] nombres = new string[4];

            //array de enteros
            int[] numeros = new int[4]; //estoy reservando memoria y creando el objeto de 4 casilleros

            nombres[0] = "Carlos";
            numeros[0] = 10;

            nombres[1] = "Juan";
            numeros[1] = 20;

            nombres[2] = "Jose";
            numeros[2] = 30;

            nombres[3] = "Javier";
            numeros[3] = 40;

            

            //Acceder a un elemento del arreglo
            Console.WriteLine("el segundo elemento tiene {0} y {1}", nombres[1], numeros[1]);
            Console.WriteLine("");

            //Console.ReadKey();

            //Recorrer el arreglo con un for
            for (int i = 0; i < 4 ; i++)
            {
                
                Console.WriteLine("el elemento {0} tiene {1} y {2}",i, nombres[i], numeros[i]);
            }

            //Recorrer el arreglo, usando atributos del array en el for
            for (int i = 0; i < nombres.Length; i++)
            {

                Console.WriteLine("el elemento {0} tiene {1} y {2}", i, nombres[i], numeros[i]);
            }

            Console.ReadKey();

        }

        static void EjercicioArrays()
        {
            /*
            * 
            * Crear un arreglo y cargarlo con numeros enteros
            * Mostrar la suma de los numeros del arreglo
            * Mostrar el promedio de los numeros del arreglo
            * 
            */

            //array de enteros
            int[] numeros = new int[10];

            //cargo el array
            for (int i = 0; i < numeros.Length; i++)
            {
                numeros[i] = i;
            }

            //muestro
            ImprimirArray(numeros);

            //Suma
            int suma = 0;
            for (int i = 0; i < numeros.Length; i++)
            {
                suma = suma + numeros[i];
            }
            Console.WriteLine("La suma de los elementos del array es:{0}", suma);

            //Promedio
            long promedio = suma / numeros.Length; //como hago para no perder decimales??
            Console.WriteLine("El promedio del array es:{0}", promedio);

            Console.ReadLine();

        }

        static void ImprimirArray(int[] array)
        {
            //Recorrer el arreglo, usando atributos del array en el for
            for (int i = 0; i < array.Length; i++)
            {

                Console.WriteLine("> [{0} : {1}]", i, array[i]);
            }

            Console.ReadKey();
        }

        /*
         * Ejercicio Bonus Laboratorio 3 
         *
         */
        static void EjercicioBonusWhile()
        {
            /*
             * Pseudocodigo 
             * 
             * Nro para leer el valor ingresado
             * MAX inicializado en 0 para buscar el maximo
             * MIN inicializada en 300
             * 
             * While (no es 99)
             * 
             * Nro > Max -> Nuevo maximo
             *      Max = Nro
             * 
             * Nro < Min -> Nuevo Minimo
             *      Min = Nro
             * 
             */

            //VARIANTE: lo primero que ingresa es el maximo/minimo

            Console.WriteLine("Ingrese un numero:");
            Console.WriteLine("+--------------------+");
            int nro = Convert.ToInt32(Console.ReadLine());

            int max = nro;
            int min = nro;

            
            //int nro = Convert.ToInt32(Console.ReadLine()); //int.Parse(Console.ReadLine());
            while (nro != 99)
            {
                if(nro > max)
                { max = nro; } //en estos casos no son necesarias las llaves

                if(nro < min)
                { min = nro; }

                Console.WriteLine("Ingrese un numero:");
                Console.WriteLine("+--------------------+");
                nro = Convert.ToInt32(Console.ReadLine());
            }

            //pregunto si maximo != minimo
            if (max != TOPE && min != TOPE)
            {
                Console.WriteLine("El maximo numero ingresado fue: " + max);
                Console.WriteLine("El minimo numero ingresado fue: " + min);
                Console.WriteLine("+--------------------------------------+");
            }
            else
            {
                Console.WriteLine("No se ingresaron valores");
            }
        }
    }
}
