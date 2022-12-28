/*
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
 */
package Controlador;

import Modelo.clsItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class srvInsItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String nombre, categoria, descripcion, estado, ruta, alumno;
            //Recepción y validación de los datos
            if(request.getParameter("txtNombre") == null){
                nombre = "";
            }else{
                nombre = request.getParameter("txtNombre");
            }
            if(request.getParameter("txtCategoria") == null){
                categoria = "";
            }else{
                categoria = request.getParameter("txtCategoria");
            }
            if(request.getParameter("txtDescripcion") == null){
                descripcion = "";
            }else{
                descripcion = request.getParameter("txtDescripcion");
            }
            if(request.getParameter("txtEstado") == null){
                estado = "";
            }else{
                estado = request.getParameter("txtEstado");
            }
            if(request.getParameter("txtRuta") == null){
                ruta = "";
            }else{
                ruta = request.getParameter("txtRuta");
            }
            if(request.getParameter("txtAlumno") == null){
                alumno = "";
            }else{
                alumno = request.getParameter("txtAlumno");
            }
            
            if(!nombre.equals("") && !categoria.equals("") && !descripcion.equals("") && 
                    !estado.equals("") && !ruta.equals("") && !alumno.equals("")){
                //Creación del objeto y ejecución del metodo insertar
                clsItem objUsuario = new clsItem();
                Connection cnn = objUsuario.conexion();
                ResultSet rs;
                rs = objUsuario.spInsItem(nombre, categoria, descripcion, estado, ruta, alumno);
                rs.next();
                request.getSession().setAttribute("insItem", rs);
                request.getRequestDispatcher("jRegItem.jsp").forward(request, response);
            }
        }catch(SQLException ex){
            Logger.getLogger(srvInsAlumno.class.getName()).log(Level.SEVERE, null, ex);
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
