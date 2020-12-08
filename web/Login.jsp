<%-- 
    Document   : Login
    Created on : 3/12/2020, 01:16:42 PM
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
        <title>Login</title>
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
        <script src="js/sweetalert.min.js" type="text/javascript"/>

        <script>
            swal("Buen trabajo!", "Se realizo el proceso exitosamente!", "success");
        </script>

    </head>



    <body class="bg-dark"><!-- open body -->

        <!-- Scriptlets -->
        <%
            if (request.getAttribute("stError") != null) {

        %>
        <input type="text" hidden="" id="txtMensaje" value="<%= request.getAttribute("stError")%>"/>
        <script>
            var stMensaje = document.getElementById("txtMensaje").value;
            swal("Mensaje", stMensaje, "error");
        </script>


        <%
            }


        %>


        <div class="container"><!-- open container -->
            <div class="card card-login mx-auto mt-5">
                <div class="card-header">Login</div>
                <div class="card-body">
                    <form action="LoginController" method="post">
                        <div class="form-group">
                            <label for="lblEmail">Email</label>
                            <input class="form-control" name="txtEmail" type="email" aria-describedby="emailHelp" placeholder="Ingrese email">
                        </div>
                        <div class="form-group">
                            <label for="lblPassword">Contraseña</label>
                            <input class="form-control" name="txtPassword" type="password" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox" name="chkRecordar">Recordar contraseña</label>
                            </div>
                        </div>
                        <input name="bntAceptar" type="submit" class="btn-primary btn-block" value="Aceptar"/> 
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="Registrar.jsp">Registrar cuenta</a>

                    </div>
                </div>
            </div>
        </div><!-- close continer-->
        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    </body><!-- close body -->
</html>
