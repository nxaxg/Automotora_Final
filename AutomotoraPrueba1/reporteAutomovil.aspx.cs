using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;
using System.Text;
using System.Drawing;
using System.IO;

#region new using
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Reporting;
using CrystalDecisions.Shared;
#endregion

namespace AutomotoraPrueba1
{
    public partial class reporteAutomovil : System.Web.UI.Page
    {
        //OracleConnection con = new OracleConnection("DATA SOURCE=localhost:1521/XE;USER ID=AUTOM;PASSWORD=autom;");
        //string crPath = "C:/Users/Nicolas/Desktop/PORTAFOLIO/proy/Automotora_09-07_v2/AutomotoraPrueba1/ReporteAutos.rpt";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["VariableNombre"] != null)
            {
                lblBienvenido.Text = "Bienvenido/a " + Session["VariableNombre"].ToString();
                lblBienvenido.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["VariableSession"] = null;
            Response.Redirect("Home.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            generarReporte(txtVinReporte.Text);
        }

        public void generarReporte(string marca)
        {
            string mar = "";
            mar = marca;
            try
            {
                ReportDocument report = new ReportDocument();
                ParameterField param = new ParameterField();
                ParameterFields parames = new ParameterFields();
                ParameterDiscreteValue dv = new ParameterDiscreteValue();
                if (marca != null)
                {
                    param.Name = "mar";
                    dv.Value = mar;
                    param.CurrentValues.Add(dv);
                    parames.Add(param);
                    CrystalReportViewer1.ParameterFieldInfo = parames;
                    report.Load(Server.MapPath("ReporteAutos.rpt"));
                    CrystalReportViewer1.ReportSource = report;
                    report.SetDatabaseLogon("AUTOM", "autom");
                }
                else
                {
                    lblControl.Text = "Ingrese valor de búsqueda";
                }
                
            }
            catch (Exception)
            {
                lblControl.Text = "Error al generar reporte";
            }
            
        }

        protected void CrystalReportViewer1_Init(object sender, EventArgs e)
        {




            #region
            /*if (vin.Equals("") || vin.Equals(" "))
            {
                OracleDataAdapter adapter1 = new OracleDataAdapter("SELECT VIN_AUTOMOVIL, MARCA_AUTOMOVIL, MODELO_AUTOMOVIL, AÑO_AUTOMOVIL FROM AUTOMOVIL", con);
                dsAutomovil dsauto = new dsAutomovil();
                adapter1.Fill(dsauto.AUTOMOVIL);
                ReporteAutomoviles rep = new ReporteAutomoviles();
                rep.SetDataSource(dsauto);
                CrystalReportViewer1.ReportSource = rep;
            }
            else
            {
                string cadena = ("SELECT VIN_AUTOMOVIL, MARCA_AUTOMOVIL, MODELO_AUTOMOVIL, AÑO_AUTOMOVIL FROM AUTOMOVIL where VIN_AUTOMOVIL=" + vin).ToString();
                OracleDataAdapter adapter2 = new OracleDataAdapter(cadena, con);
                dsAutomovil dsauto = new dsAutomovil();
                adapter2.Fill(dsauto.AUTOMOVIL);
                ReporteAutomoviles rep = new ReporteAutomoviles();
                rep.SetDataSource(dsauto);
                CrystalReportViewer1.ReportSource = rep;
            }*/
            #endregion
        }

    }
}