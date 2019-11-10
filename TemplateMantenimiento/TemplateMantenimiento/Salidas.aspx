<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Salidas.aspx.cs" Inherits="TemplateMantenimiento.Salidas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">--%>
      <link rel="stylesheet" href="Content/bootstrap.min.css">
  <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <script src="scripts/jquery-1.9.1.min.js"></script>
  <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>--%>
    <script src="scripts/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    .margenes {
        margin-left: 80px;
        margin-right:80px;
    }
     .loader {
    position: fixed;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    z-index: 9999;
    background: url('loadingGif.gif') 50% 50% no-repeat rgb(249,249,249);
    opacity: .8;
}
  </style>
    <script type="text/javascript">
$(window).load(function() {
    $(".loader").fadeOut("slow");
});
</script>
</head>
<body class="margenes"><div class="loader"></div>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="row content">
                        <div class="col-sm-12">
                            <h1 style="text-align:center">ANÁLISIS DE MODIFICACIONES Y PROBLEMAS</h1>
                            <br />
        
                            <h1 style="text-align:center">Salidas</h1> 
                            <br />
                            <h4>A continuación, se especifican las correspondientes salidas a esta etapa del proceso</h4>
                            <hr />
                            <div class="well">
                                <h4><strong>Análisis de Impacto</strong></h4>
                                <br />
                                <div class="alert alert-success">
                                    <strong>Declaración del problema o nuevo requerimiento: </strong>
                                    <asp:Label ID="lblDeclaracion" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <strong>Evaluación del problema o requerimiento/Criticidad: </strong>
                                    <asp:Label ID="lblEvaluacion" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <strong>Tipo de requerimiento: </strong>
                                    <asp:Label ID="lblTipoRequerimiento" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <strong>Prioridad inicial: </strong>
                                    <asp:Label ID="lblPrioridad" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <div id="divVerificacion" runat="server" class="alert alert-danger">
                                        <h4><strong>Datos de verificación (para modificaciones correctivas)</strong></h4>
                                        <strong>Estrategia de prueba a seguir para verificar el problema: </strong>
                                        <asp:Label ID="lblEstrategia" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <strong>Versión de software afectada de Gestión de Configuración: </strong>
                                        <asp:Label ID="lblVersion" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <strong>Detalle los resultados observados de las pruebas: </strong>
                                        <asp:Label ID="lblDetalleResultadosPruebas" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <strong>¿Se pudo replicar el problema con éxito? </strong>
                                        <asp:Label ID="lblReplicar" runat="server" Text="Label"></asp:Label>
                                    </div>
                                    <div class="well">
                                        <h4><strong>Estimación inicial de recursos</strong></h4>
                                        <br />
                                        <strong>Personal respondable de realizar el mantenimiento: </strong>
                                        <asp:Label ID="lblResponsable" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <strong>Estimación de los costos en pesos: </strong>
                                        <asp:Label ID="lblPesos" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <strong>Estimación de los días que llevará realizar el mantenimiento: </strong>
                                        <asp:Label ID="lblDias" runat="server" Text="Label"></asp:Label>

                                    </div>

                                </div>
                                <hr />
                                <h4><strong>Opción recomendada: </strong>
                                    <asp:Label ID="lblOpcionRecomendada" runat="server" Text="Label"></asp:Label></h4>
                                <hr />
                                <h4><strong>Estado de la solicitud de cambio: <asp:Label ID="lblEstadoSolicitud" runat="server" Text="Label"></asp:Label></strong></h4>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Ver documento de respuesta</button>
                                <hr />
                                <button type="button" class="btn btn-primary btn-lg btn-block">Ver documentación actualizada</button>
                            </div>
                            
                        </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>

