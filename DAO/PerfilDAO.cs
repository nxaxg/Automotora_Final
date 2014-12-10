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
    public partial class PerfilDAO
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

        public static EPerfil filaPerfiles(string username)
        {
            PERFIL perfilBD = Conexion.PERFIL.SingleOrDefault<PERFIL>(a => a.USERNAME.Equals(username));
            EPerfil perfilEN = new EPerfil();
            if (perfilBD == null)
            {
                return null;
            }
            else
            {
                perfilEN.Username = perfilBD.USERNAME;
                perfilEN.Password = perfilBD.PASSWORD;
                perfilEN.Tipo_permiso = Int32.Parse(perfilBD.TIPO_PERMISO.ToString());
                perfilEN.RUT_dist = perfilBD.RUT_DIST;
                perfilEN.RUT_taller = perfilBD.RUT_TALLER;
                return perfilEN;
            }
        }

        public static void agregarPerfil(EPerfil perfilEN)
        {
            PERFIL perfilBD = new PERFIL();
            perfilBD.USERNAME = perfilEN.Username;
            perfilBD.PASSWORD = perfilEN.Password;
            perfilBD.TIPO_PERMISO = Convert.ToInt32(perfilEN.Tipo_permiso);
            perfilBD.RUT_DIST = perfilEN.RUT_dist;
            perfilBD.RUT_TALLER = perfilEN.RUT_taller;
            Conexion.AddToPERFIL(perfilBD);
            Conexion.SaveChanges();

        }

        public void eliminarPerfil(EPerfil perf)
        {
            PERFIL bdPerfil = Conexion.PERFIL.Single<PERFIL>(a => a.USERNAME.Equals(perf.Username));
            Conexion.PERFIL.DeleteObject(bdPerfil);
            Conexion.SaveChanges();
        }

        public static Boolean existePerfil(EPerfil perfilEN)
        {
            try
            {
                PERFIL perfilBD = Conexion.PERFIL.SingleOrDefault<PERFIL>(a => a.USERNAME.Equals(perfilEN.Username) && a.PASSWORD.Equals(perfilEN.Password));

                if (perfilBD.USERNAME.Equals(perfilEN.Username))
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
