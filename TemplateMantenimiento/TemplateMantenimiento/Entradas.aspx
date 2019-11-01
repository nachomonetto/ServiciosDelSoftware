<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entradas.aspx.cs" Inherits="TemplateMantenimiento.Entradas" %>

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
    
</head>
<body class="margenes">
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
  <div class="row content">
    <%--<div class="col-sm-3 sidenav">
      <h4>John's Blog</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Home</a></li>
        <li><a href="#section2">Friends</a></li>
        <li><a href="#section3">Family</a></li>
        <li><a href="#section3">Photos</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>--%>

    <div class="col-sm-12">
      <h1 style="text-align:center">ANÁLISIS DE MODIFICACIONES Y PROBLEMAS</h1>
       <br />
        
        <h1 style="text-align:center">Entradas</h1> 
        <br />
        <h4>A continuación, se especifican las correspondientes entradas a esta etapa del proceso en forma de botón-enlace, el cual lo redirigirá al detalle de dicha entrada</h4>
      <hr>
      <button type="button" class="btn btn-primary btn-lg btn-block">Informe del problema y solicitud de modificación (MR/PR)</button>
      <h4>En caso que en el detalle el usuario no especifique la causa que provocó la necesidad de una modificación, intente reproducirlo. Además, detalle que condiciones hace que se vea afectado el software:</h4>
        <div class="form-group">
          <textarea class="form-control" rows="3"></textarea>
        </div>
        <hr />
        <button type="button" class="btn btn-primary btn-lg btn-block">Línea base</button>
        <hr />
        <button type="button" class="btn btn-primary btn-lg btn-block">Repositorio de Software</button>
        <hr />
        <div class="form-group">
        <div class="btn-group">
            <button type="button" class="btn btn-primary btn-lg">Documentación del Sistema</button>
            <button type="button" class="btn btn-primary dropdown-toggle btn-lg" data-toggle="dropdown">
            <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
            <li><a href="#">Información del estado de configuración</a></li>
            <li><a href="#">Requerimientos funcionales</a></li>
            <li><a href="#">Requerimientos de interfaz</a></li>
            <li><a href="#">Datos de la planificación del proyecto</a></li>
            <li><a href="#">Salidas de la actividad de implementación del proceso</a></li>
            </ul>
            </div>
  </div>
        <hr />
        <asp:Button ID="btnActividades" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Pasar a actividades >" OnClick="btnActividades_Click" />
      
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
