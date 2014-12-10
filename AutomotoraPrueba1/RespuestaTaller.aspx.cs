using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomotoraPrueba1
{  
    public partial class RespuestaTaller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Button1.Visible = false;
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblNombreUsuario.Visible = false;
                lblBienvenido.Visible = true;
                Button1.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}