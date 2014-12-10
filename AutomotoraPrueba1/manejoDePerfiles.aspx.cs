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
    public partial class manejoDePerfiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                txtBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                txtBienvenido.Visible = true;
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                EPerfil nuevoPerfil = new EPerfil();
                nuevoPerfil.Username = txtAddUsername.Text;
                nuevoPerfil.Password = txtAddPassword.Text;
                nuevoPerfil.Tipo_permiso = Int32.Parse(ddlTipoUsuario.SelectedValue.ToString());
                nuevoPerfil.RUT_dist = "38.204.053-7";
                nuevoPerfil.RUT_taller = "25.234.567-8";
                if (new Perfil_N().buscarPerfil(txtAddUsername.Text) != null)
                {
                    lblRespuestaAgregar.Text = "Ya existe un usuario con ese nombre";
                }
                else
                {
                    new Perfil_N().agregarPerfil(nuevoPerfil);
                    lblRespuestaAgregar.Text = "Perfil agregado a la base de datos";
                }

            }
            catch
            {
                lblRespuestaAgregar.Text = "Error al tratar de agregar a la BD";
            }

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}