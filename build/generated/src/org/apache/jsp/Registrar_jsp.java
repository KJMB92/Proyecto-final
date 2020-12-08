package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registrar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Registrar</title>\n");
      out.write("        <!-- Bootstrap core CSS-->\n");
      out.write("        <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Custom fonts for this template-->\n");
      out.write("        <link href=\"vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <!-- Custom styles for this template-->\n");
      out.write("        <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css\" integrity=\"sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\" integrity=\"sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\" integrity=\"sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN\" crossorigin=\"anonymous\"></script>        \n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js\" integrity=\"sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body class=\"bg-dark\"><!-- Open body -->\n");
      out.write("        <div class=\"container\"><!-- Open Container -->\n");
      out.write("            <div class=\"card card-register mx-auto mt-5\">\n");
      out.write("                <div class=\"card-header\">Registrar cuenta</div>\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <form>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblIdentificacion\">Identificación</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtIdentificacion\" type=\"text\"  placeholder=\"Ingrese idenrificación\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblPrimerNombre\">Primer Nombre</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtPrimerNombre\" type=\"text\"  placeholder=\"Ingrese Primer Nombre\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblSegundoNombre\">Segundo Nombre</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtSegundoNombre\" type=\"text\"  placeholder=\"Ingrese Segundo Nombre\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblPrimerApellido\">Primer Apellido</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtPrimerApellido\" type=\"text\"  placeholder=\"Ingrese Primer Apellido\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblSegundoApellido\">Segundo Apellido</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtSegundoApellido\" type=\"text\"  placeholder=\"Ingrese Segundo Apellido\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblDireccion\">Dirección</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtDireccion\" type=\"text\"  placeholder=\"Ingrese Dirección\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblTelefono\">Teléfono</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtTelefono\" type=\"text\"  placeholder=\"Ingrese Teléfono\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-12\">\n");
      out.write("                                    <label for=\"lblCorreo\">Correo</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtCorreo\" type=\"text\"  placeholder=\"Ingrese Correo\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblPassword\">Password</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtPassword\" type=\"password\"  placeholder=\"Ingrese Password\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div class=\"col-md-6\">\n");
      out.write("                                    <label for=\"lblConfirmarPassword\">Confirmar Password</label>\n");
      out.write("                                    <input class=\"form-control\" name=\"txtConfirmarPassword\" type=\"password\"  placeholder=\"Confirmar Password\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <input type=\"submit\" name=\"btnAceptar\" class=\"btn btn-primary btn-block\" value=\"Aceptar\"/>\n");
      out.write("                    </form>\n");
      out.write("                    <div class=\"text-center\">\n");
      out.write("                        <a class=\"d-block small mt-3\" href=\"Login.jsp\">Pagina de Login</a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!-- Close container -->\n");
      out.write("        <!-- Bootstrap core JavaScript-->\n");
      out.write("        <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- Core plugin JavaScript-->\n");
      out.write("        <script src=\"vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("    </body><!-- Close body -->\n");
      out.write("\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
