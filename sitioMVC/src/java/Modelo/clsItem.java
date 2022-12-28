/*
 Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class clsItem {
    private String nombre;
    private String categoria;
    private String descripcion;
    private String estado;
    private String ruta;
    private String alumno;
    
    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public String getCategoria(){
        return this.categoria;
    }
    public void setCategoria(String categoria){
        this.categoria = categoria;
    }
    public String getDescripcion(){
        return this.descripcion;
    }
    public void setDescripcion(String descripcion){
        this.descripcion = descripcion;
    }
    public String getEstado(){
        return this.estado;
    }
    public void setEstado(String estado){
        this.estado = estado;
    }
    public String getRuta(){
        return this.ruta;
    }
    public void setRuta(String ruta){
        this.ruta = ruta;
    }
    public String getAlumno(){
        return this.alumno;
    }
    public void setAlumno(String alumno){
        this.alumno = alumno;
    }
    //Constructor
    public clsItem(){
        
    }
    //Conexión a la BD
    Connection cnn;
    //Contenedor de datos
    ResultSet rs;
    //Variable para sentencias SQL
    String consultaSQL = "";
    //Clase para manejo de sentencias SQL
    Statement st;
    //Método de conexión a BD
    public Connection conexion(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/practica_int?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8&useSSL=false","root","0000");
            System.out.println("Conexión a BD éxitosa");
        } catch(ClassNotFoundException | SQLException ex){
            System.out.println("Error: " + ex.getMessage());
        }
        return cnn;
    }
    //Método para el monitoreo del Statement
    Statement createStatement(){
        throw new UnsupportedOperationException("No se soporta una conexión a la BD");
    }
    //MÉTODOS PARA MANIPULACIÓN DE PROCEDIMIENTOS, VISTAS, SQL
    //Método para crear item (spInsItem)
    public ResultSet spInsItem(String nombre,
                               String categoria,
                               String descripcion,
                               String estado,
                               String ruta,
                               String alumno)throws SQLException{
        consultaSQL = "call spInsItem('" + nombre + "','" + categoria + "','" + descripcion + "','" + estado + "','" + ruta + "','" + alumno + "')";
        //Se establece la ejecución del comando
        st = (Statement)cnn.createStatement();
        //Se ejecuta el comando
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
    //Método para hacer el reporte de los items (vwrptitems)
    public ResultSet vwRptItems(String filtro)throws SQLException{
        consultaSQL = "select * from vwrptitems";
        if(filtro.equals("")){
            consultaSQL = consultaSQL += ";";
        }else{
            consultaSQL = consultaSQL += " WHERE Nombre LIKE '%" + filtro + "%' or Categoría LIKE '%" + filtro + "%' or Disponibilidad LIKE '%" + filtro + "%';";
        }
        st = (Statement) cnn.createStatement();
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
}
