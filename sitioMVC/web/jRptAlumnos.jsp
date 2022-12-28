<%-- 
     Práctica Final Integradora 

    "Prestamo de Items Académicos"
    Materia: Desarrollo Avanzado de Sistemas
   
    Roberto Carlos Flores Cruz         18200993
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>

<%
ResultSet tablaAlumnos;
String tabla = "";
if(request.getSession().getAttribute("rptItems") != null){
    tablaAlumnos = (ResultSet)request.getSession().getAttribute("rptAlumnos");
    
        tabla += "<table border='0' width='90%' class='tablaRpt'>";
        tabla += "<tr>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>NO. DE CONTROL</font></td>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>NOMBRE</font></td>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>FOTO</font></td>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>DIRECCIÓN</font></td>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>TELÉFONO</font></td>";
        tabla += "<td bgcolor='black' align='middle' class='cabecera-tabla'><font face='arial' color='white'>CARRERA</font></td>";
        tabla += "</tr>";   
        
        while(tablaAlumnos.next()){
            tabla += "<tr>";
            tabla += "<td align='middle' class='body-tabla'><font face='arial' color='navy' size='2'><b>"+tablaAlumnos.getString(1)+"</b></font></td>";
            tabla += "<td align='middle' class='body-tabla'><font face='arial' color='navy' size='2'>"+tablaAlumnos.getString(2)+"</font></td>";
            tabla += "<td align='middle' class='body-tabla'><a href='"+tablaAlumnos.getString(3)+"' target='_blank'><img src='"+tablaAlumnos.getString(3)+
                    "' height='50' width='50' title='Haz clic para ver foto de "+tablaAlumnos.getString(2)+"'></a></td>"; 
            tabla += "<td align='middle' class='body-tabla'><font face='arial' color='navy' size='2'>"+tablaAlumnos.getString(4)+"</font></td>";
            tabla += "<td align='middle' class='body-tabla'><font face='arial' color='navy' size='2'>"+tablaAlumnos.getString(5)+"</font></td>";
            tabla += "<td align='middle' class='body-tabla'><font face='arial' color='navy' size='2'>"+tablaAlumnos.getString(6)+"</font></td>";
            
            tabla += "</tr>";
        }
        tabla += "</table>";
}else{
    tabla = "No hay alumnos para mostrar";
}
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte de items</title>
    <link rel="stylesheet" href="estilos/styles.css">
    <link rel="stylesheet" href="estilos/estilos.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
    <link rel="stylesheet" href="./CSS/design.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="CCS/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.10"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/select/1.5.0/js/dataTables.select.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-fixed-top"  style="background-color: #2469A0;">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand navletra" href="jHome.jsp">INICIO</a>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active navletra" aria-current="page" href="srvRptAlumnos">REPORTE ALUMNOS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active navletra" href="srvRptItems">REPORTE ITEMS</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link active navletra" href="jRegAlumno.jsp">REGISTRAR ALUMNO</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jRegItem.jsp">REGISTRAR ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jCompItem.jsp">COMPARTIR ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jDevolvItem.jsp">DEVOLVER ITEM</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active navletra" href="jAcercaDe.jsp">ACERCA DE</a>
        </li>
        
      </ul>     
    </div>
  </div>
</nav>
   <link rel="stylesheet" href="estilos/styles.css">
    <section id="body">
        <div class="container">
            <div>
                <h1 class="title">Reporte de alumnos</h1
            </div>
            <form id="frmPrincipal" method="POST" action="srvRptAlumnos" class="formInput list-items">
                    <input type="text" id="txtFiltro" name="txtFiltro" placeholder="Captura un filtro ...">
                    &nbsp;&nbsp;
                    <input type="submit" id="btnFiltro" name="btnFiltro" value="Filtrar">
                    <br><br>
                    <%= tabla%>
                    <br><br>
                    <a href="srvRptItems" class="btnRpt">Reporte items</a>
                    <br><br>
            </form>
        </div>
    </section>
                    <br>
                    <br>
    <div class="card text-center color1 letra1">
        <div class="card-header">
          Proyecto Integrador | Desarrollo Avanzado de Sistemas
        </div>
        <div class="card-body">
          <h4 class="card-title">ITPachuca | Ingeniería en Sistemas Computacionales</h5>
        </div>
        <div class="card-footer">
         Todos los derechos reservados&copy; 2022
        </div>
    </div>
</body>
</html>