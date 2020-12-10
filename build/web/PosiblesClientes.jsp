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

            if (request.getAttribute("stMensaje") != null 
                    && request.getAttribute("stTipo") != null) {
        %>     
        <input type="text" hidden="" id="txtMensaje" 
               value="<%=request.getAttribute("stMensaje")%>"/>
        <input type="text" hidden="" id="txtTipo" 
               value="<%=request.getAttribute("stTipo")%>"/>
        
        <script>
                var mensaje = document.getElementById("txtMensaje").value;
                var tipo = document.getElementById("txtTipo").value;
                
                swal("Mensaje", mensaje, tipo);
        </script>
        <%
            }
        %>    

        <%
            Models.clsPosiblesClientes obclsPosiblesClientes = new Models.clsPosiblesClientes();

            if (request.getAttribute("obclsPosiblesClientes") != null) {
                obclsPosiblesClientes = (Models.clsPosiblesClientes) request.getAttribute("obclsPosiblesClientes");
            }
            List<Models.clsPosiblesClientes> lstclsPosiblesClientes
                    = new ArrayList<Models.clsPosiblesClientes>();
            
            
            if (session.getAttribute("lstclsPosiblesClientes") != null) {
                lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>) session.getAttribute("lstclsPosiblesClientes");
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
                                    <input type="text" 
                                           placeholder="Empresa" 
                                           name="txtEmpresa" 
                                           class="form-control" 
                                           value="<%= obclsPosiblesClientes.getStEmpresa() != null ? obclsPosiblesClientes.getStEmpresa() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblNombre">Nombre</label>
                                    <input type="text" 
                                           placeholder="Nombres" 
                                           name="txtNombre" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStNombre() != null ? obclsPosiblesClientes.getStNombre() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblApellidos">Apellidos</label>
                                    <input type="text" 
                                           placeholder="Apellidos" 
                                           name="txtApellidos" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStApellidos() != null ? obclsPosiblesClientes.getStApellidos() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTitulo">Titulo</label>
                                    <input type="text" 
                                           placeholder="Titulo" 
                                           name="txtTitulo" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStTitulo() != null ? obclsPosiblesClientes.getStTitulo() : ""%>"/>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblCorreoElectronico">Correo Electronico</label>
                                    <input type="text" 
                                           placeholder="Correo Electronico" 
                                           name="txtCorreoElectronico" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStCorreoElectronico() != null ? obclsPosiblesClientes.getStCorreoElectronico() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTelefono">Telefono</label>
                                    <input type="text" 
                                           placeholder="Telefono" 
                                           name="txtTelefono" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStTelefono() != null ? obclsPosiblesClientes.getStTelefono() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblFax">Fax</label>
                                    <input type="text" 
                                           placeholder="Fax" 
                                           name="txtFax" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStFax() != null ? obclsPosiblesClientes.getStFax() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblMovil">Movil</label>
                                    <input type="text" 
                                           placeholder="Movil" 
                                           name="txtMovil" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStMovil() != null ? obclsPosiblesClientes.getStMovil() : ""%>"/>
                                </div>
                            </div>
                        </div>

                        <!-- Fila -->
                        <div class="form-group">
                            <div class="form-row">
                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblSitioWeb">Sitio Web</label>
                                    <input type="text" 
                                           placeholder="Sitio Web" 
                                           name="txtSitioWeb" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStSitioWeb() != null ? obclsPosiblesClientes.getStSitioWeb() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblFuentePosibleCliente">Fuente de Posible Cliente</label>
                                    <select class="form-control" name="ddlFuentePosibleCliente">
                                        <option value="1" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Aviso</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %>>Llamada no solicitada</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Recomendacion de empleado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Recomendacion externa</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsFuentePosibleCliente != null ? obclsPosiblesClientes.obclsFuentePosibleCliente.getInCodigo() == 6 ? "selected" : "" : "" %>>Tienda en linea</option>
                                    </select>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblEstadoPosibleCliente">Estado de Posible Cliente</label>
                                    <select class="form-control" name="ddlEstadoPosibleCliente">
                                        <option value="1" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 2 ? "selected" : "" : "" %>>Intento de contacto</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 3 ? "selected" : "" : "" %>>Contactar en el futuro</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 4 ? "selected" : "" : "" %>>Contactado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 5 ? "selected" : "" : "" %>>Posible cliente no solicitado</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsEstadoPosibleCliente != null ? obclsPosiblesClientes.obclsEstadoPosibleCliente.getInCodigo() == 6 ? "selected" : "" : "" %>>Posible cliente perdido</option>
                                    </select>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblSector">Sector</label>
                                    <select class="form-control" name="ddlSector">
                                        <option value="1" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 2 ? "selected" : "" : "" %>>APS(Proveedor de servicios de aplicaciones</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 3 ? "selected" : "" : "" %>>OEM de datos</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 4 ? "selected" : "" : "" %>>ERP(Planificaicon de recursos de empresa)</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 5 ? "selected" : "" : "" %>>Gobierno/Ejercito</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsSector != null ? obclsPosiblesClientes.obclsSector.getInCodigo() == 6 ? "selected" : "" : "" %>>Empresa grande</option>
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
                                    <input type="number"
                                           placeholder="Cantidad de empleados" 
                                           name="txtCantidadEmpleados" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getInCantidadEmpleados() != 0 ? obclsPosiblesClientes.getInCantidadEmpleados() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblIngresosAnuales">Ingresos Anuales</label>
                                    <input type="number" 
                                           placeholder="Ingresos Anuales" 
                                           name="txtIngresosAnuales" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getDbIngresosAnuales() != 0 ? obclsPosiblesClientes.getDbIngresosAnuales() : ""%>"/>
                                </div>


                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblCalificacion">Calificacion</label>
                                    <select class="form-control" name="ddlCalificacion">
                                        <option value="1" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 1 ? "selected" : "" : "" %>>Ninguno</option>
                                        <option value="2" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 2 ? "selected" : "" : "" %>>Adquirido</option>
                                        <option value="3" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 3 ? "selected" : "" : "" %>>Activo</option>
                                        <option value="4" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 4 ? "selected" : "" : "" %>>Contactado</option>
                                        <option value="5" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 5 ? "selected" : "" : "" %>>Fallo de mercado</option>
                                        <option value="6" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 6 ? "selected" : "" : "" %>>Proyecto cancelado</option>
                                        <option value="7" <%= obclsPosiblesClientes.obclsCalificacion != null ? obclsPosiblesClientes.obclsCalificacion.getInCodigo() == 7 ? "selected" : "" : "" %>>Apagar</option>
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
                                    <input type="text" 
                                           placeholder="ID Skype" 
                                           name="txtIDSkype" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStIDSkype() != null ? obclsPosiblesClientes.getStIDSkype() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-3">
                                    <label name="lblTwitter">Twitter</label>
                                    <input type="text" 
                                           placeholder="Twitter" 
                                           name="txtTwitter" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStTwitter() != null ? obclsPosiblesClientes.getStTwitter() : ""%>"/>
                                </div>

                                <!-- Columna -->
                                <div class="col-md-6">
                                    <label name="lblCorreoElectronicoSecundario">Correo Electronico Secundario</label>
                                    <input type="email" 
                                           placeholder="Correo Electronico Secundario" 
                                           name="txtCorreoElectronicoSecundario" 
                                           class="form-control"
                                           value="<%= obclsPosiblesClientes.getStCorreoElectronicoSecundario()!= null ? obclsPosiblesClientes.getStCorreoElectronicoSecundario() : ""%>"/>
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
                                    <table class="table table-bordered table-dark table-striped table-responsive">
                                        <!-- fila -->
                                        <tr>
                                            <!-- columna -->
                                        <thead>
                                        <th scope="col">Codigo</th>
                                        <th scope="col">Empresa</th>
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Apellidos</th>
                                        <th scope="col">Titulo</th>
                                        <th scope="col">Correo Electronico</th>
                                        <th scope="col">Telefono</th>
                                        <th scope="col">Fax</th>
                                        <th scope="col">Movil</th>
                                        <th scope="col">Sitio Web</th>
                                        <th scope="col">Fuente posible cliente</th>
                                        <th scope="col">Estado posible cliente</th>
                                        <th scope="col">Sector</th>
                                        <th scope="col">Cantidad de empleados</th>
                                        <th scope="col">Ingresos anuales</th>
                                        <th scope="col">Calificacion</th>
                                        <th scope="col">No participacion correo electronico</th>
                                        <th scope="col">Id Skype</th>
                                        <th scope="col">Twitter</th>
                                        <th scope="col">Correo electronico secundario</th>
                                        </thead>
                                        </tr>
                                        <%
                                            for (Models.clsPosiblesClientes item : lstclsPosiblesClientes) {
                                        %>
                                        <tr>
                                            <td><%=item.getInCodigo()%></td>
                                            <td><%=item.getStEmpresa()%></td>
                                            <td><%=item.getStNombre()%></td>
                                            <td><%=item.getStApellidos()%></td>
                                            <td><%=item.getStTitulo()%></td>
                                            <td><%=item.getStCorreoElectronico()%></td>
                                            <td><%=item.getStTelefono()%></td>
                                            <td><%=item.getStFax()%></td>
                                            <td><%=item.getStMovil()%></td>
                                            <td><%=item.getStSitioWeb()%></td>
                                            <td><%=item.getObclsFuentePosibleCliente().getStDescripcion()%></td>
                                            <td><%=item.getObclsEstadoPosibleCliente().getStDescripcion()%></td>
                                            <td><%=item.getObclsSector().getStDescripcion()%></td>
                                            <td><%=item.getInCantidadEmpleados()%></td>
                                            <td><%=item.getDbIngresosAnuales()%></td>
                                            <td><%=item.getObclsCalificacion().getStDescripcion()%></td>
                                            <td><%=item.getChNoParticipacionCorreoElectronico()%></td>
                                            <td><%=item.getStIDSkype()%></td>
                                            <td><%=item.getStTwitter()%></td>
                                            <td><%=item.getStCorreoElectronicoSecundario()%></td>

                                            <td>
                                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                    <a class="btn btn-success btn-sm" 
                                                       href="PosiblesClientesController?stOpcion=M&codigoSeleccionado=<%=item.getInCodigo()%>">
                                                        Modificar</a>
                                                    <a class="btn btn-danger btn-sm" 
                                                       href="PosiblesClientesController?stOpcion=E&codigoSeleccionado=<%= item.getInCodigo()%>">
                                                        Eliminar </a>
                                                </div>
                                            </td>
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
