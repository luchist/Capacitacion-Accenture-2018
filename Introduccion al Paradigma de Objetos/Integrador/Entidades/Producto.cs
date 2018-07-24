using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Producto
    {
        //atributos
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal Preciocosto { get; set; }
        public double Margen { get; set; }
        public double Iva { get; set; }
        public string Proveedor { get; set; }
        public string Categoria { get; set; }
        public string Subcategoria { get; set; }

        //atributos de solo lectura

        public decimal Preciobruto
        {
            get
            {
                return (Preciocosto + (decimal)Margen);
            }
        }

        public decimal Precioventa
        {
            get
            {
                return (Preciobruto + (decimal)Iva);
            }
        }

        //constructores

        //constructor que toma todos los parametros
        public Producto(string nombre, string descripcion, decimal preciocosto, double margen, double iva, string proveedor, string categoria, string subcategoria)
        {
            this.Nombre = nombre;
            this.Descripcion = descripcion;
            this.Preciocosto = preciocosto;
            this.Margen = margen;
            this.Iva = iva;
            this.Proveedor = proveedor;
            this.Categoria = categoria;
            this.Subcategoria = subcategoria;

        }

        //metodos

        public void detalleProducto()
        {

            Console.WriteLine("Producto\n");
            Console.WriteLine("Nombre: " + this.Nombre);
            Console.WriteLine("Descripcion: " + this.Descripcion);
            Console.WriteLine("Precio de Costo: $" + this.Preciocosto);
            Console.WriteLine("Margen: " + this.Margen + " %");
            Console.WriteLine("I.V.A.: " + this.Iva + " %");
            Console.WriteLine("Precio bruto: $" + this.Preciobruto);
            Console.WriteLine("Precio bruto: $" + this.Precioventa);
            Console.WriteLine("Proveedor: " + this.Proveedor);
            Console.WriteLine("Categoria: " + this.Categoria);
            Console.WriteLine("Categoria: " + this.Subcategoria);

            Console.ReadKey();
        }

    }
}
