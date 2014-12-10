using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class ERepuesto
    {
        private string id_repuesto, marca, calidad, origen, estado, nombre_repuesto;

        public ERepuesto() { }

        public ERepuesto(string id_repuesto, string marca, string calidad, string origen, string estado, string nombre_repuesto)
        {
            this.id_repuesto = id_repuesto;
            this.marca = marca;
            this.calidad = calidad;
            this.origen = origen;
            this.estado = estado;
            this.nombre_repuesto = nombre_repuesto;
        }

        public string ID_repuesto { get; set; }
        public string Marca { get; set; }
        public string Calidad { get; set; }
        public string Origen { get; set; }
        public string Estado { get; set; }
        public string Nombre_repuesto { get; set; }

    }
}
