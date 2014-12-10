using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Entidades;
using Negocio;
using Presentacion;


namespace Presentacion
{
    public partial class Home : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                EPerfil perfilIngresar = new EPerfil();
                perfilIngresar.Username = txtUsername.Text;
                perfilIngresar.Password = txtPassword.Text;
                if (new Perfil_N().autentificarPerfil(perfilIngresar))
                {
                    Session["VariableNombre"] = txtUsername.Text;
                    if (new Perfil_N().buscarTipo(perfilIngresar.Username).Equals(1))
                        Response.Redirect("RespuestaDistribuidora.aspx");
                    else if (new Perfil_N().buscarTipo(perfilIngresar.Username).Equals(2))
                        Response.Redirect("RespuestaTaller.aspx");
                }
                else if (txtUsername.Text.Equals("") || txtPassword.Text.Equals(""))
                {
                    Label3.Text = "Ingrese sus datos";
                }
                else
                {
                    Label3.Text = "Usuario y/o password inexistentes. Intente nuevamente.";
                }
            }
            catch (Exception)
            {
                Label3.Text = "Error al consultar BD desde capa Presentación";
            }
        }
    }
}