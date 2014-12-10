using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Oracle.DataAccess.Client;
using System.Configuration;
using System.Configuration.Assemblies;
using System.IO;

namespace DAO
{
    public class Conexion
    {
        private OracleConnection con { get; set; }

        public OracleConnection getConexion()
        {
            if (con == null)
            {
                string conexion = System.Configuration.ConfigurationSettings.AppSettings["CONEXION"].ToString();
                con = new OracleConnection(conexion);
            }
            return con;
        }

    }
}
