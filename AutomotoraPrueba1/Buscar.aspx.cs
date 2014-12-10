using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace AutomotoraPrueba1
{
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblNombreUsuario.Visible = false;
                lblBienvenido.Visible = true;
                if (new Perfil_N().buscarTipo(Session["VariableNombre"].ToString()).Equals(1))
                {
                    btnBuscarPerfiles.Visible = false;
                }
            }
        }

        protected void btnBuscarRepuestos_Click(object sender, EventArgs e)
        {
             Response.Redirect("buscarRepuestos.aspx");
        }

        protected void btnBuscarPerfiles_Click(object sender, EventArgs e)
        {
            Response.Redirect("buscarPerfiles.aspx"); 
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void btnBuscarAuto_Click(object sender, EventArgs e)
        {
            Response.Redirect("manejoBuscarAuto.aspx");
        }
    }
}