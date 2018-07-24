using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Vendedor:Persona
    {
        public string Dni { get; set; }

        public Vendedor(string nombre, string apellido, string email, string telefono, string direccion, string dni)
        {
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Email = email;
            this.Telefono = telefono;
            this.Direccion = direccion;
            this.Dni = dni;
        }
    }
}
