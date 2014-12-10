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
    public partial class manejoRepuestos1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                txtBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                txtBienvenido.Visible = true;
            }
        }

        protected void limpiar()
        {
            txtIdRepAgregar.Text = string.Empty;
            txtNomRepAgregar.Text = string.Empty;
            txtMarRepAgregar.Text = string.Empty;
            txtOrRepAgregar.Text = string.Empty;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                ERepuesto nuevoRepuesto = new ERepuesto();
                nuevoRepuesto.ID_repuesto = txtIdRepAgregar.Text;
                nuevoRepuesto.Marca = txtMarRepAgregar.Text;
                nuevoRepuesto.Calidad = ddlCalidad.SelectedItem.ToString();
                nuevoRepuesto.Origen = txtOrRepAgregar.Text;
                nuevoRepuesto.Estado = ddlEstado.SelectedItem.ToString();
                nuevoRepuesto.Nombre_repuesto = txtNomRepAgregar.Text;
                if (new Repuesto_N().buscarRepuesto(txtIdRepAgregar.Text) != null)
                {
                    lblControl.Text = "Repuesto existente en BD";
                }
                else
                {
                    new Repuesto_N().agregarRepuesto(nuevoRepuesto);
                    lblControl.Text = "Repuesto agregado a base de datos";
                    this.limpiar();
                }
            }
            catch
            {
                lblControl.Text = "Error al tratar de agregar a base de datos";
                this.limpiar();
            }
        }


        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["VariableNombre"] = null;
            Response.Redirect("Home.aspx");
        }

        private void llenadoCombo(object sender, EventArgs e)
        {
            ClientWebService.WebServiceJapomotora webserv = new ClientWebService.WebServiceJapomotora();
            System.Data.DataSet ds = webserv.llenarCombo();
        }
    }
}