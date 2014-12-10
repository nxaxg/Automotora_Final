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
    public partial class buscarRepuestos : System.Web.UI.Page
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
            txtResCalRep.Text = string.Empty;
            txtResEstRep.Text = string.Empty;
            txtResMarRep.Text = string.Empty;
            txtResNomRep.Text = string.Empty;
            txtResOrRep.Text = string.Empty;
        }

        protected void btnBuscarIDRep_Click(object sender, EventArgs e)
        {
            lblControl.Text = string.Empty;
            try
            {
                ERepuesto repuestoEN = new Repuesto_N().buscarRepuesto(txtIDBusqRepuestos.Text);
                if (txtIDBusqRepuestos.Text.Equals(""))
                {
                    lblControl.Text = "Por favor, ingrese ID de repuesto a buscar";
                }
                if ((repuestoEN != null))
                {
                    txtResNomRep.Text = repuestoEN.Nombre_repuesto.ToString();
                    txtResMarRep.Text = repuestoEN.Marca.ToString();
                    txtResCalRep.Text = repuestoEN.Calidad.ToString();
                    txtResOrRep.Text = repuestoEN.Origen.ToString();
                    txtResEstRep.Text = repuestoEN.Estado.ToString();
                }
                else
                {
                    lblControl.Text = "No existe repuesto con ese ID";
                    limpiar();
                   
                }
            }
            catch
            {
                limpiar();
                lblControl.Text = "No se pudo buscar en la BD";
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
            txtIDBusqRepuestos.Text = string.Empty;
        }
    }
}