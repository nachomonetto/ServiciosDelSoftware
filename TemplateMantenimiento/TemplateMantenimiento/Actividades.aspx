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
                        <h1 style="text-align: center">Actividades</h1>
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
                                    <asp:RadioButton ID="rbSiPersonal" type="radio" Text="Si" GroupName="Personal" runat="server" />
                                </label>
                                <label class="radio-inline">
                                    <%--<input type="radio" name="optradio">No--%>
                                    <asp:RadioButton ID="rbNoPersonal" type="radio" Text="No" GroupName="Personal" runat="server" />
                                </label>

                                <h4>En el caso que la respuesta sea “Si”, <strong>complete los datos de contacto del responsable:</strong></h4>
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
                                <h4><strong>¿Tenemos el dinero para llevar a cabo el cambio?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiDinero" type="radio" Text="Si" GroupName="Dinero" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbNoDinero" type="radio" Text="No" GroupName="Dinero" runat="server" />
                                </label>
                                <h4><strong>¿El cambio afectaría a otros proyectos?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiAfectacion" type="radio" Text="Si" GroupName="Afectacion" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbNoAfectacion" type="radio" Text="No" GroupName="Afectacion" runat="server" />
                                </label>
                                <h4>En el caso que la respuesta sea “Si”, <strong>Detalle el nombre de los proyectos afectados y si se les quitarían recursos para realizar el cambio</strong></h4>

                                <textarea class="form-control" id="txtProyectos" runat="server" rows="3"></textarea>

                                <h4><strong>En cuanto a la seguridad, ¿El cambio podría dejar vulnerable al sistema?</strong></h4>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="rbSiSeguridad" type="radio" Text="Si" GroupName="Seguridad" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="RbNoSeguridad" type="radio" Text="No" GroupName="Seguridad" runat="server" />
                                </label>
                                <h4>En el caso que la respuesta sea “Si”, <strong>Detalle implicaciones en la seguridad física y lógica</strong></h4>
                                <div class="form-group">
                                    <textarea class="form-control" id="txtSeguridad" runat="server" rows="3"></textarea>
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
                                <h4><strong>Estimar tamaño y magnitud de la modificación prevista: </strong></h4>
                                <textarea id="txtTamañoYMagnitud" class="form-control" runat="server" rows="3"></textarea>
                                <h4><strong>Desarrolle al menos 3 opciones para implementar la modificación, definiendo el impacto en Hw y Usuarios, y los riesgos asociados a las opciones</strong></h4>
                                <div class="well">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Opción 1</label>
                                        <textarea id="txtOpcion" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Impacto en Hw y Usuarios</label>
                                        <textarea id="Textarea1" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Riesgos</label>
                                        <textarea id="Textarea6" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Opción 2</label>
                                        <textarea id="Textarea2" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Impacto en Hw y Usuarios</label>
                                        <textarea id="Textarea3" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Riesgos</label>
                                        <textarea id="Textarea7" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Opción 3</label>
                                        <textarea id="Textarea4" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Impacto en Hw y Usuarios</label>
                                        <textarea id="Textarea5" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group">
                                        <label for="usr">Riesgos</label>
                                        <textarea id="Textarea8" class="form-control" runat="server"></textarea>
                                        </div>
                                    </div>
                                </div>
                                
                                </div>
                                <h4><strong>Determine la opción a aceptar: </strong></h4>
                                
                                <label class="radio-inline">

                                    <asp:RadioButton ID="RadioButton1" type="radio" Text="Opción 1" GroupName="Opciones" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="RadioButton2" type="radio" Text="Opción 2" GroupName="Opciones" runat="server" />
                                </label>
                                <label class="radio-inline">

                                    <asp:RadioButton ID="RadioButton3" type="radio" Text="Opción 3" GroupName="Opciones" runat="server" />
                                </label>
                                <h4><strong>Desarrolle un plan para implementar la modificación:</strong></h4>
                                <textarea id="Textarea9" class="form-control" runat="server"></textarea>
                        </div>
                    </div>
                        <h3>Documentación</h3>
                        <hr />
                </div>
            </div>


        </div>
    </form>
</body>
</html>

