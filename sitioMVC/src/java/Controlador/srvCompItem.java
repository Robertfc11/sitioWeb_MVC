/*
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
 */
package Controlador;

import Modelo.clsItemShare;
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

public class srvCompItem extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            String lugar, fecha, receptor, item;
            //Recepción y validación de los datos
            if(request.getParameter("txtLugar") == null){
                lugar ="";
            }else{
                lugar = request.getParameter("txtLugar");
            }
            if(request.getParameter("txtFecha") == null){
                fecha = "";
            }else{
                fecha = request.getParameter("txtFecha");
            }
            if(request.getParameter("txtReceptor") == null){
                receptor = "";
            }else{
                receptor = request.getParameter("txtReceptor");
            }
            if(request.getParameter("txtItem") == null){
                item = "";
            }else{
                item = request.getParameter("txtItem");
            }
            
            if(!lugar.equals("") && !fecha.equals("") && !receptor.equals("") && 
                    !item.equals("")){
                //Creación del objeto y ejecución del método insertar
                clsItemShare objUsuario = new clsItemShare();
                Connection cnn = objUsuario.conexion();
                ResultSet rs;
                rs = objUsuario.spInsItemsPrestados(lugar, fecha, receptor, item);
                rs.next();
                request.getSession().setAttribute("compItem", rs);
                request.getRequestDispatcher("jCompItem.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("jCompItem.jsp").forward(request, response);
            }
        }catch(SQLException ex){
            Logger.getLogger(srvCompItem.class.getName()).log(Level.SEVERE, null, ex);
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
