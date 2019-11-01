<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="TemplateMantenimiento.Actividades" %>

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
  </style>

    <script type="text/javascript">
    // Solo permite ingresar numeros.
        function soloNumeros(e){
	    var key = window.Event ? e.which : e.keyCode
	    return (key >= 48 && key <= 57)
    }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Entradas</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="#section1">Informe del problema y solicitud de modificación (MR/PR)</a></li>
        <li><a href="#section2">Línea base</a></li>
        <li><a href="#section3">Repositorio de Software</a></li>
        <li><a href="#section4">Información del estado de configuración</a></li>
        <li><a href="#section5">Requerimientos funcionales</a></li>
        <li><a href="#section6">Requerimientos de interfaz</a></li>
        <li><a href="#section7">Datos de la planificación del proyecto</a></li>
        <li><a href="#section8">Salidas de la actividad de implementación del proceso</a></li>

      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Buscar..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>

    <div class="col-sm-9">
      <h1 style="text-align:center">ANÁLISIS DE MODIFICACIONES Y PROBLEMAS</h1>
       <br />
        
        <h1 style="text-align:center">Actividades</h1> 
        <br />
        <h4>Antes de modificar el sistema, usted debería analizar la MR/PR para determinar su impacto en la organización, en el sistema existente y en los sistemas conectados con él; desarrollar y documentar las posibles soluciones recomendadas, así como obtener la aprobación para implementar la solución deseada. A continuación, se describen las tareas específicas a realizar en esta etapa.</h4>
        <hr />
        <h3>Análisis de reporte de problemas y requerimientos de modificación</h3>
        
        <div class="form-group">
            <div class="well">
            <h4><strong>Seleccione el tipo de modificación:</strong></h4>
                <label class="radio-inline">
                <input type="radio" name="optradio">Correctiva
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Preventiva
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Adaptativa
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Mejora
                </label>
            </div>
            <div class="well">
           <h4><strong>Alcance de la modificación</strong></h4>
            <div class="row">
            <div class="col-sm-4">
                <div class="well">
                <h4>Seleccione el tamaño:</h4>
                <div class="radio">
                <label><input type="radio" name="optradio">Muy grande</label>
                </div>
                <div class="radio">
                <label><input type="radio" name="optradio">Grande</label>
                </div>
                <div class="radio">
                <label><input type="radio" name="optradio">Mediano</label>
                </div>
                <div class="radio">
                <label><input type="radio" name="optradio">Chica</label>
                </div>
                    </div>
            </div>
            <div class="col-sm-4">
                <div class="well">
                <h4>Ingrese cuantos días llevará concretar la modificación:</h4>
                    <input type="text" class="form-control" id="usr" onKeyPress="return soloNumeros(event)">
                    </div>
            </div>
            <div class="col-sm-4">
                <div class="well">
                <h4>Ingrese el coste en dinero aproximado:</h4>
                   <div class="input-group">
                    <span class="input-group-addon">$</span>
                    <input id="msg" type="text" class="form-control" name="msg" placeholder="En pesos..." onKeyPress="return soloNumeros(event)">
    </div>
                    </div>
            </div>
            </div>
                </div>
            <div class="well">

                <h4><strong>Seleccione criticidad:</strong></h4>
                <label class="radio-inline">
                <input type="radio" name="optradio">Crítica
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Alta
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Media
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">Baja
                </label>

        </div>
            <div class="well">
                <h4>Ahora debe analizar la factibilidad de la MR/PR.</h4>
                <h4><strong>¿Se cuenta con personal adecuado para implementar el cambio?</strong></h4>
                <label class="radio-inline">
                <input type="radio" name="optradio">Si
                </label>
                <label class="radio-inline">
                <input type="radio" name="optradio">No
                </label>

                <h4>En el caso que la respuesta sea “Si”, <strong>complete los datos de contacto del responsable:</strong></h4>
                <div class="input-group">
                    <span class="input-group-addon">Nombre</span>
                    <input id="msg" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Apellido</span>
                    <input id="msg" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Área de la Empresa</span>
                    <input id="msg" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">E-Mail</span>
                    <input id="msg" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Celular</span>
                    <input id="msg" type="text" class="form-control" name="msg">
                </div>
            </div>
        </div>

        <%--<asp:Button ID="btnActividades" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Pasar a actividades >" OnClick="btnActividades_Click" />--%>
      
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>
    </div>
    </form>
</body>
</html>

