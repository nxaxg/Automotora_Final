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
    public partial class manejoBuscarAuto : System.Web.UI.Page
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
            txtVinABuscar.Text = string.Empty;
            txtModeloRes.Text = string.Empty;
            txtMarcaRes.Text = string.Empty;
            txtAñoRes.Text = string.Empty;
        }

        protected void btnBuscarAuto_Click(object sender, EventArgs e)
        {
            lblControl.Text = string.Empty;
            try
            {
                EAutomovil autoEN = new Automovil_N().buscarPorVin(txtVinABuscar.Text);
                if (txtVinABuscar.Text.Equals(""))
                {
                    lblControl.Text = "Por favor, ingrese VIN de automovil a buscar";
                }
                if (autoEN != null)
                {
                    txtMarcaRes.Text = autoEN.Marca_auto.ToString();
                    txtModeloRes.Text = autoEN.Modelo_auto.ToString();
                    txtAñoRes.Text = autoEN.Año_auto.ToString();
                }
                else
                {
                    lblControl.Text = "No existe Automovil con ese VIN";
                    limpiar();
                }
            }
            catch
            {
                limpiar();
                lblControl.Text = "Error al consultar base de datos";
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
            lblControl.Text = string.Empty;
        }
    }
}