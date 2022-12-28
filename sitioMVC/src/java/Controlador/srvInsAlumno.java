/*
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
 */
package Controlador;

import Modelo.clsAlumno;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

public class srvInsAlumno extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try{
            String id, nombre, paterno, materno, ruta, calle, numero, colonia, ciudad, estado, cp, pais, telefono, carrera;
            //Recepción y validación de los datos
            if(request.getParameter("txtNControl") == null){
                id = "";
            }else{
                id = request.getParameter("txtNControl");
            }
            if(request.getParameter("txtNombre") == null){
                nombre = "";
            }else{
                nombre = request.getParameter("txtNombre");
            }
            if(request.getParameter("txtApaterno") == null){
                paterno = "";
            }else{
                paterno = request.getParameter("txtApaterno");
            }
            if(request.getParameter("txtAmaterno") == null){
                materno = "";
            }else{
                materno = request.getParameter("txtAmaterno");
            }
            if(request.getParameter("txtRuta") == null){
                ruta = "";
            }else{
                ruta = request.getParameter("txtRuta");
            }
            if(request.getParameter("txtCalle") == null){
                calle = "";
            }else{
                calle = request.getParameter("txtCalle");
            }
            if(request.getParameter("txtNumero") == null){
                numero = "";
            }else{
                numero = request.getParameter("txtNumero");
            }
            if(request.getParameter("txtColonia") == null){
                colonia = "";
            }else{
                colonia = request.getParameter("txtColonia");
            }
            if(request.getParameter("txtCiudad") == null){
                ciudad = "";
            }else{
                ciudad = request.getParameter("txtCiudad");
            }
            if(request.getParameter("txtEstado") == null){
                estado = "";
            }else{
                estado = request.getParameter("txtEstado");
            }
            if(request.getParameter("txtCp") == null){
                cp = "";
            }else{
                cp = request.getParameter("txtCp");
            }
            if(request.getParameter("txtPais") == null){
                pais = "";
            }else{
                pais = request.getParameter("txtPais");
            }
            if(request.getParameter("txtTelefono") == null){
                telefono = "";
            }else{
                telefono = request.getParameter("txtTelefono");
            }
            if(request.getParameter("txtCarrera") == null){
                carrera = "";
            }else{
                carrera = request.getParameter("txtCarrera");
            }
            
            if(!id.equals("") && !nombre.equals("") && !paterno.equals("") && !materno.equals("") &&
                    !ruta.equals("") && !calle.equals("") && !numero.equals("") && !colonia.equals("")
                    && !ciudad.equals("") && !estado.equals("") && !cp.equals("") && !pais.equals("")
                    && !telefono.equals("") && !carrera.equals("")){
                //Creación del objeto y ejecución del método insertar
                clsAlumno objUsuario = new clsAlumno();
                Connection cnn = objUsuario.conexion();
                ResultSet rs;
                rs = objUsuario.spInsAlumno(id, nombre, paterno, materno, ruta, calle, numero, colonia,
                        ciudad, estado, cp, pais, telefono, carrera);
                rs.next();
                request.getSession().setAttribute("insAlumno", rs);
                request.getRequestDispatcher("jRegAlumno.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("jRegAlumno.jsp").forward(request, response);
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
