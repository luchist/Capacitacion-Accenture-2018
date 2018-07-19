using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CicloFor
{
    class Program
    {
        static void Main(string[] args)
        {
            ForAnidado();
        }

        /*
        * CICLO FOR
        * 
        *  for (<inicializacion>, <condicion>, <incremento>)
        *  {
        *      <bloque>
        *  }
        *  
        *  
        */

        static void For()
        {
            int i = 300;
            for (i = 0; i < 10; i++)
            {
                Console.WriteLine(i);
            }
            Console.ReadKey();
        }

        static void ForAnidado()
        {
            for (int externo = 1; externo <= 4; externo++)
            {
                for (int interno = 1; interno <=5; interno++)
                {
                    Console.WriteLine("externo: {0} interno: {1}", externo, interno);
                }
            }
            Console.ReadKey();
        }
    }
}
