using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Reflection;

namespace DAO
{
    public class RepuestoDAO
    {
        protected static Entities conexion = null;

        public static Entities Conexion
        {
            get
            {
                if (conexion == null)
                    conexion = new Entities();
                return conexion;
            }
        }

        public static ERepuesto filaRepuestos(string id_rep)
        {
            REPUESTO repuestoBD = Conexion.REPUESTO.SingleOrDefault<REPUESTO>(a => a.ID_REPUESTO.Equals(id_rep));
            ERepuesto repuestoEN = new ERepuesto();
            if (repuestoBD == null)
            {
                return null;
            }
            else
            {
                repuestoEN.ID_repuesto = repuestoBD.ID_REPUESTO;
                repuestoEN.Marca = repuestoBD.MARCA;
                repuestoEN.Calidad = repuestoBD.CALIDAD;
                repuestoEN.Origen = repuestoBD.ORIGEN;
                repuestoEN.Estado = repuestoBD.ESTADO;
                repuestoEN.Nombre_repuesto = repuestoBD.NOMBRE_REPUESTO;
                return repuestoEN;
            }
        }

        public static void agregarRepuesto(ERepuesto repuestoEN)
        {
            REPUESTO repuestoBD = new REPUESTO();
            repuestoBD.ID_REPUESTO = repuestoEN.ID_repuesto;
            repuestoBD.MARCA = repuestoEN.Marca;
            repuestoBD.CALIDAD = repuestoEN.Calidad;
            repuestoBD.ORIGEN = repuestoEN.Origen;
            repuestoBD.ESTADO = repuestoEN.Estado;
            repuestoBD.NOMBRE_REPUESTO = repuestoEN.Nombre_repuesto;
            Conexion.AddToREPUESTO(repuestoBD);
            Conexion.SaveChanges();
        }


        public static Boolean existeRepuesto(ERepuesto repuestoEN)
        {
            try
            {
                REPUESTO repuestoBD = Conexion.REPUESTO.SingleOrDefault<REPUESTO>(a => a.ID_REPUESTO.Equals(repuestoEN.ID_repuesto));
                if (repuestoBD.ID_REPUESTO.Equals(repuestoEN.ID_repuesto))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }


    }
}
