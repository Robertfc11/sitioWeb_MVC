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

public class clsAlumno {
    private String id;
    private String nombre;
    private String Apaterno;
    private String Amaterno;
    private String ruta;
    private String calle;
    private String numero;
    private String colonia;
    private String ciudad;
    private String estado;
    private String cp;
    private String pais;
    private String telefono;
    private String carrera;
    
    public String getId(){
        return this.id;
    }
    public void setId(String id){
        this.id = id;
    }
    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public String getApaterno(){
        return this.Apaterno;
    }
    public void setApaterno(String Apaterno){
        this.Apaterno = Apaterno;
    }
    public String getAmaterno(){
        return this.Amaterno;
    }
    public void setAmaterno(String Amaterno){
        this.Amaterno = Amaterno;
    }
    public String getRuta(){
        return this.ruta;
    }
    public void setRuta(String ruta){
        this.ruta = ruta;
    }
    public String getCalle(){
        return this.calle;
    }
    public void setCalle(String calle){
        this.calle = calle;
    }
    public String getNumero(){
        return this.numero;
    }
    public void setNumero(String numero){
        this.numero = numero;
    }
    public String getColonia(){
        return this.colonia;
    }
    public void setColonia(String colonia){
        this.colonia = colonia;
    }
    public String getCiudad(){
        return this.ciudad;
    }
    public void setCiudad(String ciudad){
        this.ciudad = ciudad;
    }
    public String getEstado(){
        return this.estado;
    }
    public void setEstado(String estado){
        this.estado = estado;
    }
    public String getCp(){
        return this.cp;
    }
    public void setCp(String cp){
        this.cp = cp;
    }
    public String getPais(){
        return this.pais;
    }
    public void setPais(String pais){
        this.pais = pais;
    }
    public String getTelefono(){
        return this.telefono;
    }
    public void setTelefono(String telefono){
        this.telefono = telefono;
    }
    public String getCarrera(){
        return this.carrera;
    }
    public void setCarrera(String carrera){
        this.carrera = carrera;
    }
    //Constructores
    public clsAlumno(){
        
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
    //Método para crear alumno (spInsAlumno)
    public ResultSet spInsAlumno(String id,
                                 String nombre,
                                 String paterno,
                                 String materno,
                                 String ruta,
                                 String calle,
                                 String numero,
                                 String colonia,
                                 String ciudad,
                                 String estado,
                                 String cp,
                                 String pais,
                                 String telefono,
                                 String carrera)throws SQLException{
        consultaSQL = "call spInsAlumno('" + id + "','" + nombre + "','" + paterno + "','" + materno + "','" + 
                ruta + "','" + calle + "','" + numero + "','" + colonia + "','" + ciudad + "','" + estado +
                "','" + cp + "','" + pais + "','" + telefono + "','" + carrera + "')";
        //Se establece la ejecución del comando
        st = (Statement)cnn.createStatement();
        //Se ejecuta el comando
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
    //Método para hacer el reporte de alumnos (vwRptAlumnos)
    public ResultSet vwRptAlumnos(String filtro)throws SQLException{
        consultaSQL = "select * from vwrptalumnos";
        if(filtro.equals("")){
            consultaSQL = consultaSQL += ";";
        }else{
            consultaSQL = consultaSQL += " WHERE nombre LIKE '%" + filtro + "%' OR carrera LIKE '%" + filtro + "%' OR ID LIKE '%" + filtro + "%';";
            
        }
        st = (Statement) cnn.createStatement();
        rs = st.executeQuery(consultaSQL);
        return rs;
    }
}
