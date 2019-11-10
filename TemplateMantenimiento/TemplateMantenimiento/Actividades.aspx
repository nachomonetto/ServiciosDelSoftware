<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actividades.aspx.cs" Inherits="TemplateMantenimiento.Actividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="Content/bootstrap.min.css">
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>--%>
    <script src="scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
        /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
        .row.content {
            height: 1500px;
        }

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

            .row.content {
                height: auto;
            }
        }

        .margenes {
            margin-left: 80px;
            margin-right: 80px;
        }
    </style>

    <script type="text/javascript">
        // Solo permite ingresar numeros.
        function soloNumeros(e) {
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

                        </ul>
                        <br>
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
                        <h1 style="text-align: center">ANÁLISIS DE MODIFICACIONES Y PROBLEMAS</h1>
                        <br />
                        <div class="alert alert-info" style="font-size: 18px" runat="server">
                            <strong>Detalle de solicitud de mantenimiento:</strong><br />
                            <br />
                            Nombre del programa a modificar:
                            <asp:Label ID="lblNombrePrograma" runat="server" Text="Label"></asp:Label><br />
                            Ruta absoluta del archivo a modificar: 
                            <asp:Label ID="lblRutaAbsoluta" runat="server" Text="Label"></asp:Label><br />
                            Tamaño del programa fuente en líneas de código (LCD):
                            <asp:Label ID="lblLineasDeCodigo" runat="server" Text="Label"></asp:Label><br />
                            Tamaño del ejecutable en Kb:
                            <asp:Label ID="lblTamañoEjecutable" runat="server" Text="Label"></asp:Label><br />
                            Lenguaje de programación:
                            <asp:Label ID="lblLenguajeProgramacion" runat="server" Text="Label"></asp:Label><br />
                            Fecha de instalación del programa:
                            <asp:Label ID="lblFechaInstalacion" runat="server" Text="Label"></asp:Label><br />
                            Número de ejecuciones del programa desde la instalación:
                            <asp:Label ID="lblEjecuciones" runat="server" Text="Label"></asp:Label><br />
                            Número de fallos:
                            <asp:Label ID="lblFallos" runat="server" Text="Label"></asp:Label><br />
                            Número de sentencias a añadir, modificar o eliminar en el cambio:
                            <asp:Label ID="lblSentencias" runat="server" Text="Label"></asp:Label><br />
                            <br />
                            Identificación de la persona que solicitó el cambio:
                            <br />
                            <br />
                            Nombre:
                            <asp:Label ID="lblNombreSolicitante" runat="server" Text="Label"></asp:Label><br />
                            Apellido:
                            <asp:Label ID="lblApellidoSolicitante" runat="server" Text="Label"></asp:Label><br />
                            Área de la Empresa:
                            <asp:Label ID="lblArea" runat="server" Text="Label"></asp:Label><br />
                            E-Mail:
                            <asp:Label ID="lblMail" runat="server" Text="Label"></asp:Label><br />
                            Celular:
                            <asp:Label ID="lblCelular" runat="server" Text="Label"></asp:Label><br />
                            Nombre del superior:
                            <asp:Label ID="lblNombreSuperior" runat="server" Text="Label"></asp:Label><br />
                            Apellido del superior:
                            <asp:Label ID="lblApellidoSuperior" runat="server" Text="Label"></asp:Label>
                            <br />
                            <br />
                            Tipo de mantenimiento:
                            <asp:Label ID="lblTipoMantenimiento" runat="server" Text="Label"></asp:Label><br />
                            Fecha de comienzo del mantenimiento:
                            <asp:Label ID="lblFechaInicio" runat="server" Text="Label"></asp:Label><br />
                            Fecha de fin del mantenimiento:
                            <asp:Label ID="lblFechaFin" runat="server" Text="Label"></asp:Label><br />
                            Beneficios netos que supone el cambio:
                            <asp:Label ID="lblBeneficios" runat="server" Text="Label"></asp:Label>

                        </div>
                        <h1 style="text-align: center">Tareas</h1>
                        <br />
                        <h4>Antes de modificar el sistema, usted debería analizar la MR/PR para determinar su impacto en la organización, en el sistema existente y en los sistemas conectados con él; desarrollar y documentar las posibles soluciones recomendadas, así como obtener la aprobación para implementar la solución deseada. A continuación, se describen las tareas específicas a realizar en esta etapa.</h4>
                        <hr />
                        <h3>Análisis de reporte de problemas y requerimientos de modificación</h3>

                        <div class="form-group">
                            <div class="well">
                                <h4><strong>Alcance de la modificación</strong></h4>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="well">
                                            <h4>Seleccione el tamaño:</h4>
                                            <div class="radio">
                                                <%--<label><input type="radio" text="Muy grande"></label>--%>
                                                <asp:RadioButton ID="rbMuyGrande" type="radio" Text="Muy grande" GroupName="Tamaño" runat="server" />
                                            </div>
                                            <div class="radio">
                                                <%--<label><input type="radio" name="optradio">Grande</label>--%>
                                                <asp:RadioButton ID="rbGrande" type="radio" Text="Grande" GroupName="Tamaño" runat="server" />
                                            </div>
                                            <div class="radio">
                                                <%--<label><input type="radio" name="optradio">Mediano</label>--%>
                                                <asp:RadioButton ID="rbMediano" type="radio" Text="Mediano" GroupName="Tamaño" runat="server" />
                                            </div>
                                            <div class="radio">
                                                <%--<label><input type="radio" name="optradio">Chica</label>--%>
                                                <asp:RadioButton ID="rbChica" type="radio" Text="Chica" GroupName="Tamaño" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="well">
                                            <h4>Ingrese cuantos días llevará concretar la modificación:</h4>
                                            <input type="text" runat="server" class="form-control" id="txtDiasModificacion" onkeypress="return soloNumeros(event)">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="well">
                                            <h4>Ingrese el coste en dinero aproximado:</h4>
                                            <div class="input-group">
                                                <span class="input-group-addon">$</span>
                                                <input id="txtCostoEnDinero" runat="server" type="text" class="form-control" name="msg" placeholder="En pesos..." onkeypress="return soloNumeros(event)">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="well">

                                <h4><strong>Seleccione criticidad:</strong></h4>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Crítica--%>
                                    <asp:RadioButton ID="rbCritica" type="radio" Text="Crítica" GroupName="Criticidad" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Alta--%>
                                    <asp:RadioButton ID="rbAlta" type="radio" Text="Alta" GroupName="Criticidad" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Media--%>
                                    <asp:RadioButton ID="rbMedia" type="radio" Text="Media" GroupName="Criticidad" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Baja--%>
                                    <asp:RadioButton ID="rbBaja" type="radio" Text="Baja" GroupName="Criticidad" runat="server" />
                                </label>

                            </div>
                            <div class="well">
                                <h4>Ahora debe analizar la factibilidad de la MR/PR.</h4>
                                <h4><strong>¿Se cuenta con personal adecuado para implementar el cambio?</strong></h4>
                                <label class="radio-inline">
                                    <%--  <input type="radio" name="optradio">Si--%>
                                    <asp:RadioButton ID="rbSiPersonal" AutoPostBack="true" type="radio" Text="Si" GroupName="Personal" runat="server" OnCheckedChanged="rbSiPersonal_CheckedChanged" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">No--%>
                                    <asp:RadioButton ID="rbNoPersonal" AutoPostBack="true" type="radio" Text="No" GroupName="Personal" runat="server" OnCheckedChanged="rbNoPersonal_CheckedChanged" />
                                </label>
                                <div class="auto" id="divAuto" runat="server" visible="false">
                                <h4><strong>Complete los datos de contacto del responsable:</strong></h4>
                                <div class="input-group">
                                    <span class="input-group-addon">Nombre</span>
                                    <input id="txtNombreResponsable" runat="server" type="text" class="form-control" name="msg">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">Apellido</span>
                                    <input id="txtApellidoResponsable" runat="server" type="text" class="form-control" name="msg">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">Área de la Empresa</span>
                                    <input id="txtArea" runat="server" type="text" class="form-control" name="msg">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">E-Mail</span>
                                    <input id="txtMail" runat="server" type="text" class="form-control" name="msg">
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">Celular</span>
                                    <input id="txtCelular" runat="server" type="text" class="form-control" name="msg">
                                </div>
                                    </div>
                                <h4><strong>¿Tenemos el dinero para llevar a cabo el cambio?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiDinero" type="radio" Text="Si" GroupName="Dinero" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbNoDinero" type="radio" Text="No" GroupName="Dinero" runat="server" />
                                </label>
                               <%-- <h4><strong>¿El cambio afectaría a otros proyectos?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiAfectacion" type="radio" Text="Si" GroupName="Afectacion" runat="server" AutoPostBack="true" OnCheckedChanged="rbSiAfectacion_CheckedChanged" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbNoAfectacion" type="radio" Text="No" GroupName="Afectacion" runat="server" AutoPostBack="true" OnCheckedChanged="rbNoAfectacion_CheckedChanged" />
                                </label>--%>
                                <h4><strong>Detalle el nombre de los proyectos afectados y si se les quitarían recursos para realizar el cambio</strong></h4>
                                <div id="divAfectacion">
                                    <div class="row">
                                        <div class="col-sm-6" id="divProyectos">

                                           <input type="text" class="form-control" id="txtProyecto" runat="server" placeholder="Nombre del proyecto..."><br />

                                        </div>
                                        <div class="col-sm-6" id="divRecursos">
                                            <input type="text" class="form-control" id="txtRecursos" placeholder="Recursos a sacrificar..."><br />
                                        </div>
                                    </div>
                                    <button type="button" onclick="funcionAfectacion()" class="btn btn-primary btn-lg btn-block">Agregar proyecto</button>
                                </div>
                                   

                                <h4><strong>En cuanto a la seguridad, ¿El cambio podría dejar vulnerable al sistema?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiSeguridad" AutoPostBack="true" type="radio" Text="Si" GroupName="Seguridad" runat="server" OnCheckedChanged="rbSiSeguridad_CheckedChanged" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="RbNoSeguridad" AutoPostBack="true" type="radio" Text="No" GroupName="Seguridad" runat="server" OnCheckedChanged="RbNoSeguridad_CheckedChanged" />
                                </label>
                                <div id="divSeguridad" visible="false" runat="server">
                                    <h4><strong>Detalle implicaciones en la seguridad física y lógica</strong></h4>
                                <div class="form-group">
                                    <textarea class="form-control" id="txtSeguridad" runat="server" rows="3"></textarea>
                                </div>
                                </div>
                                
                                <h4><strong>Detalle el beneficio que genera realizar la modificación. No siempre se tiene en cuenta la rentabilidad, el no corregir errores debido a altos costes puede afectar nuestra imagen</strong></h4>
                                <textarea class="form-control" id="txtBeneficiosALargoPlazo" runat="server" rows="3"></textarea>
                                <h4><strong>Seleccione el nivel de Testing requerido:</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbTestingAlto" type="radio" Text="Alto" GroupName="Testing" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Alta--%>
                                    <asp:RadioButton ID="rbTestingMedio" type="radio" Text="Medio" GroupName="Testing" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">Media--%>
                                    <asp:RadioButton ID="rbTestingBajo" type="radio" Text="Bajo" GroupName="Testing" runat="server" />
                                </label>


                            </div>

                            <%--<asp:Button ID="btnActividades" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Pasar a actividades >" OnClick="btnActividades_Click" />--%>
                        </div>
                        <hr />
                        <h3>Verificación</h3>
                        <div class="form-group">
                            <div class="well">
                                <h4><strong>Describa la estrategia de prueba a seguir para verificar el problema: </strong></h4>
                                <textarea class="form-control" id="txtEstrategia" runat="server" rows="3"></textarea>
                                <h4><strong>Versión de software afectada de Gestión de Configuración</strong></h4>
                                <asp:TextBox ID="txtVersion" CssClass="form-control" runat="server"></asp:TextBox><br />
                                <button type="button" class="btn btn-primary btn-lg btn-block">Instalar versión</button>
                                <button type="button" class="btn btn-info btn-lg btn-block">Ver copia de los datos afectados</button>
                                <button type="button" class="btn btn-success btn-lg btn-block">Ejecutar</button>
                                <h4><strong>Detalle los resultados observados de las pruebas</strong></h4>
                                <textarea class="form-control" id="txtResultados" runat="server" rows="3"></textarea>
                                <h4><strong>¿Se pudo replicar el problema con éxito?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiReplicacion" type="radio" Text="Si" GroupName="Replicacion" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbNoReplicacion" type="radio" Text="No" GroupName="Replicacion" runat="server" />
                                </label>
                            </div>
                        </div>
                        <hr />
                        <h3>Opciones</h3>
                        <div class="form-group">
                            <div class="well">
                                <h4><strong>Asigne prioridad a la MR/PR</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbPrioridadAlta" type="radio" Text="Alta" GroupName="Prioridad" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbPrioridadMedia" type="radio" Text="Media" GroupName="Prioridad" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbPrioridadBaja" type="radio" Text="Baja" GroupName="Prioridad" runat="server" />
                                </label>
                                <h4><strong>Defina los requerimientos más sólidos de la modificación y los riesgos asociados a cada uno de ellos si no se llegaran a realizar.</strong></h4>
                                <textarea id="txtReqSolidos" class="form-control" runat="server" rows="3"></textarea>
                                <h4><strong>Estimar tamaño de la modificación prevista. Para ello, agregue los Casos de Uso afectados por la modificación y la complejidad de cada uno en base a la siguiente tabla:</strong></h4>
                                <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Número de transacciones del CU</th>
                                        <th>Tipo</th>
                                        
                                   </tr>
                               </thead>
                               <tbody>
                                    <tr>
                                        <td>Menor o igual que 3</td>
                                        <td>Simple</td>
                                        
                                   </tr>
                                   <tr>
                                        <td>Mayor o igual que 4 y menor que 7</td>
                                        <td>Medio</td>
                                        
                                   </tr>
                                   <tr>
                                        <td>Mayor o igual que 7</td>
                                        <td>Complejo</td>
                                        
                                   </tr>
                               </tbody>
                               </table>
                                <br />
                                <%--<div id="myDiv">
                                     <input type="text" class="form-control" id="txtCU" placeholder="Nombre del CU...">
                                     <input type="text" class="form-control" id="txtComplejidad" placeholder="Complejidad...">
                                     <br />

                                </div>--%>
                                <div class="row">
                                    <div class="well">
                                        <div class="col-sm-6" id="divCU">
                                        <input type="text" class="form-control" id="txtCU" placeholder="Nombre del CU..."><br />
                                    </div>
                                    <div class="col-sm-6" id="divComplejidad">
                                        <input type="text" class="form-control" id="txtComplejidad" placeholder="Complejidad..."><br />
                                    </div>
                                        <button type="button" onclick="myFunction()" class="btn btn-primary btn-lg btn-block">Agregar CU</button>
                                </div>
                                <br />
                                
                                    </div>
                                    
                               
                                <script>
                                    function myFunction() {
                                        var node1 = document.createElement("div");
                                        var node2 = document.createElement("div");

                                        var txtCU = document.createElement("INPUT");
                                        txtCU.setAttribute("type", "text");
                                        txtCU.setAttribute("placeholder", "Nombre del CU...");
                                        txtCU.setAttribute("class", "form-control");

                                        var txtComplejidad = document.createElement("INPUT");
                                        txtComplejidad.setAttribute("type", "text");
                                        txtComplejidad.setAttribute("placeholder", "Complejidad...");
                                        txtComplejidad.setAttribute("class", "form-control");

                                        var br1 = document.createElement("BR");
                                        var br2 = document.createElement("BR");

                                        node1.appendChild(txtCU);
                                        node1.appendChild(br1);
                                        node2.appendChild(txtComplejidad);
                                        node2.appendChild(br2);
                                        document.getElementById("divCU").appendChild(node1);
                                        document.getElementById("divComplejidad").appendChild(node2);
                                    }
                                    function funcionAfectacion(){
                                        var node1 = document.createElement("div");
                                        var node2 = document.createElement("div");

                                        var txtProyecto = document.createElement("INPUT");
                                        txtProyecto.setAttribute("type", "text");
                                        txtProyecto.setAttribute("placeholder", "Nombre del proyecto...");
                                        txtProyecto.setAttribute("class", "form-control");

                                        var txtRecursos = document.createElement("INPUT");
                                        txtRecursos.setAttribute("type", "text");
                                        txtRecursos.setAttribute("placeholder", "Recursos a sacrificar...");
                                        txtRecursos.setAttribute("class", "form-control");

                                        var br1 = document.createElement("br");
                                        var br2 = document.createElement("br");

                                        node1.appendChild(txtProyecto);
                                        node1.appendChild(br1);
                                        node2.appendChild(txtRecursos);
                                        node2.appendChild(br2);
                                        document.getElementById("divProyectos").appendChild(node1);
                                        document.getElementById("divRecursos").appendChild(node2);
                                    }
                                    function funcionOpciones() {
                                        
                                        var node1 = document.createElement("div");
                                        var node2 = document.createElement("div");
                                        var node3 = document.createElement("div");
                                        var node4 = document.createElement("div");

                                        

                                        var txtOpcion = document.createElement("textarea");
                                        txtOpcion.setAttribute("type", "text");                                     
                                        txtOpcion.setAttribute("class", "form-control");

                                        

                                        var txtImpacto = document.createElement("textarea");
                                        txtImpacto.setAttribute("type", "text");
                                        txtImpacto.setAttribute("class", "form-control");

                                       

                                        var txtRiesgos = document.createElement("textarea");
                                        txtRiesgos.setAttribute("type", "text");
                                        txtRiesgos.setAttribute("class", "form-control");

                                      

                                        var rbOpcion = document.createElement("input");
                                        
                                        rbOpcion.setAttribute("name", "optradio");
                                        rbOpcion.setAttribute("type", "radio");

                                        var br1 = document.createElement("br");
                                        var br2 = document.createElement("br");
                                        var br3 = document.createElement("br");

                                        var br4 = document.createElement("br");
                                        var br5 = document.createElement("br");
                                        var br6 = document.createElement("br");
                                        var br7 = document.createElement("br");
                                        var br8 = document.createElement("br");
                                        
                                        node1.appendChild(txtOpcion);
                                        node1.appendChild(br1);
                                        
                                        node2.appendChild(txtImpacto);
                                        node2.appendChild(br2);
                                        
                                        node3.appendChild(txtRiesgos);
                                        node3.appendChild(br3);
                                        
                                        node4.appendChild(rbOpcion);
                                        node4.appendChild(br4);
                                        node4.appendChild(br5);
                                        node4.appendChild(br6);
                                        node4.appendChild(br7);
                                        node4.appendChild(br8);

                                        document.getElementById("divOpcion").appendChild(node1);
                                        document.getElementById("divImpacto").appendChild(node2);
                                        document.getElementById("divRiesgos").appendChild(node3);
                                        document.getElementById("divAceptar").appendChild(node4);
                                    }
                                
                                </script>

                                <%--<textarea id="txtTamañoYMagnitud" class="form-control" runat="server" rows="3"></textarea>--%>
                                <h4><strong>Desarrolle las opciones para implementar la modificación, definiendo el impacto en Hw y Usuarios, y los riesgos asociados a las opciones</strong></h4>
                                <div class="well">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group" id="divOpcion">
                                        <label for="usr">Opción</label>
                                        <textarea id="txtOpcion" class="form-control" runat="server"></textarea>
                                        <br />
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group" id="divImpacto">
                                        <label for="usr">Impacto en Hw y Usuarios</label>
                                        <textarea id="Textarea1" class="form-control" runat="server"></textarea>
                                        <br />
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group" id="divRiesgos">
                                        <label for="usr">Riesgos</label>
                                        <textarea id="Textarea6" class="form-control" runat="server"></textarea>
                                        <br />
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="form-group" id="divAceptar">
                                        <label for="usr">Opción a aceptar</label><br />
                                        <input type="radio" name="optradio">
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />

                                        </div>
                                    </div>
                                </div>
                                <button type="button" onclick="funcionOpciones()" class="btn btn-primary btn-lg btn-block">Agregar Opción</button>                        
                                
                                </div>
                   
                                <h4><strong>Desarrolle un plan para implementar la modificación:</strong></h4>
                                <textarea id="Textarea9" class="form-control" runat="server"></textarea>
                        </div>
                    </div>
                        <h3>Documentación</h3>
                        <hr />
                        <div class="form-group">
                            <div class="well">
                                <h4><strong>Verifique, a través del siguiente botón, que los análisis aporpiados y la documentación del proyecto están actualizados:</strong></h4>
                                <button type="button" class="btn btn-success btn-lg btn-block">Verificar</button>
                                <h4>¿No existe documentación al respecto? Desarrolle la documentación correspondiente</h4>
                                <button type="button" class="btn btn-success btn-lg btn-block">Generar documentación</button>

                            </div>
                            <div class="well">
                                <h4><strong>Revise la estrategia de pruebas propuesta y planificación para intentar obtener una exactitud mayor.</strong></h4>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Revisar estrategia de pruebas</button>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Revisar calendario</button>

                            </div>
                            <div class="well">
                                <h4><strong>Revise la estimación de recursos para una mayor precisión</strong></h4>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Revisar estimación de recursos</button>

                            </div>
                            <div class="well">
                                <h4><strong>Actualice el estado de la Base de Datos</strong></h4>
                                <button type="button" class="btn btn-primary btn-lg btn-block">Actualizar BD</button>
                            </div>
                            <div class="well">
                                <h4><strong>Incluir una Recomendación para indicar si la MR/PR debería aprobarse o no. Al documentar el informe se deben dar a los directores de proyecto la recomendación personal sobre la MR/PR, lo que les permitirá tener una segunda opinión a la hora de decidir</strong></h4>
                                <textarea id="Textarea2" class="form-control" runat="server"></textarea>
                            </div>

                        </div>
                        <h3>Aprobación</h3>
                        <hr />
                        <div class="well">
                            <h4><strong>Presentar los resultados del análisis para su aprobación por parte de los grupos de administración</strong></h4>
                        <button class="w3-button w3-block w3-teal">Enviar resultados</button>
                        </div>
                        <div class="well">
                            <h4><strong>Una vez aprobada la modificación actualizar el estado de la petición de modificación</strong></h4>
                            <div class="form-group">
                           <label for="sel1">Actualizar: </label>
                            <select class="form-control" id="sel1">
                                <option>Pendiente</option>
                                <option selected>En proceso</option>
                                <option>Aceptada</option>
                                <option>Rechazada</option>
                            </select>
                            </div>
                            
                       </div>
                        <div class="well">
                            <h4><strong>Una vez aprobada, actualizar también los requerimientos (en caso de que la petición sea una mejora)</strong></h4>
                            <button class="w3-button w3-block w3-black">Actualizar requerimientos</button>
                        </div>
                        


                </div>
            </div>

                </div>
        </div>
    </form>
</body>
</html>

