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

public class srvRptItems extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
            String filtro;
            if(request.getParameter("txtFiltro") == null){
                filtro = "";
            }else{
                filtro = request.getParameter("txtFiltro");
            }
            //Creación del objeto clsItem
            clsItem objUsuario = new clsItem();
            Connection cnn = objUsuario.conexion();
            ResultSet rs;
            rs = objUsuario.vwRptItems(filtro);
            request.getSession().setAttribute("rptItems", rs);
            request.getRequestDispatcher("jRptItems.jsp").forward(request, response);
        }catch(SQLException ex){
            Logger.getLogger(srvRptItems.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
