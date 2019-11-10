using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemplateMantenimiento
{
    public partial class Salidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Variables para las salidas
            lblDeclaracion.Text = (string)Session["declaracionProblema"];
            lblEvaluacion.Text = (string)Session["criticidad"];
            lblTipoRequerimiento.Text = (string)Session["tipoMantenimiento"];
            lblPrioridad.Text = (string)Session["prioridad"];
            //Verificación
            if (lblTipoRequerimiento.Text!="Correctivo")
            {
                divVerificacion.Visible = false;
            }
            lblEstrategia.Text = (string)Session["estrategiaPrueba"];
            lblVersion.Text = (string)Session["versionSoftware"];
            lblDetalleResultadosPruebas.Text = (string)Session["resultadosPruebas"];
            lblReplicar.Text = (string)Session["exitoReplicacion"];

            lblResponsable.Text = (string)Session["personalResponsable"];
            lblPesos.Text = (string)Session["estimacionPesos"];
            lblDias.Text = (string)Session["estimacionDias"];
            lblOpcionRecomendada.Text = (string)Session["opcionRecomendada"];
            lblEstadoSolicitud.Text = (string)Session["estadoSolicitud"];


        }
    }
}