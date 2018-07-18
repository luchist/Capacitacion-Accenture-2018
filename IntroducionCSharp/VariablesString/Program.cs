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

            Logicos();
            //Incrementales();
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

        static void Logicos()
        {
            // ----------------------------
            // tablas de verdad
            // ----------------------------

            //--------------------------
            //  X   Y       Or      And
            //  F   F       F       F
            //  F   V       V       F
            //  V   F       V       F
            //  V   V       V       V


            // ----------------------------
            // operaciones lógicas
            // ----------------------------
            //   &&  operador Y Lógico
            //   ||  operador O Lógico (ALT 124)
            //   !  Operador NOT
            //   =!  operador no igual
            //   == operador de comparación  

            // los operadores logicos primero analiza el operador
            // y despues los terminos


            bool log1 = true;
            bool log2 = false;
            bool resultado1 = log1 && log2;
            Console.WriteLine(resultado1);
            Console.WriteLine(log1 || log2);
            Console.WriteLine(resultado1 || log2);
            Console.WriteLine(!log1);
            log1 = !log2;
            Console.WriteLine(log1);

            // cuidado con el doble negado
            Console.WriteLine(!!log1);



            // ----------------------------
            // operadores 
            // ----------------------------

            //   &  operador Y 
            //   |  operador O 
            // Estos operadores siempre analizan los dos terminos
            // y despues la operación


            Console.WriteLine(log1 | log2);
            Console.WriteLine(log1 & log2);

            Console.WriteLine("mas operadores Logicos");
            int nro1 = 1;
            int nro2 = 2;
            int nro3 = 4;
            int nro4 = 4;
            int nro5 = 5;
            Console.WriteLine(nro3 == nro4);
            Console.WriteLine(nro3 != nro4);
            Console.WriteLine(nro4 == nro5);

            Console.WriteLine("mas todavia");
            Console.WriteLine(nro3 > 4);
            Console.WriteLine(nro3 > 4 && nro1 > nro2);
            Console.WriteLine(nro3 > 0 && nro1 + nro2 == 10);

            // los operadores == != >= <=
            // no llevan espacios entre los 2 caracteres
            // no se le puede cambiar el orden de los caracteres

            // ----------------------------
            // Operador ^ OR exclusivo
            // ----------------------------
            // no hay ^^
            // Funciona como el OR pero si ambos operadores son true devuelve false
            // Para devolver true, ambos operadores deben ser diferentes
            bool k = true;
            bool t = true;
            Console.WriteLine(k ^ t);
            int a;
            a = 30;
            a = (k ? ++a : --a);
            Console.WriteLine(a);


            // Definición de constantes usando final y en mayusculas

            // la palabra final define a las constantes
            // por conveción los nombres de constantes van en mayusculas
            const float PI = 3.14f;
            Console.WriteLine(PI);
            //  Esto No es posible  PI ++
            Console.WriteLine(PI);
        }

        static void Si()
        {
            // ----------------------------
            // Operador Condicional IF
            // ----------------------------

            int condicion = 3;
            Console.WriteLine("Condición = " + condicion);


            // modo recomendado para JAVA
            if (condicion == 3)
            {
                Console.WriteLine("La condición se cumplio");
            }
            // notar que cuando abrimos unas { y luego presionamos enter
            // la IDE no agrega automaticamente la } que cierra

            // modo abreviado para una sola sentencia
            // sin llaves
            if (condicion == 3)
                Console.WriteLine("La condición se cumplio");

            // el primer punto y coma finaliza la estructura
            // solo cuando hay una sola linea en el ambito



            // Modo colegio
            if (condicion == 3)
            {
                Console.WriteLine("La condición se cumplio");
            }
            // este modo es muy comun en educación pero da lugar a poner por error ; 
            // detras de la sentencia IF
            // este modo es el recomendado por Microsoft para C# y C++ no es para java, 
            // pero igual se lo puede usar 
        }
    }
}
