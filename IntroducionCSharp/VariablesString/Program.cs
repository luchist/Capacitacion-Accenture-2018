using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VariablesString
{
    class Program
    {
        static void Main(string[] args)
        {
            // ----------------------------
            //Variables String
            // ----------------------------

            // Las variables del tipo String almacenan caracteres de texto y numeros como caracteres
            // String empieza con mayusculas por que es una clase
            // No existe el tipo de datos primitivo string en java, si en C#

            Incrementales();
            //Asignacion();

            string p;
            string l;
            string f;

            p = "Perro";
            l = "Ladra";
            f = "fuerte";

            //String p="perro";          //permitido
            //String p="perro", l="ladra",f="fuerte"; //permitido

            Console.WriteLine(p + l);

            Console.WriteLine(p + " " + l);

            //Console.WriteLine(p + c);
            Console.WriteLine("2" + 2);
            // Siempre que hay un termino String o literal, el operador +
            // actua como concatenador, no suma.

            Console.WriteLine("el {0} que {1} muy {2}", p, l, f);
            // no funciona en JAVA si en C o C#

            String st = "perro";
            Console.WriteLine(st);
            // tipo de datos primitivo perteneciente a la clase String
            Console.ReadKey();
        }

        static void Pausa() //Me ahorro tener que hacer cada vez
        {
            Console.ReadKey();
            Console.Clear();
        }

        static void Asignacion()
        {
            int nro1 = 5;
            int nro2 = 7;

            Console.WriteLine(nro1);
            Console.WriteLine(nro2);


            nro1 = nro2;
            // el igual es el operador de asignación y
            // la asignacion se produce de derecha a izquierda

            Console.WriteLine(nro1);
            Console.WriteLine(nro2);
            Pausa();
        }

        static void Incrementales()
        {

            // ----------------------------
            // INCREMENTALES
            // ----------------------------

            int nro1 = 2;
            int nro2;
            //suma 1 a la variable
            nro1++; // es eficiente que la segunda
                    // nro1=nro1+1 // ambas producen el mismo resultado
            Console.WriteLine(nro1);
            Pausa();


            //resta 1 a la variable
            nro1--;
            // nro1=nro1-1
            Console.WriteLine(nro1);
            Pausa();

            //agregar un valor a la variable
            nro1 += 7;
            //nro1=nro1+7
            Console.WriteLine(nro1);
            Pausa();

            //quitar un valor a la variable
            nro1 -= 7;
            //nro1=nro1-7
            Console.WriteLine(nro1);
            Pausa();

            //Multiplicar por un valor a la variable
            nro1 *= 5;
            //nro1=nro1*5
            Console.WriteLine(nro1);
            Pausa();

            //Dividir por un valor a la variable
            nro1 /= 5;
            //nro1=nro1/5
            Console.WriteLine(nro1);
            Pausa();

            // los operadores ++ -- += -= *= /=
            // no llevan espacios entre los 2 caracteres
            // no se le puede cambiar el orden de los caracteres


            // separador de consola para no mezclar los resultados

            Console.WriteLine("-------------------------------");

            Console.WriteLine(nro1);
            Console.WriteLine(nro1++); //primero imprime despues suma
            Console.WriteLine(nro1); // el resultado de la suma lo vemos aca


            Console.WriteLine("-------------------------------");

            Console.WriteLine(nro1);
            Pausa();
            Console.WriteLine(++nro1); //primero suma despues imprime
            Pausa();
            Console.WriteLine(nro1);
            Pausa();

            Console.WriteLine("-------------------------------");
            Console.WriteLine(nro2 = 8); //primero asigna despues imprime
            Pausa();
        }
    }
}
