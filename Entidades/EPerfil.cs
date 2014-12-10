using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class EPerfil
    {
        
        public string Username { get; set; }
        public string Password { get; set; }
        public int Tipo_permiso { get; set; }
        public string RUT_dist { get; set; }
        public string RUT_taller { get; set; }
    }
}
