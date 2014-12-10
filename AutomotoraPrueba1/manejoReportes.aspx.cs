using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotoraPrueba1
{
    public partial class manejoReportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblBienvenido.Visible = true;
                btnCerrarSesion.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void btnDirigirRepRepuestos_Click(object sender, EventArgs e)
        {
            Response.Redirect("stockPorTaller.aspx");
        }

        protected void btnDirigirReporteAutos_Click(object sender, EventArgs e)
        {
            Response.Redirect("reporteAutomovil.aspx");
        }
    }
}