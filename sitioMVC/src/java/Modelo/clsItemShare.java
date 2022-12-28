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

public class clsItemShare {
    private String lugar;
    private String fecha;
    private String receptor;
    private String item;
    
    public String getLugar(){
        return this.lugar;
    }
    public void setLugar(String lugar){
        this.lugar = lugar;
    }
    public String getFecha(){
        return this.fecha;
    }
    public void setFecha(String fecha){
        this.fecha = fecha;
    }
    public String getReceptor(){
        return this.receptor;
    }
    public void setReceptor(String receptor){
        this.receptor = receptor;
    }
    public String getItem(){
        return this.item;
    }
    public void setItem(String item){
        this.item = item;
    }
    //Constructor
    public clsItemShare(){
        
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
    //Método para compartir item (spInsItemsPrestados)
    public ResultSet spInsItemsPrestados(String lugar,
                                         String fecha,
                                         String receptor,
                                         String item)throws SQLException{
        consultaSQL = "call spInsItemsPrestados('" + lugar + "','" + fecha + "','" + receptor + "','" + item + "')";
        //Se establece la ejecución del comando
        st = (Statement)cnn.createStatement();
        //Se ejecuta el comando
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
    public ResultSet spDevItemsPrestados(String lugar,
                                         String fecha,
                                         String receptor,
                                         String item)throws SQLException{
        consultaSQL = "call spDevItemsPrestados('" + lugar + "','" + fecha + "','" + receptor + "','" + item + "')";
        //Se establece la ejecución del comando
        st = (Statement)cnn.createStatement();
        //Se ejecuta el comando
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
}
