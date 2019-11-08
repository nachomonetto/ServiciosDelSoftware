using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Globalization;

namespace TemplateMantenimiento
{
    public partial class Solicitud_de_Modificación : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Session["nombrePrograma"] = txtNombrePrograma.Value;
            Session["rutaAbsoluta"] = txtRutaAbsoluta.Value;
            Session["lineasDeCdogio"] = txtLineasDeCodigo.Value;
            Session["tamañoEjecutable"] = txtTamañoEjecutable.Value;
            Session["lenguaje"] = txtLenguajeProgramacion.Value;
            Session["fechaInstalación"] = Convert.ToString(calendarFechaInstalacion.SelectedDate.ToShortDateString());
            Session["ejecuciones"] = txtEjecuciones.Value;
            Session["fallos"] = txtFallos.Value;
            Session["sentencias"] = txtSentencias.Value;
            Session["nombreSolicitante"] = txtNombreSolicitante.Value;
            Session["apellidoSolicitante"] = txtApellidoSolicitante.Value;
            Session["areaSolicitante"] = txtAreaSolicitante.Value;
            Session["mailSolicitante"] = txtMailSolicitante.Value;
            Session["celularSolicitante"] = txtCelularSolicitante.Value;
            Session["nombreSuperior"] = txtNombreSuperior.Value;
            Session["apellidoSuperior"] = txtApellidoSuperior.Value;
            if (rbCorrectiva.Checked == true)
            {
                Session["tipoMantenimiento"] = rbCorrectiva.Text;
            }
            if (rbPreventiva.Checked == true)
            {
                Session["tipoMantenimiento"] = rbPreventiva.Text;
            }
            if (rbAdaptativa.Checked == true)
            {
                Session["tipoMantenimiento"] = rbAdaptativa.Text;
            }
            if (rbMejora.Checked == true)
            {
                Session["tipoMantenimiento"] = rbMejora.Text;
            }
       
            Session["fechaInicio"] = Convert.ToString(calendarFechaInicio.SelectedDate.ToShortDateString());
           
            Session["fechaFin"] = Convert.ToString(calendarFechaFin.SelectedDate.ToShortDateString()); 
            Session["beneficios"] = txtBeneficios.Value;

            Response.Redirect("Entradas.aspx");
        }
    }
}