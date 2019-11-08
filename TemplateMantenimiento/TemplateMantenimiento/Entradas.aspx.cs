using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TemplateMantenimiento
{
    public partial class Entradas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnActividades_Click(object sender, EventArgs e)
        {
            Response.Redirect("Actividades.aspx");
        }

        protected void btnEntradas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Solicitud de Modificación.aspx");
        }
    }
}