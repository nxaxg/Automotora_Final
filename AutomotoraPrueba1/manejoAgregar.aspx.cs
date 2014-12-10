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
    public partial class manejoRepuestos : System.Web.UI.Page
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
                    btnDirigirAgregarPerfiles.Visible = false;
                }
            }
        }

        protected void btnDirigirAgregarRepuestos_Click(object sender, EventArgs e)
        {
            Response.Redirect("manejoRepuestos.aspx");
        }

        protected void btnDirigirAgregarPerfiles_Click(object sender, EventArgs e)
        {
            Response.Redirect("manejoDePerfiles.aspx");
        }

        protected void btnDirigirAStock_Click(object sender, EventArgs e)
        {
            Response.Redirect("agregarAuto.aspx");
        }

        protected void btnCerrarSesion_Click1(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}