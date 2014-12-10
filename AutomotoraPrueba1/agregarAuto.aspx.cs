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
    public partial class enviarStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblBienvenido.Visible = true;
            }
        }

        protected void btnAgregarAuto_Click(object sender, EventArgs e)
        {
            try
            {
                EAutomovil nuevoAuto = new EAutomovil();
                nuevoAuto.VIN_auto = txtVin.Text;
                nuevoAuto.Marca_auto = ddlMarca.SelectedItem.ToString();
                nuevoAuto.Modelo_auto = txtModelo.Text;
                nuevoAuto.Año_auto = Int32.Parse(txtAño.Text.ToString());
                if (new Automovil_N().buscarPorVin(txtVin.Text) != null)
                {
                    lblControl.Text = "Ya existe Automovil con ese VIN";
                }
                else
                {
                    new Automovil_N().agregarAuto(nuevoAuto);
                    lblControl.Text = "Automovil agregado a base de datos";
                }

            }
            catch
            {
                lblControl.Text = "Error al tratar de agregar a base de datos";
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }
    }
}