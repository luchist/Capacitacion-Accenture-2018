using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Remito:DocumentoComercial
    {
        public Remito(string numero, DateTime fecha, string cliente, string direccion, string condicioniva, string condicionventa, string detalle, decimal total)
        {
            this.Numero = numero;
            this.Fecha = fecha;
            this.Cliente = cliente;
            this.Direccion = direccion;
            this.Condicioniva = condicioniva;
            this.Condicionventa = Condicionventa;
            this.Detalle = detalle;
            this.Total = total;
        }
    }
}
