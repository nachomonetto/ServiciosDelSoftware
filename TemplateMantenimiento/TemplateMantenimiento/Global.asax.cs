using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TemplateMantenimiento
{
    public class Global : System.Web.HttpApplication
    {
        
        protected void Application_Start(object sender, EventArgs e) { }       
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["nombrePrograma"] = "cadena";
            Session["rutaAbsoluta"] = "cadena";
            Session["lineasDeCdogio"] = "cadena";
            Session["tamañoEjecutable"] = "cadena";
            Session["lenguaje"] = "cadena";
            Session["fechaInstalación"] = "cadena";
            Session["ejecuciones"] = "cadena";
            Session["fallos"] = "cadena";
            Session["sentencias"] = "cadena";

            Session["nombreSolicitante"] = "cadena";
            Session["apellidoSolicitante"] = "cadena";
            Session["areaSolicitante"] = "candena";
            Session["mailSolicitante"] = "cadena";
            Session["celularSolicitante"] = "cadena";
            Session["nombreSuperior"] = "cadena";
            Session["apellidoSuperior"] = "cadena";

            Session["tipoMantenimiento"] = "cadena";
            Session["fechaInicio"] = "cadena";
            Session["fechaFin"] = "cadena";
            Session["problema"] = "cadena";
            Session["beneficios"] = "cadena";

            //Variables para las salidas

            Session["declaracionProblema"] = "cadena";
            Session["criticidad"] = "cadena";
            
            //La variable tipoMantenimiento ya está declarada más arriba
            Session["prioridad"] = "cadena";
            Session["estrategiaPrueba"] = "cadena";
            Session["versionSoftware"] = "cadena";
            Session["resultadosPruebas"] = "cadena";
            Session["exitoReplicacion"] = "cadena";
            Session["personalResponsable"] = "cadena";
            Session["estimacionPesos"] = "cadena";
            Session["estimacionDias"] = "cadena";
            Session["opcionRecomendada"] = "cadena";
            Session["estadoSolicitud"] = "cadena";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}