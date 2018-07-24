using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class ClienteIndividuo:Persona
    {
        public string Cuit { get; set; }

        public ClienteIndividuo(string nombre, string apellido, string email, string telefono, string direccion, string cuit)
        {
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Email = email;
            this.Telefono = telefono;
            this.Direccion = direccion;
            this.Cuit = cuit;
        }
    }
}
