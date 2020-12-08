<%-- 
    Document   : PosiblesClientes
    Created on : 6/12/2020, 04:06:24 PM
    Author     : kevin
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Posibles Clientes</title>
        <!-- Bootstrap core CSS-->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

        <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>

    </head>
    <body class="bg-dark">

        <%
            if (request.getAttribute("stMensaje") != null) {
        %>     
        <input type="text" hidden="" id="txtMensaje" value="<%=request.getAttribute("stMensaje").toString()%>"/>
        <input type="text" hidden="" id="txtTipo" value="<%=request.getAttribute("stTipo").toString()%>"/>
        <script>
            swal("Mensaje", document.getElementById("txtMensaje").value, document.getElementById("txtTipo").value);
        </script>
        <%
            }
        %>    

        <%
            Models.clsPosiblesClientes obclsPosiblesClientes = new Models.clsPosiblesClientes();

            if (request.getAttribute("obclsPosiblesClientes") != null) {
                obclsPosiblesClientes = (Models.clsPosiblesClientes) request.getAttribute("obclsPosiblesClientes");
            }
            List<Models.clsPosiblesClientes> lstclsPosiblesClientes = new ArrayList<Models.clsPosiblesClientes>();
            if (request.getAttribute("lstclsPosiblesClientes") != null) {
                lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>) request.getAttribute("lstclsPosiblesClientes");
            }
        %>


        <div class="container">
            <div class="card mx-auto mt-5">
                <div class="card-header">Crear Posibles Clientes</div>
                <div class="card-body">
                    <form action="PosiblesClientesController" method="post">
                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-6">
                                    <input type="submit" value="Guardar" class="btn btn-primary" name="btnGuardar"/>
                                    <input type="submit" value="Modificar" class="btn btn-primary" name="btnModificar"/>
                                    <input type="submit" value="Cancelar" class="btn btn-primary" name="btnCancelar"/>
                                    <a class="btn btn-primary"  href="Index.jsp">Volver</a>
                                </div>
                            </div>    
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <h1>Informacion de Posible Cliente</h1>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblEmpresa">Empresa</label>
                                    <input type="text" placeholder="Empresa" name="txtEmpresa" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" placeholder="Nombres" name="txtNombre" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="text" placeholder="Apellidos" name="txtApellidos" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" placeholder="Titulo" name="txtTitulo" class="form-control"/>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo Electronico</label>
                                    <input type="text" placeholder="Correo Electronico" name="txtCorreoElectronico" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono</label>
                                    <input type="text" placeholder="Telefono" name="txtTelefono" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" placeholder="Fax" name="txtFax" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="text" placeholder="Movil" name="txtMovil" class="form-control"/>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" placeholder="Sitio Web" name="txtSitioWeb" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente de Posible Cliente</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Aviso</option>
                                        <option value="3">Llamada no solicitada</option>
                                        <option value="4">Recomendacion de empleado</option>
                                        <option value="5">Recomendacion externa</option>
                                        <option value="6">Tienda en linea</option>
                                    </select>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado de Posible Cliente</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Intento de contacto</option>
                                        <option value="3">Contactar en el futuro</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Posible cliente no solicitado</option>
                                        <option value="6">Posible cliente perdido</option>
                                    </select>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <select class="form-control" name="ddlSector">
                                        <option value="1">Ninguno</option>
                                        <option value="2">APS(Proveedor de servicios de aplicaciones</option>
                                        <option value="3">OEM de datos</option>
                                        <option value="4">ERP(Planificaicon de recursos de empresa)</option>
                                        <option value="5">Gobierno/Ejercito</option>
                                        <option value="6">Empresa grande</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblCantidadEmpleados">Cantidad de empleados</label>
                                    <input type="number" placeholder="Cantidad de empleados" name="txtCantidadEmpleados" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Ingresos Anuales</label>
                                    <input type="number" placeholder="Ingresos Anuales" name="txtIngresosAnuales" class="form-control"/>
                                </div>


                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblCalificacion">Calificacion</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option value="1">Ninguno</option>
                                        <option value="2">Adquirido</option>
                                        <option value="3">Activo</option>
                                        <option value="4">Contactado</option>
                                        <option value="5">Fallo de mercado</option>
                                        <option value="6">Proyecto cancelado</option>
                                        <option value="7">Apagar</option>
                                    </select>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblNoParticipacioCorreoElectronico">No participacion Correo Electronico
                                        <input type="checkbox" class="form-control" name="chkNoParticipacioCorreoElectronico"/>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblIDSkype">ID Skype</label>
                                    <input type="text" placeholder="ID Skype" name="txtIDSkype" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" placeholder="Twitter" name="txtTwitter" class="form-control"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-6">
                                    <label name="lblCorreoElectronicoSecundario">Correo Electronico Secundario</label>
                                    <input type="email" placeholder="Correo Electronico Secundario" name="txtCorreoElectronicoSecundario" class="form-control"/>
                                </div>
                            </div>
                        </div>

                        <br>
                        <br>
                        <br>
                        <hr>
                        <br>
                        <br>

                        <!-- fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- columna -->
                                <div class="col-12">
                                    <i class="fa fa-clipboard"></i>
                                    <b>Registros : <%= lstclsPosiblesClientes.size()%></b>
                                </div>
                            </div>
                        </div>

                        <!-- fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- columna -->
                                <div class="col-md-12">
                                    <table class="table table-bordered table-dark table-responsive">
                                        <!-- fila -->
                                        <tr>
                                            <!-- columna -->
                                            <td>Empresa</td>
                                            <td>Nombre</td>
                                            <td>Apellidos</td>
                                            <td>Titulo</td>
                                            <td>Correo Electronico</td>
                                            <td>Telefono</td>
                                            <td>Fax</td>
                                            <td>Movil</td>
                                            <td>Sitio Web</td>
                                            <td>Fuente posible cliente</td>
                                            <td>Estado posible cliente</td>
                                            <td>Sector</td>
                                            <td>Cantidad de empleados</td>
                                            <td>Ingresos anuales</td>
                                            <td>Calificacion</td>
                                            <td>No participacion correo electronico</td>
                                            <td>Id Skype</td>
                                            <td>Twitter</td>
                                            <td>Correo electronico secundario</td>
                                        </tr>
                                         <%
                                            for (Models.clsPosiblesClientes elem : lstclsPosiblesClientes) {
                                        %>
                                        <tr>
                                            <td><%=elem.getInCodigo()%></td>
                                            <td><%=elem.getStEmpresa()%></td>
                                            <td><%=elem.getStNombres()%></td>
                                            <td><%=elem.getStApellidos()%></td>
                                            <td><%=elem.getStTitulo()%></td>
                                            <td><%=elem.getStCorreoElectronico()%></td>
                                            <td><%=elem.getStTelefono()%></td>
                                            <td><%=elem.getStFax()%></td>
                                            <td><%=elem.getStMovil()%></td>
                                            <td><%=elem.getStSitioWeb()%></td>
                                            <td><%=elem.getObclsFuentePosibleCliente().getStDescripcion()%></td>
                                            <td><%=elem.getObclsEstadoPosibleCliente().getStDescripcion()%></td>
                                            <td><%=elem.getObclsSector().getStDescripcion()%></td>
                                            <td><%=elem.getInCantidadEmpleados()%></td>
                                            <td><%=elem.getDbIngresosAnuales()%></td>
                                            <td><%=elem.getObclsCalificacion().getStDescripcion()%></td>
                                            <td><%=elem.getChNoParticipacionCorreoElectronico()%></td>
                                            <td><%=elem.getStIDSkype()%></td>
                                            <td><%=elem.getStTwitter()%></td>
                                            <td><%=elem.getStCorreoElectronicoSecundario()%></td>
                                            
                                        </tr>
                                        <%
                                            }
                                        %>

                                    </table>
                                </div>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>   
    </body>
</html>
