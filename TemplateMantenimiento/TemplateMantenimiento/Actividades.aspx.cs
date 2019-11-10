using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemplateMantenimiento
{
    public partial class Actividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNombrePrograma.Text= (string)Session["nombrePrograma"];
            lblRutaAbsoluta.Text= (string)Session["rutaAbsoluta"];
            lblLineasDeCodigo.Text=(string)Session["lineasDeCdogio"];
            lblTamañoEjecutable.Text = (string)Session["tamañoEjecutable"];
            lblLenguajeProgramacion.Text = (string)Session["lenguaje"];
            lblFechaInstalacion.Text = (string)Session["fechaInstalación"];
            lblEjecuciones.Text = (string)Session["ejecuciones"];
            lblFallos.Text = (string)Session["fallos"];
            lblSentencias.Text = (string)Session["sentencias"];
            lblNombreSolicitante.Text= (string)Session["nombreSolicitante"];
            lblApellidoSolicitante.Text = (string)Session["apellidoSolicitante"];
            lblArea.Text = (string)Session["areaSolicitante"];
            lblMail.Text = (string)Session["mailSolicitante"];
            lblCelular.Text = (string)Session["celularSolicitante"];
            lblNombreSuperior.Text = (string)Session["nombreSuperior"];
            lblApellidoSuperior.Text = (string)Session["apellidoSuperior"];
            lblTipoMantenimiento.Text = (string)Session["tipoMantenimiento"];
            lblFechaInicio.Text = (string)Session["fechaInicio"];
            lblFechaFin.Text = (string)Session["fechaFin"];
            lblBeneficios.Text = (string)Session["beneficios"];

        }

        protected void rbSiAfectacion_CheckedChanged(object sender, EventArgs e)
        {
            

        }

        protected void rbSiPersonal_CheckedChanged(object sender, EventArgs e)
        {
            divAuto.Visible = true;
            rbSiDinero.Focus();
        }

        protected void rbNoPersonal_CheckedChanged(object sender, EventArgs e)
        {
            divAuto.Visible = false;
            rbSiDinero.Focus();
        }

        protected void rbNoAfectacion_CheckedChanged(object sender, EventArgs e)
        {
            

        }

        protected void rbSiSeguridad_CheckedChanged(object sender, EventArgs e)
        {
            divSeguridad.Visible = true;
            txtBeneficiosALargoPlazo.Focus();
        }

        protected void RbNoSeguridad_CheckedChanged(object sender, EventArgs e)
        {
            divSeguridad.Visible = false;
            txtBeneficiosALargoPlazo.Focus();
        }
    }
}