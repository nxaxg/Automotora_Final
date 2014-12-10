using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data.Odbc;
using System.Data.Entity;
using System.Data.EntityClient;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;


namespace AutomotoraPrueba1
{
    public partial class stockPorTaller : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblBienvenido.Visible = true;
            }
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection("DATA SOURCE=localhost:1521/XE;USER ID=AUTOM;PASSWORD=autom;");
            OracleDataAdapter adapter = new OracleDataAdapter("SELECT ID_REPUESTO, MARCA, CALIDAD, ORIGEN, ESTADO, NOMBRE_REPUESTO FROM REPUESTO", con);
            dsRepuesto dsrep = new dsRepuesto();
            adapter.Fill(dsrep.REPUESTO);
            ReporteRepuestos rep = new ReporteRepuestos();
            rep.SetDataSource(dsrep);
            CrystalReportViewer1.ReportSource = rep;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["VariableSession"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}