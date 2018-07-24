using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Empresa
    {
        //atributos de lectura/escritura, publicos
        public string Cuit { get; set; }
        public string Contacto { get; set; }

        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }

        public Empresa(string nombre, string cuit, string contacto, string email, string telefono, string direccion)
        {
            this.Cuit = cuit;
            this.Contacto = contacto;

            this.Nombre = nombre;
            this.Email = email;
            this.Telefono = telefono;
            this.Direccion = direccion;

        }
    }
}
