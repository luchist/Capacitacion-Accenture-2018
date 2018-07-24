using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Introduccion_al_Paradigma_de_Objetos
{
    class CDRom
    {
        int idCDRom = 0;
        int ejemplaresDisponibles;
        string titulo;
        string genero;
        DateTime fechaLanzamiento;

        public CDRom(int stock, string titulo, string genero, DateTime lanzamiento)
        {
            idCDRom++;
            this.ejemplaresDisponibles = stock;
            this.titulo = titulo;
            this.genero = genero;
            this.fechaLanzamiento = lanzamiento;
        }

        public string getTitulo()
        {
            return titulo;
        }

        public void print()
        {
            Console.WriteLine("-----------------------------");
            Console.WriteLine("-\t" + this.titulo + "\t-");
            Console.WriteLine("-----------------------------");
            Console.WriteLine("                             ");
            Console.WriteLine("            -----            ");
            Console.WriteLine("-        /        \\        -");
            Console.WriteLine("-        |    0    |        -");
            Console.WriteLine("-        \\       /         -");
            Console.WriteLine("            -----            ");
            Console.WriteLine("                             ");
            Console.WriteLine("-\t" + this.fechaLanzamiento + "\t-");
            Console.WriteLine("-----------------------------");

        }

        public int cheaquearStock()
        {
            return ejemplaresDisponibles;
        }

        public void prestar()
        {
            ejemplaresDisponibles--;
            Console.WriteLine("Se presto un " + this.titulo);
        }

        public void recibir()
        {
            ejemplaresDisponibles++;
            Console.WriteLine("Se devolvio un " + this.titulo);
        }
    }
    
    /// //////////////////////////////////////////////////////////////////////////////////////////////////////
    
    class Cliente
    {
        bool problemas;
        List<Alquiler> historial;
        string nombre;
        string apellido;
        int codigoCliente;

        public void prestarCD(CDRom cd)
        {
            Console.WriteLine("El cliente " + this.nombre + " " + this.apellido + " va a prestar un " + cd.getTitulo());
            cd.prestar();
        }

        public void listarPedidos()
        {
            Console.WriteLine(historial);
        }
    }

    /// //////////////////////////////////////////////////////////////////////////////////////////////////////

    class Alquiler
    {
        int idAlquiler;
        int idCDRom;
        int idCliente;
        DateTime fechaPrestamo;
        DateTime fechaDevolucion;

        public void chequear()
        {

        }
    }

    /// //////////////////////////////////////////////////////////////////////////////////////////////////////

    class Local
    {
        List<CDRom> populares;
        List<CDRom> novedades;
        List<CDRom> todos;
    }

    /// //////////////////////////////////////////////////////////////////////////////////////////////////////

    class Program
    {
        static void Main(string[] args)
        {
            CDRom arjona = new CDRom(5,"Arjona Greatest Hits","Boleros",DateTime.Now);
            CDRom skrillex = new CDRom(10, "Skrillex Greatest Hits", "?", DateTime.Now);

            arjona.print();
            Console.ReadKey();
        }
    }
}
