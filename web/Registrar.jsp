<%-- 
    Document   : Registrar
    Created on : 6/12/2020, 10:16:46 AM
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Registrar</title>
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


    </head>


    <body class="bg-dark"><!-- Open body -->
        <div class="container"><!-- Open Container -->
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Registrar cuenta</div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblIdentificacion">Identificación</label>
                                    <input class="form-control" name="txtIdentificacion" type="text"  placeholder="Ingrese idenrificación">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblPrimerNombre">Primer Nombre</label>
                                    <input class="form-control" name="txtPrimerNombre" type="text"  placeholder="Ingrese Primer Nombre">
                                </div>

                                <div class="col-md-6">
                                    <label for="lblSegundoNombre">Segundo Nombre</label>
                                    <input class="form-control" name="txtSegundoNombre" type="text"  placeholder="Ingrese Segundo Nombre">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblPrimerApellido">Primer Apellido</label>
                                    <input class="form-control" name="txtPrimerApellido" type="text"  placeholder="Ingrese Primer Apellido">
                                </div>

                                <div class="col-md-6">
                                    <label for="lblSegundoApellido">Segundo Apellido</label>
                                    <input class="form-control" name="txtSegundoApellido" type="text"  placeholder="Ingrese Segundo Apellido">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblDireccion">Dirección</label>
                                    <input class="form-control" name="txtDireccion" type="text"  placeholder="Ingrese Dirección">
                                </div>

                                <div class="col-md-6">
                                    <label for="lblTelefono">Teléfono</label>
                                    <input class="form-control" name="txtTelefono" type="text"  placeholder="Ingrese Teléfono">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-12">
                                    <label for="lblCorreo">Correo</label>
                                    <input class="form-control" name="txtCorreo" type="text"  placeholder="Ingrese Correo">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <label for="lblPassword">Password</label>
                                    <input class="form-control" name="txtPassword" type="password"  placeholder="Ingrese Password">
                                </div>

                                <div class="col-md-6">
                                    <label for="lblConfirmarPassword">Confirmar Password</label>
                                    <input class="form-control" name="txtConfirmarPassword" type="password"  placeholder="Confirmar Password">
                                </div>
                            </div>
                        </div>

                        <input type="submit" name="btnAceptar" class="btn btn-primary btn-block" value="Aceptar"/>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="Login.jsp">Pagina de Login</a>

                    </div>
                </div>
            </div>
        </div><!-- Close container -->
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    </body><!-- Close body -->


</html>
