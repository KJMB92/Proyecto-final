/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kevin
 */
@WebServlet(name = "PosiblesClientesController", urlPatterns = {"/PosiblesClientesController"})
public class PosiblesClientesController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
// validar boton guardar
        if (request.getParameter("btnGuardar") != null) {
            btnGuardar(request, response);
        } 
// validar boton Modificar
        else if (request.getParameter("btnModificar") != null) {
            
        } 
// validar boton Canceclar
        else if (request.getParameter("btnCancelar") != null) {

        }

    }

    public void btnGuardar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
            //Definicion de modelos
            Models.clsPosiblesClientes obclsPosiblesClientes = new Models.clsPosiblesClientes();// principal
            
            Models.clsFuentePosibleCliente obclsFuentePosibleCliente = new Models.clsFuentePosibleCliente();
            Models.clsEstadoPosibleCliente obclsEstadoPosibleCliente = new Models.clsEstadoPosibleCliente();
            Models.clsSector obclsSector = new Models.clsSector();
            Models.clsCalificacion obclsCalificacion = new Models.clsCalificacion();
            
            
            //Asignacion de atributos o porpiedades
            if (request.getParameter("txtEmpresa") != null) {
                obclsPosiblesClientes.setStEmpresa(request.getParameter("txtEmpresa"));
            }
            if (request.getParameter("txtNombre") != null) {
                obclsPosiblesClientes.setStNombres(request.getParameter("txtNombre"));
            }
            if (request.getParameter("txtApellidos") != null) {
                obclsPosiblesClientes.setStApellidos(request.getParameter("txtApellidos"));
            }
            if (request.getParameter("txtTitulo") != null) {
                obclsPosiblesClientes.setStTitulo(request.getParameter("txtTitulo"));
            }
            if (request.getParameter("txtCorreoElectronico") != null) {
                obclsPosiblesClientes.setStCorreoElectronico(request.getParameter("txtCorreoElectronico"));
            }
            if (request.getParameter("txtTelefono") != null) {
                obclsPosiblesClientes.setStTelefono(request.getParameter("txtTelefono"));
            }
            if (request.getParameter("txtFax") != null) {
                obclsPosiblesClientes.setStFax(request.getParameter("txtFax"));
            }
            if (request.getParameter("txtMovil") != null) {
                obclsPosiblesClientes.setStMovil(request.getParameter("txtMovil"));
            }
            if (request.getParameter("txtSitioWeb") != null) {
                obclsPosiblesClientes.setStSitioWeb(request.getParameter("txtSitioWeb"));
            }
            
             


//lista desplegable FUENTE POSIBLE CLIENTE
             
            if (request.getParameter("ddlFuentePosibleCliente") != null) {
                
                //Modelo Externo 
                obclsFuentePosibleCliente.setInCodigo(Integer.parseInt(request.getParameter("ddlFuentePosibleCliente")));
                 
                String stDescripcion = "";
                
                if (request.getParameter("ddlFuentePosibleCliente").equals("1")) {
                     stDescripcion = "Ninguno";     
                }else if (request.getParameter("ddlFuentePosibleCliente").equals("2")) {
                     stDescripcion = "Aviso";
                }else if (request.getParameter("ddlFuentePosibleCliente").equals("3")) {
                     stDescripcion = "Llamada no solicitada";
                }else if (request.getParameter("ddlFuentePosibleCliente").equals("4")) {
                     stDescripcion = "Recomendacion de empleado";    
                }else if (request.getParameter("ddlFuentePosibleCliente").equals("5")) {
                     stDescripcion = "Recomendacion externa";     
                }else if (request.getParameter("ddlFuentePosibleCliente").equals("6")) {
                     stDescripcion = "Tienda en linea";    
                }
                obclsFuentePosibleCliente.setStDescripcion(stDescripcion);
                //asignacion al  padre
                obclsPosiblesClientes.setObclsFuentePosibleCliente(obclsFuentePosibleCliente);
            }
            
            
            
            
 //lista desplegable ESTADO POSIBLE CLIENTE
           
            if (request.getParameter("ddlEstadoPosibleCliente") != null) {
                
                //Modelo Externo 
                obclsSector.setInCodigo(Integer.parseInt(request.getParameter("ddlEstadoPosibleCliente")));
                 
                String stDescripcion = "";
                
                if (request.getParameter("ddlEstadoPosibleCliente").equals("1")) {
                     stDescripcion = "Ninguno";
                }else if (request.getParameter("ddlEstadoPosibleCliente").equals("2")) {
                     stDescripcion = "APS(Proveedor de servicios de aplicaciones";     
                }else if (request.getParameter("ddlEstadoPosibleCliente").equals("3")) {
                     stDescripcion = "OEM de datos";     
                }else if (request.getParameter("ddlEstadoPosibleCliente").equals("4")) {
                     stDescripcion = "ERP(Planificaicon de recursos de empresa)";     
                }else if (request.getParameter("ddlEstadoPosibleCliente").equals("5")) {
                     stDescripcion = "Gobierno/Ejercito";     
                }else if (request.getParameter("ddlEstadoPosibleCliente").equals("6")) {
                     stDescripcion = "Empresa grande";     
                }
                obclsSector.setStDescripcion(stDescripcion);
                //asignacion al  padre
                obclsPosiblesClientes.setObclsSector(obclsSector);
            }
            
            
            
            
 //lista desplegable SECTOR           
            if (request.getParameter("ddlSector") != null) {
                
                //Modelo Externo 
                obclsEstadoPosibleCliente.setInCodigo(Integer.parseInt(request.getParameter("ddlSector")));
                 
                String stDescripcion = "";
                
                if (request.getParameter("ddlSector").equals("1")) {
                     stDescripcion = "Ninguno";
                }else if (request.getParameter("ddlSector").equals("2")) {
                     stDescripcion = "Intento de contacto";     
                }else if (request.getParameter("ddlSector").equals("3")) {
                     stDescripcion = "Contactar en el futuro";     
                }else if (request.getParameter("ddlSector").equals("4")) {
                     stDescripcion = "Contactado";     
                }else if (request.getParameter("ddlSector").equals("5")) {
                     stDescripcion = "Posible cliente no solicitado";     
                }else if (request.getParameter("ddlSector").equals("6")) {
                     stDescripcion = "Posible cliente perdido";     
                }
                obclsEstadoPosibleCliente.setStDescripcion(stDescripcion);
                //asignacion al  padre
                obclsPosiblesClientes.setObclsEstadoPosibleCliente(obclsEstadoPosibleCliente);
            }
            
            
            
            
            
            if (request.getParameter("txtCantidadEmpleados") != null) {
                obclsPosiblesClientes.setInCantidadEmpleados(Integer.parseInt(request.getParameter("txtCantidadEmpleados")));
            }
            if (request.getParameter("txtIngresosAnuales") != null) {
                obclsPosiblesClientes.setDbIngresosAnuales(Double.parseDouble(request.getParameter("txtIngresosAnuales")));
            }






//lista desplegable CALIFICACION            
            if (request.getParameter("ddlCalificacion") != null) {
                
                //Modelo Externo 
                obclsCalificacion.setInCodigo(Integer.parseInt(request.getParameter("ddlCalificacion")));
                 
                String stDescripcion = "";
                
                if (request.getParameter("ddlCalificacion").equals("1")) {
                     stDescripcion = "Ninguno";
                }else if (request.getParameter("ddlCalificacion").equals("2")) {
                     stDescripcion = "Adquirido";     
                }else if (request.getParameter("ddlCalificacion").equals("3")) {
                     stDescripcion = "Activo";     
                }else if (request.getParameter("ddlCalificacion").equals("4")) {
                     stDescripcion = "Contactado";     
                }else if (request.getParameter("ddlCalificacion").equals("5")) {
                     stDescripcion = "Fallo de mercado";     
                }else if (request.getParameter("ddlCalificacion").equals("6")) {
                     stDescripcion = "Proyecto cancelado";     
                }else if (request.getParameter("ddlCalificacion").equals("7")) {
                     stDescripcion = "Apagar";     
                }
                obclsCalificacion.setStDescripcion(stDescripcion);
                //asignacion al  padre
                obclsPosiblesClientes.setObclsCalificacion(obclsCalificacion);
            }
            
            
            
            
            if (request.getParameter("chkNoParticipacioCorreoElectronico") != null) {
                
                char chSeleccion =  request.getParameter("chkNoParticipacioCorreoElectronico").equals("ON")
                        ? 'S' : 'N';
                obclsPosiblesClientes.setChNoParticipacionCorreoElectronico(chSeleccion);
            }
            
            
            
            if (request.getParameter("txtIDSkype") != null) {
                obclsPosiblesClientes.setStIDSkype(request.getParameter("txtIDSkype"));
            }
            if (request.getParameter("txtTwitter") != null) {
                obclsPosiblesClientes.setStTwitter(request.getParameter("txtTwitter"));
            }
            if (request.getParameter("txtCorreoElectronicoSecundario") != null) {
                obclsPosiblesClientes.setStCorreoElectronicoSecundario(request.getParameter("txtCorreoElectronicoSecundario"));
            }
            
            
            
            HttpSession session = request.getSession(true);
            
            //declarar la lista de objetos donde se almacenaran los modelos
            List<Models.clsPosiblesClientes> lstclsPosiblesClientes = 
                    new ArrayList<Models.clsPosiblesClientes>();
            
            
            //validamos la existencia de la variable de session
            if (session.getAttribute("session_lstclsPosiblesClientes") != null) {
                lstclsPosiblesClientes = (List<Models.clsPosiblesClientes>)
                        session.getAttribute("session_lstclsPosiblesClientes");
            }
            
            
            //calculo automatico del codigo identificador del registro
            int inCodigo = lstclsPosiblesClientes.size() + 1;
            obclsPosiblesClientes.setInCodigo(inCodigo);
            
            
            
            //se agrega el objeto a la lista
            lstclsPosiblesClientes.add(obclsPosiblesClientes);
            session.setAttribute("session_lstclsPosiblesClientes", lstclsPosiblesClientes);
            
            
            
            
            //Definir los parametros desde el controlador
            request.setAttribute("stMensaje", "Se realizo el proceso con exito");
            request.setAttribute("stTipo", "success");
            
            
            //Redirecciona y envio valores
            request.getRequestDispatcher("PosiblesClientes.jsp").forward(request, response);
            
            
            
            
            
            
        } catch (Exception ex) {
            
            //Definir los parametros desde el controlador
            request.setAttribute("stMensaje", ex.getMessage());
            request.setAttribute("stTipo", "error");
            
            
            //Redirecciona y envio valores
            request.getRequestDispatcher("PosiblesClientes.jsp").forward(request, response);
            
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
