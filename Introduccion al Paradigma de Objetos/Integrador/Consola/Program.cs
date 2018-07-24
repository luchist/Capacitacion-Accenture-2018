using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Consola
{
    class Program
    {
        static void Main(string[] args)
        {
            //Instancio las clases
            var clienteIndividuo = new ClienteIndividuo("cliente", "individuo", "cliente_individuo@gmail.com", "42568878", "av libertadores 5622", "20457892358");
            var clienteEmpresa = new Empresa("cliente", "empresa", "cliente_empresa@gmail.com", "42568899", "av libertadores 5699", "21457877358");
            var vendedor = new Vendedor("vendedor","gomez","vgomez@gmail.com","42751018", "Lavalle 648", "457812786");
            var proveedor = new Empresa("proveedor", "2078945612", "contacto_proveedor", "proveedor@gmail.com", "456789123", "Lavalle 989");
            var factura = new Factura("A", "00123", DateTime.Now, "cliente", "Lavalle 648", "21", "?", "Detalle_factura", 100);
            var producto = new Producto("Capitan del Espacio","El alfajor mas pistola del condado", 10, 25, 21, "proveedor","Categoria A","Subcategoria A");

            producto.detalleProducto();

        }
    }
}
