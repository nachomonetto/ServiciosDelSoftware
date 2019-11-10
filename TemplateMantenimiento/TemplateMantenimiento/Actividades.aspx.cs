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
            lblProblema.Text=(string)Session["problema"];
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

        protected void btnSalidas_Click(object sender, EventArgs e)
        {
            Session["declaracionProblema"] = txtDeclaracion.Value;
            if (rbCritica.Checked==true)
            {
                Session["criticidad"] = "Crítica";
            }
            if (rbAlta.Checked==true)
            {
                Session["criticidad"] = "Media";
            }
            if (rbAlta.Checked == true)
            {
                Session["criticidad"] = "Baja";
            }

            //La variable tipoMantenimiento ya está seteada

            if (rbPrioridadAlta.Checked==true)
            {
                Session["prioridad"] = "Alta";
            }
            if (rbPrioridadAlta.Checked == true)
            {
                Session["prioridad"] = "Media";
            }
            if (rbPrioridadAlta.Checked == true)
            {
                Session["prioridad"] = "Baja";
            }

            Session["estrategiaPrueba"] = txtEstrategia.Value;
            Session["versionSoftware"] = txtVersion.Text;
            Session["resultadosPruebas"] = txtResultados.Value;

            if (rbSiReplicacion.Checked==true)
            {
                Session["exitoReplicacion"] = "Si";
            }
            if (rbNoReplicacion.Checked == true)
            {
                Session["exitoReplicacion"] = "No";
            }

            Session["personalResponsable"] = txtNombreResponsable.Value + ' ' + txtApellidoResponsable.Value;
            Session["estimacionPesos"] = txtCostoEnDinero.Value;
            Session["estimacionDias"] = txtDiasModificacion.Value;
            Session["opcionRecomendada"] = txtOpcion.Value;
            Session["estadoSolicitud"] = "Aprobada";

            Response.Redirect("Salidas.aspx");
        }
    }
}