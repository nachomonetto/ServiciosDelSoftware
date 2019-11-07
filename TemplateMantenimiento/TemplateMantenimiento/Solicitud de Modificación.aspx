<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Solicitud de Modificación.aspx.cs" Inherits="TemplateMantenimiento.Solicitud_de_Modificación" %>

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
<body class="margenes">
    <form id="form1" runat="server">
    <div>
        <div class="container-fluid">
  <div class="row content">
   

    <div class="col-sm-12">
      <h1 style="text-align:center">Solicitud de Modificación</h1>
      <br />
      <h2>Complete los siguientes campos: </h2>  
      <br />
        <div class="well">
      
      <div class="form-group">
          <label for="usr">Nombre del programa a modificar e información general</label>
          
        <textarea class="form-control" rows="3"></textarea>
      </div>
            </div>
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Ruta absoluta del archivo a modificar:</label>
                <input type="text" class="form-control" id="rutaAbsoluta">
            </div>
        </div>
        <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Tamaño del programa fuente en líneas de código (LCD):</label>
      
        <input type="text" class="form-control" id="tamañoFuente" onKeyPress="return soloNumeros(event)">
            </div>
            </div>
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Tamaño del ejecutable en Kb:</label>
      
                <input type="text" class="form-control" id="tamañoEjecutable" onKeyPress="return soloNumeros(event)">
                </div>
            </div>
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Lenguaje de programación:</label>
            
            <input type="text" class="form-control" id="usr">
            </div>
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Fecha de instalación del programa:</label>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </div>
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Número de ejecuciones del programa desde la instalación:</label>
                    <input type="text" class="form-control" id="ejecuciones" onKeyPress="return soloNumeros(event)">
            </div>
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Número de fallos:</label>
                    <input type="text" class="form-control" id="fallos" onKeyPress="return soloNumeros(event)">
            </div>
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Número de sentencias a añadir, modificar o eliminar en el cambio:</label>
                    <input type="text" class="form-control" id="sentencias" onKeyPress="return soloNumeros(event)">
            </div>
        </div>    
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Identifiación de la persona que solicitó el cambio:</label>
                    <div class="input-group">
                    <span class="input-group-addon">Nombre</span>
                    <input id="nombreSolicitante" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Apellido</span>
                    <input id="ApellidoSolicitante" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Área de la Empresa</span>
                    <input id="areaSolicitante" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">E-Mail</span>
                    <input id="mailSolicitante" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Celular</span>
                    <input id="celularSolicitante" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Nombre del Superior</span>
                    <input id="nombreSuperior" type="text" class="form-control" name="msg">
                </div>
                <div class="input-group">
                    <span class="input-group-addon">Apellido del Superior</span>
                    <input id="apellidoSuperior" type="text" class="form-control" name="msg">
                </div>
            </div>
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Tipo de mantenimiento:</label><br />
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
        </div>
      
      <hr />
        <div class="well">
            <div class="form-group">
                <label for="usr">Fecha de comienzo y fin del mantenimiento:</label>
                <br />
                <br />
                Fecha Inicio
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                <br />
                Fecha Fin
                <asp:Calendar ID="Calendar3" runat="server"></asp:Calendar>
            </div>
        </div>
        <hr />
      <div class="well">
          <div class="form-group">
              <label for="usr">Beneficios netos que sopone el cambio:</label>
              <textarea class="form-control" rows="3"></textarea>
          </div>
      </div>
      <br />
      <button type="button" class="btn btn-success btn-lg btn-block">Enviar ></button>
      
    </div>

  </div>
</div>


    </div>
    </form>
</body>
</html>
