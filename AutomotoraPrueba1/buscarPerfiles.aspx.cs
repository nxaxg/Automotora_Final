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
    public partial class buscarPerfiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblBienvenido.Visible = true;
            }
        }

        protected void limpiar()
        {
            txtUserBuscar.Text = string.Empty;
            txtTipoBuscar.Text = string.Empty;
            txtPassBuscar.Text = string.Empty;
        }

        protected void btnBuscarUsuario_Click(object sender, EventArgs e)
        {
            lblControlBusquedaPerfil.Text = string.Empty;
            try
            {
                EPerfil perfilEN = new Perfil_N().buscarPerfil(txtbuscarUsuario.Text);
                if (txtbuscarUsuario.Text.Equals("") || perfilEN.Username.Equals(""))
                {
                    lblControlBusquedaPerfil.Text = "Por favor, ingrese username de perfil a buscar";
                }
                if (perfilEN != null)
                {
                    txtUserBuscar.Text = perfilEN.Username.ToString();
                    txtPassBuscar.Text = perfilEN.Password.ToString();
                    if (perfilEN.Tipo_permiso.Equals(1))
                    {
                        txtTipoBuscar.Text = "Distribuidora";
                    }
                    else
                    {
                        txtTipoBuscar.Text = "Taller";
                    }
                }
                else
                {
                    lblControlBusquedaPerfil.Text = "No existe perfil buscado";
                    limpiar();
                }
            }
            catch
            {
                limpiar();
                lblControlBusquedaPerfil.Text = "No se puedo buscar en BD";
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
            lblControlBusquedaPerfil.Text = string.Empty;
            txtbuscarUsuario.Text = string.Empty;
        }
    }
}