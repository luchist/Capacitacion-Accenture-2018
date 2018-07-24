using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Factura
    {
        public string Tipo { get; set; }
        public string Numero { get; set; }
        public DateTime Fecha { get; set; }
        public string Cliente { get; set; }
        public string Direccion { get; set; }
        public string CondicionIva { get; set; }
        public string CondicionVenta { get; set; }
        public string Detalle { get; set; }
        public decimal Total { get; set; }

        public Factura(string tipo, string numero, DateTime fecha, string cliente, string direccion, string condicionIva, string condicionVenta, string detalle, decimal total)
        {
            this.Tipo = tipo;
            this.Numero = numero;
            this.Fecha = fecha;
            this.Cliente = cliente;
            this.Direccion = direccion;
            this.CondicionIva = condicionIva;
            this.CondicionVenta = CondicionVenta;
            this.Detalle = detalle;
            this.Total = total;
        }
    }
}
