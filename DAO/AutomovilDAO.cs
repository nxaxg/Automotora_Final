using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Entidades;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;
using System.Reflection;
using System.Data;
using System.Data.Entity;
using System.Data.EntityClient;
using System.Data.Objects;

namespace DAO
{
    public partial class AutomovilDAO
    {
        protected static Entities conexion = null;

        public static Entities Conexion
        {
            get
            {
                if (conexion == null)
                {
                    conexion = new Entities();
                }
                return conexion;
            }
        }

        public static EAutomovil filaAutos(string vin)
        {
            AUTOMOVIL autoBD = Conexion.AUTOMOVIL.SingleOrDefault<AUTOMOVIL>(a => a.VIN_AUTOMOVIL.Equals(vin));
            EAutomovil autoEN = new EAutomovil();
            if (autoBD == null)
            {
                return null;
            }
            else
            {
                autoEN.VIN_auto = autoBD.VIN_AUTOMOVIL;
                autoEN.Marca_auto = autoBD.MARCA_AUTOMOVIL;
                autoEN.Modelo_auto = autoBD.MODELO_AUTOMOVIL;
                autoEN.Año_auto = Int32.Parse(autoBD.AÑO_AUTOMOVIL.ToString());
                return autoEN;
            }
        }

        public static void agregarAuto(EAutomovil nuevoAuto)
        {
            AUTOMOVIL autoBD = new AUTOMOVIL();
            autoBD.VIN_AUTOMOVIL = nuevoAuto.VIN_auto;
            autoBD.MARCA_AUTOMOVIL = nuevoAuto.Marca_auto;
            autoBD.MODELO_AUTOMOVIL = nuevoAuto.Modelo_auto;
            autoBD.AÑO_AUTOMOVIL = Convert.ToInt32(nuevoAuto.Año_auto);
            Conexion.AddToAUTOMOVIL(autoBD);
            Conexion.SaveChanges();
        }

        public static Boolean existeAuto(EAutomovil autoEN)
        {
            try
            {
                AUTOMOVIL autoBD = Conexion.AUTOMOVIL.SingleOrDefault<AUTOMOVIL>(a => a.VIN_AUTOMOVIL.Equals(autoEN.VIN_auto));
                if (autoBD.VIN_AUTOMOVIL.Equals(autoEN.VIN_auto))
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
